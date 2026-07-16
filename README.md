# DIYRE Manuals

This repo is the source for the assembly guides at **manuals.diy.re**.

The site used to run live on [Pico CMS](https://picocms.org/) (PHP). As of
2026-07, it's deployed as **plain static HTML**: Pico still runs locally to
render the guides, but the live server only ever receives the generated
HTML/CSS/JS/images — no PHP.

## How it fits together

- **`content/*.md`** — one file per guide. This is what you edit.
- **`content/tools/`, `content/checks/`, `content/mods/`** — reusable HTML
  snippets pulled into guides via `@[/tools/whatever.html]`-style includes.
  These are not standalone pages and never get crawled/deployed on their own.
- **`themes/diyre/`** — the site's Twig templates (`manual.twig` for guides,
  `page.twig` for plain pages, `index.twig` for the homepage) and its CSS/JS.
- **`assets/`** — images, one subfolder per guide (`assets/ssdiy/`,
  `assets/doa/`, etc.), plus shared images like tool icons
  (`assets/tools/`) and the logo.
- **`config/config.yml`** — site config. `base_url` must be set to
  `https://manuals.diy.re/` for the build to generate correct links (see
  below — this bit us once already).
- **`vendor/`** — Pico itself, installed via Composer. Not committed
  (`composer install` regenerates it). Only needed for local editing/preview;
  never uploaded to the server.
- **`_static/`** — the generated static site. Not committed (gitignored) —
  it's a build artifact, produced by `scripts/build-static.sh`. This is the
  folder you upload.

## Prerequisites (one-time machine setup)

```bash
brew install php composer
```

Then, in this directory:

```bash
composer install
```

## Editing a guide

1. Open the relevant `content/<slug>.md`. Front matter at the top:
   ```
   ---
   Title: Widget Assembly Guide
   Date: 2024-06-19
   Template: manual
   ---
   ```
   - `Title` must be a plain string — **do not wrap it in `[brackets]`**.
     Front matter is YAML, and `[...]` is flow-sequence syntax; a bracketed
     title with trailing text is invalid YAML and will hard-crash the build
     (this happened with the SS-DIY guide's placeholder title).
   - `Date` must be a real date (`YYYY-MM-DD`), never left as a literal
     `[date]` placeholder — same reason, and it's fatal specifically under
     PHP 8+'s stricter type checking.
   - The very first line of the file must be exactly `---`. (`73p.md` once
     had a stray string glued onto that line and silently lost its whole
     front matter as a result.)

2. Each build step in a guide is one `<div class="manual-step">` block:
   ```html
   <div class="manual-step">
       <div class="step-image">
           <a href="%base_url%/assets/<slug>/NN-name.jpg" target="_blank">
           <img src="%base_url%/assets/<slug>/NN-name-600.jpg" />
           </a>
       </div>
       <h2 class="step-header">Step Title</h2>
       <div class="step-description">
           <ul>
           <li>Instruction one</li>
           <li>Instruction two</li>
           </ul>
       </div>
   </div>
   ```
   Use `<h2 class="step-header">` (not `h3`) — that's the convention this
   site settled on, and it's what the auto-generated table of contents keys
   off of.

3. Add photos to `assets/<slug>/` as `NN-name.jpg` (full-res, opened in a new
   tab) and `NN-name-600.jpg` (the inline thumbnail). Reference them with
   `%base_url%/assets/<slug>/...` exactly as above — Pico substitutes
   `%base_url%` at render time.

4. To pull in a shared tool/check/mod fragment, use
   `@[/tools/name.html]`, `@[/checks/name.html]`, or `@[/mods/name.html]`.
   Add a new one by creating the file under `content/tools|checks|mods/` —
   they render exactly like any other HTML you'd write inline.

## Previewing locally before you build

```bash
php -d display_errors=1 \
    -d error_reporting="E_ALL & ~E_DEPRECATED & ~E_NOTICE & ~E_WARNING" \
    -S localhost:8000
```

Then open `http://localhost:8000/<slug>` in a browser. Twig caching is off
in `config/config.yml`, so edits show up on refresh with no restart needed.

Kill the server before running the build script — it starts its own on the
same port and will refuse to start (loudly) if 8000 is already taken. (If it
ever silently seems to ignore your changes, check for a stale server on port
8000 first — `lsof -ti :8000` — before assuming Pico or the browser is
wrong.)

## Building the static site

```bash
./scripts/build-static.sh
```

Run this after editing one or more guides. It compares each
`content/<slug>.md`'s modification time against its built
`_static/<slug>.html` and rebuilds only the guides that are newer than
their last build, leaving everything else untouched, and prints which
guides it found changed. If `_static/` doesn't exist yet, or nothing has
changed since the last build, it automatically does a full rebuild of
every page instead — so it's always safe to just run this one command,
whether it's your first build or your fiftieth.

A full rebuild is also required (not just a safe fallback) after changing
`themes/diyre/` or a shared `content/tools|checks|mods/` fragment — the
per-file timestamp check has no way to know a shared template or fragment
affects other guides. Force one with:

```bash
rm -rf _static && ./scripts/build-static.sh
```

Every guide comes out as its own **folder** — e.g. `content/73p.md`
becomes `_static/73p/index.html`, giving a clean URL
(`manuals.diy.re/73p`) via Apache's ordinary `DirectoryIndex` handling, no
rewrite needed. This matches the output convention of the Eleventy
(`diyre-libdoc`) site living alongside it, so guides from either system
resolve the same way once uploaded to the same document root. `404.html`
sits flat at the root, since it isn't tied to a guide slug.

The script exits non-zero and tells you which page(s) failed if any page
comes back with a non-200 status or a PHP fatal error — don't upload if it
does; fix the guide first and re-run.

`_static/` is gitignored on purpose — it's regenerated from source, not
maintained by hand. Never edit anything inside it directly; edit the
`content/`/`themes/`/`assets/` source and rebuild.

## Uploading to manuals.diy.re

The live server is plain Apache serving static files — no PHP, no database.

1. Run `./scripts/build-static.sh` and eyeball a couple of pages locally
   (`python3 -m http.server 8080` from inside `_static/` and click around) —
   especially any guide you just edited. This now works correctly for
   guide URLs, since Python's static server handles a real `<slug>/`
   directory with an `index.html` in it the same way Apache does. It
   won't replicate the root (`/`) redirect though, since that still needs
   `.htaccess`/`mod_rewrite` — expect `/` to just serve the (unreachable
   in production) homepage locally instead of redirecting.
2. Upload the **contents** of `_static/` (not the folder itself) to the
   server's document root via your usual FTP/SFTP/SSH client, overwriting
   what's there. Make sure `.htaccess` (a dotfile — some FTP clients hide
   these by default) actually goes up too.
3. Spot-check the live URL for the guide(s) you changed (both with and
   without a trailing slash), the homepage, and a deliberately wrong URL
   (to confirm the 404 page fires).

There's no build automation (no CI, no deploy hook) — this is a manual,
occasional process, which is fine for a site that changes a few times a
month.

## Known gaps (not blockers, just things to know about)

- `content/73p-private-preorder.md` renders in the crawl; confirm whether it
  should actually be reachable/linked publicly before treating it as done.
- There's no dedicated 404 content page — `scripts/build-static.sh` captures
  whatever Pico's default 404 response is at build time as `404.html`.
