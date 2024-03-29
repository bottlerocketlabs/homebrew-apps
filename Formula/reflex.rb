# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reflex < Formula
  desc "Run a command when files change"
  homepage "https://github.com/cespare/reflex"
  version "0.3.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/bottlerocketlabs/reflex/releases/download/v0.3.4/reflex_0.3.4_Darwin_amd64.tar.gz"
    sha256 "39013ed0344c1904af69df9e40773e770b2ca62b5e60c19a074b756154b111b4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/bottlerocketlabs/reflex/releases/download/v0.3.4/reflex_0.3.4_Linux_amd64.tar.gz"
    sha256 "0c206fcb4de48f0eb46f7ca4297e18d6d8bc7288bb34ef1426c30db4b46fb976"
  end

  depends_on "go"

  def install
    bin.install "reflex"
  end

  test do
    system "#{bin}/reflex -h"
  end
end
