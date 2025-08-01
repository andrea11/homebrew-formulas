# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Openv < Formula
  desc "A tool to automatically load secrets from .env files using 1password cli u"
  homepage "https://github.com/andrea11/openv"
  url "https://github.com/andrea11/openv/archive/refs/tags/v0.4.0.tar.gz"
  version "0.4.0"
  sha256 "82a9261b23cd9b88dcb84fd0c3d3d30fb7a207c3d5ac41eeeca4a318bf14ff78"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrea11/openv/releases/download/v0.4.0/openv-0.4.0-darwin-arm64.tar.gz"
      sha256 "ce3fd0a226c161085e08e76c7ed6b070f3800834dd16111ec85617cb0ffedf19"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrea11/openv/releases/download/v0.4.0/openv-0.4.0-linux-amd64.tar.gz"
      sha256 "cb5b44a484542c295c37d303caf93592c396f5323d75e5d8c212c78410ddaf8a"
    end

    on_arm do
      url "https://github.com/andrea11/openv/releases/download/v0.4.0/openv-0.4.0-linux-arm64.tar.gz"
      sha256 "660cf03e320aa543d8c8252bccd5915c35aadf742a31a80e2e099778f349ea3f"
    end
  end

  def install
    bin.install "openv"
  end

  test do
    assert_match "--help", shell_output("openv --help")
  end
end
