# drupal-project-ab

Based on and similar to [drupal-project](https://github.com/drupal-composer/drupal-project),
this template gets you going with a Composer-managed Drupal installation. It is differentiated
by having two copies of almost all files, one under the `a/` directory and another under `b/`.

At any point in time, one copy is actively used to handle requests. Commands you issue to
Composer, such as to update all dependencies, affect the other, offline copy.

The symlinks `current` and `inactive` point to `a/` or `b/`. Whichever one `current` points
to is the one handling requests right now.

## Getting Started
1. Clone this repository
2. Run `composer install`
3. All the  code was installed to the inactive copy. Make the newly installed code
   active by running `./swap-active` in the project root.
4. Hook it to a webserver and visit your Drupal site!

An arrangement like this may be of particular use for automatic updates.
