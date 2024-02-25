# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `yard-doctest` gem.
# Please instead update this file by running `bin/tapioca gem yard-doctest`.

# source://yard-doctest//lib/yard/cli/doctest.rb#1
module YARD
  class << self
    # source://yard/0.9.34/lib/yard.rb#31
    def load_plugins; end

    # source://yard/0.9.34/lib/yard.rb#20
    def parse(*args); end

    # source://yard/0.9.34/lib/yard.rb#27
    def parse_string(*args); end

    # source://yard/0.9.34/lib/yard.rb#44
    def ruby18?; end

    # source://yard/0.9.34/lib/yard.rb#47
    def ruby19?; end

    # source://yard/0.9.34/lib/yard.rb#50
    def ruby2?; end

    # source://yard/0.9.34/lib/yard.rb#56
    def ruby31?; end

    # source://yard/0.9.34/lib/yard.rb#53
    def ruby3?; end

    # source://yard/0.9.34/lib/yard.rb#34
    def windows?; end
  end
end

# source://yard-doctest//lib/yard/cli/doctest.rb#2
module YARD::CLI; end

# source://yard-doctest//lib/yard/cli/doctest.rb#3
class YARD::CLI::Doctest < ::YARD::CLI::Command
  # source://yard-doctest//lib/yard/cli/doctest.rb#5
  def description; end

  # Runs the command line, parsing arguments
  # and generating tests.
  #
  # @param args [Array<String>] Switches are passed to minitest,
  #   everything else is treated as the list of directories/files or glob
  #
  # source://yard-doctest//lib/yard/cli/doctest.rb#16
  def run(*args); end

  private

  # source://yard-doctest//lib/yard/cli/doctest.rb#89
  def add_pwd_to_path; end

  # source://yard-doctest//lib/yard/cli/doctest.rb#49
  def excluded_files; end

  # source://yard-doctest//lib/yard/cli/doctest.rb#60
  def generate_tests(examples); end

  # source://yard-doctest//lib/yard/cli/doctest.rb#43
  def parse_examples(files); end

  # source://yard-doctest//lib/yard/cli/doctest.rb#29
  def parse_files(globs); end
end

# source://yard-doctest//lib/yard/doctest/example.rb#2
module YARD::Doctest
  extend ::YARD::Doctest

  # Passed block called after each example
  # or specific tests based on passed name.
  #
  # It is evaluated in the same context as example.
  #
  # @param test [String]
  # @param blk [Proc]
  #
  # source://yard-doctest//lib/yard-doctest.rb#44
  def after(test = T.unsafe(nil), &blk); end

  # Passed block called after all examples and
  # evaluated in the different context from examples.
  #
  # It actually just sends block to `Minitest.after_run`.
  #
  # @param blk [Proc]
  #
  # source://yard-doctest//lib/yard-doctest.rb#56
  def after_run(&blk); end

  # Passed block called before each example
  # or specific tests based on passed name.
  #
  # It is evaluated in the same context as example.
  #
  # @param test [String]
  # @param blk [Proc]
  #
  # source://yard-doctest//lib/yard-doctest.rb#31
  def before(test = T.unsafe(nil), &blk); end

  # Configures YARD doctest.
  #
  # @yield [self]
  #
  # source://yard-doctest//lib/yard-doctest.rb#18
  def configure; end

  # Returns hash with arrays of before/after hooks.
  #
  # @api private
  #
  # source://yard-doctest//lib/yard-doctest.rb#81
  def hooks; end

  # Adds definition of test to be skipped.
  #
  # @param test [Array<String>]
  #
  # source://yard-doctest//lib/yard-doctest.rb#65
  def skip(test); end

  # Array of tests to be skipped.
  #
  # @api private
  #
  # source://yard-doctest//lib/yard-doctest.rb#73
  def skips; end
end

# source://yard-doctest//lib/yard/doctest/example.rb#3
class YARD::Doctest::Example < ::Minitest::Spec
  # @return [Array<Hash>] assertions to be done
  #
  # source://yard-doctest//lib/yard/doctest/example.rb#12
  def asserts; end

  # @return [Array<Hash>] assertions to be done
  #
  # source://yard-doctest//lib/yard/doctest/example.rb#12
  def asserts=(_arg0); end

  # @return [String] namespace path of example (e.g. `Foo#bar`)
  #
  # source://yard-doctest//lib/yard/doctest/example.rb#6
  def definition; end

  # @return [String] namespace path of example (e.g. `Foo#bar`)
  #
  # source://yard-doctest//lib/yard/doctest/example.rb#6
  def definition=(_arg0); end

  # @return [String] filepath to definition (e.g. `app/app.rb:10`)
  #
  # source://yard-doctest//lib/yard/doctest/example.rb#9
  def filepath; end

  # @return [String] filepath to definition (e.g. `app/app.rb:10`)
  #
  # source://yard-doctest//lib/yard/doctest/example.rb#9
  def filepath=(_arg0); end

  # Generates a spec and registers it to Minitest runner.
  #
  # source://yard-doctest//lib/yard/doctest/example.rb#17
  def generate; end

  protected

  # source://yard-doctest//lib/yard/doctest/example.rb#131
  def add_filepath_to_backtrace(exception, filepath); end

  # source://yard-doctest//lib/yard/doctest/example.rb#73
  def assert_example(example, expected, actual, bind); end

  # @return [Boolean]
  #
  # source://yard-doctest//lib/yard/doctest/example.rb#119
  def both_are_errors?(expected, actual); end

  # source://yard-doctest//lib/yard/doctest/example.rb#139
  def clear_extra_constants(scope, constants); end

  # source://yard-doctest//lib/yard/doctest/example.rb#101
  def context(bind); end

  # source://yard-doctest//lib/yard/doctest/example.rb#97
  def evaluate(code, bind); end

  # source://yard-doctest//lib/yard/doctest/example.rb#66
  def evaluate_example(example, actual, bind); end

  # source://yard-doctest//lib/yard/doctest/example.rb#91
  def evaluate_with_assertion(code, bind); end

  # @return [Boolean]
  #
  # source://yard-doctest//lib/yard/doctest/example.rb#123
  def only_one_is_error?(expected, actual); end

  class << self
    protected

    # @param example_name [String] The name of the example.
    # @param Hash<Symbol, [Hash<Symbol, Array<Hash<(test: String, block: Proc)>>] all_hooks] Array<Hash<(test: String, block: Proc)>>] all_hooks
    # @param example [Example]
    #
    # source://yard-doctest//lib/yard/doctest/example.rb#151
    def register_hooks(example_name, all_hooks, example); end
  end
end

# source://yard-doctest//lib/yard/doctest/version.rb#3
YARD::Doctest::VERSION = T.let(T.unsafe(nil), String)