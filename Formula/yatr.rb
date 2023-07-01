# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yatr < Formula
  desc "Yet Another Task Runner (or yatr for a short) allows you to organize and automate your routine operations that you normally do in Makefile (or else) for each project.
"
  homepage "https://github.com/koddr/yatr"
  version "1.2.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koddr/yatr/releases/download/v1.2.0/yatr_1.2.0_darwin_arm64.tar.gz"
      sha256 "ecb96c22c71d31fc8923f6a5e72c1986ba31ceb47ce766300f4d613d3af976a0"

      def install
        bin.install "yatr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koddr/yatr/releases/download/v1.2.0/yatr_1.2.0_darwin_amd64.tar.gz"
      sha256 "8b651ef6f994021f18b6f96f178ef36be78bbb7531fcb23bb0f04dbfb5609040"

      def install
        bin.install "yatr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koddr/yatr/releases/download/v1.2.0/yatr_1.2.0_linux_arm64.tar.gz"
      sha256 "7f1d48b00e028ee76864b29e0a81116401bfca6af1fca47ce48780d71e61862c"

      def install
        bin.install "yatr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koddr/yatr/releases/download/v1.2.0/yatr_1.2.0_linux_amd64.tar.gz"
      sha256 "874844449d5073c1653e71f4d5346bdd1e7b5015a12c41382ca682392cbcfcc9"

      def install
        bin.install "yatr"
      end
    end
  end

  def caveats
    <<~EOS
      After install, run yatr with -i option for generate initial tasks.yml file in the current dir:

      $ yatr -i

      Prepare your task file in one of the supported formats: JSON, YAML, TOML, or HCL (Terraform).

      💡 Note: See the repository's Wiki page (https://github.com/koddr/yatr/wiki) to understand structure of the task file.

      And now, run yatr with options:

      $ yatr -p ./path/to/tasks.yml

      Done! Your tasks have been executed.
    EOS
  end
end
