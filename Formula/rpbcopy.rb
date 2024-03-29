# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rpbcopy < Formula
  desc "rpbcopy for linux that works in the terminal over ssh"
  homepage "https://github.com/bottlerocketlabs/remote-pbcopy"
  version "0.1.5"
  license "MIT"

  if OS.mac?
    url "https://github.com/bottlerocketlabs/remote-pbcopy/releases/download/v0.1.5/rpbcopy_0.1.5_Darwin_amd64.tar.gz"
    sha256 "3770c5957c8533a5b81d80884ebc42e70fefaa15f3a24941d9e72c6d94ebc96b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/bottlerocketlabs/remote-pbcopy/releases/download/v0.1.5/rpbcopy_0.1.5_Linux_amd64.tar.gz"
    sha256 "831745bfb86b0b0e5478bbc86f2885146237c6359df0d5a34add5a58eb3b74bf"
  end

  depends_on "go"

  def install
    bin.install "rpbcopy"
  end

  test do
    system "#{bin}/rpbcopy -h"
  end
end
