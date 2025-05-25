ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "bundler/setup" # Set up gems listed in the Gemfile.
require "bootsnap/setup" # Speed up boot time by caching expensive operations.

ENV['BOOTSNAP_CACHE_DIR'] ||= File.expand_path('tmp/cache/bootsnap', __dir__)