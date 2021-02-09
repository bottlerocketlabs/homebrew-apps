# This file was generated by GoReleaser. DO NOT EDIT.
class Localpod < Formula
  desc "A tool help create local development environments"
  homepage "https://github.com/bottlerocketlabs/localpod"
  version "0.1.7"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bottlerocketlabs/localpod/releases/download/v0.1.7/localpod_0.1.7_Darwin_amd64.tar.gz"
    sha256 "6bb5cdbe2ff246a3c0b746c598807edf4548a94b329287af9a4c99e65af0eac9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/bottlerocketlabs/localpod/releases/download/v0.1.7/localpod_0.1.7_Linux_amd64.tar.gz"
    sha256 "f9034c17ec4958f7c62ea563e69f612e36d45981b328b50aefc38d6d827e0381"
  end

  depends_on "go"

  def install
    bin.install "localpod"
  end

  test do
    system "#{bin}/localpod -h"
  end
end
