class Ferium < Formula
  desc "Fast and multi-source CLI program for managing Minecraft mods and modpacks from Modrinth, CurseForge, and Github Releases"
  homepage "https://github.com/gorilla-devs/ferium"
  url "https://github.com/gorilla-devs/ferium/releases/download/v4.1.4/ferium-macos-x64.zip"
  sha256 "9d39e41dc0393dd8afc95cf5168648203131652e80cdce380b35b211c5240f96"
  license "MPL-2.0"
  version "4.1.4"

  def install
    bin.install "ferium"
  end

  test do
    system "ferium", "-V"
  end
end
