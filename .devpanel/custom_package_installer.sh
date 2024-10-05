#!/bin/bash
# ---------------------------------------------------------------------
# Copyright (C) 2023 DevPanel
# You can install any service here to support your project
# Please make sure you run apt update before install any packages
# Example:
# - sudo apt-get update
# - sudo apt-get install nano
#
# ----------------------------------------------------------------------

# sudo apt-get update
# sudo apt-get install -y nano


sudo cp $APP_ROOT/php.ini ${PHP_EXT_DIR}/www-xdebug-php.ini
sudo service apache2 reload

code-server --install-extension xdebug.php-debug --user-data-dir=$APP_ROOT/.vscode
code-server --install-extension andrewdavidblum.drupal-smart-snippets --user-data-dir=$APP_ROOT/.vscode
code-server --install-extension SanderRonde.phpstan-vscode --user-data-dir=$APP_ROOT/.vscode
code-server --install-extension recca0120.vscode-phpunit --user-data-dir=$APP_ROOT/.vscode
code-server --install-extension mblode.twig-language-2 --user-data-dir=$APP_ROOT/.vscode
code-server --install-extension ikappas.phpcs  --user-data-dir=$APP_ROOT/.vscode