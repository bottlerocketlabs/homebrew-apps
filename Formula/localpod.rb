# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Localpod < Formula
  desc "A tool help local development environments"
  homepage "https://github.com/bottlerocketlabs/localpod"
  version "0.1.0"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bottlerocketlabs/localpod/releases/download/v0.1.0/localpod_0.1.0_Darwin_x86_64.tar.gz"
    sha256 "bf60d2ba45972bff7ba457e5cbc81e375d624c086cb44cb077cbe2fcef7263bc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/bottlerocketlabs/localpod/releases/download/v0.1.0/localpod_0.1.0_Linux_x86_64.tar.gz"
    sha256 "4ff228633dab587bf69b9f0b04c4fd666e7427324d2691cb4c8714f062047657"
  end

  depends_on "go"

  def install
    bin.install "localpod"
  end

  test do
    system "#{bin}/localpod -help"
  end
end
