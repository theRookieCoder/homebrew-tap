class Ferium < Formula
  desc "Fast and multi-source CLI program for managing Minecraft mods and modpacks"
  homepage "https://github.com/gorilla-devs/ferium"
  url "https://github.com/gorilla-devs/ferium/releases/download/v4.1.5/ferium-macos-x64.zip"
  version "4.1.5"
  sha256 "2bf189e1602677eaf8ed9823620ef8e8d03271cd3e7372e9a70ffecc5426d8c9"
  license "MPL-2.0"

  def install
    bin.install "ferium"
  end

  test do
    system "ferium", "-V"
  end
end
