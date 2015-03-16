#!/usr/bin/env ruby

require "test-unit"
require "test/unit/notify"

base_dir = File.expand_path("..", File.dirname(__FILE__))
lib_dir = File.join(base_dir, "lib")
test_dir = File.join(base_dir, "test")
$LOAD_PATH.unshift(lib_dir)

exit Test::Unit::AutoRunner.run(true, test_dir)
