# Welcome to BS ProcessWire 3.x Boilerplate

This is a starter boilerplate for ProcessWire in use by Bolliger Studios.
It comes with an up to date version of PW 3.0, the new AdminUiKit interface
and some custom made additional features:

  - Customisable ready-made AJAX contact form, click to install.
  - Colorbox plugin for nice and easy image galleries.
  - Predefined documents fieldtype with render template.
  - Git commit versioned asset urls.
  - Basic SCSS presets and normalize.css in an easy-to-use pipeline.
  - ProcessWire Upgrade module already installed.
  - German translation files already installed.

## About ProcessWire

ProcessWire is an open source content management system (CMS) and web
application framework aimed at the needs of designers, developers and their
clients. More info here

* [ProcessWire Home](https://processwire.com)
* [API Reference](https://processwire.com/api/ref/)


## Installing BS ProcessWire 3.x Boilerplate

  - Clone this repo.

  - Make a copy of `.htaccess-dev` and call it `.htaccess` in the root folder.

  - Start a web server (like MAMP) and load the URL in your web browser. This
    will start the installer. See the official [Installation
    Guide](https://processwire.com/docs/install/new/) for more details and
    instructions. If you run into any trouble, please see our [Troubleshooting
    Guide](https://processwire.com/docs/install/troubleshooting/).

  - Choose the BS custom starter template. Disable the deletion of the
    `.gitignore` file.

  - Finish!

## Enabling contact form

The contact form is already preinstalled with a customisable template. You need
to create a new contact form page (usually directly under home).

In `site/templates/scripts/main.js` uncomment the functions that handle the
contact form in order to get a nice AJAX form submission.

In `site/templates/styles/style.scss` uncomment the import at the beginning for
`@import "contact";`.

## Enabling gallery

Make a new template and use the function `renderImages` from `_func.php` to
generate the output of the thumbnails. In `site/templates/scripts/main.js`
uncomment the section for colorbox. In `site/templates/styles/style.scss`
uncomment the import at the beginning for `@import "colorbox";`.

## Debug Mode

**Warning: For this boilerplate the debug mode is on per default. Do turn it
off before deploying!**

Debug mode causes all errors to be reported to the screen, which can be
helpful during development or troubleshooting. When in the admin, it also
enables reporting of extra information in the footer. Debug mode is not
intended for live or production sites, as the information reported could
be a problem for security. So be sure not to leave debug mode on for
any live/production sites. However, we think you'll find it very handy
during development or when resolving issues.

1. Edit this file: `/site/config.php`
2. Find this line: `$config->debug = false;`
3. Change the `false` to `true` and save.
