class Ferium < Formula
  desc "Fast and multi-source CLI program for managing Minecraft mods and modpacks"
  homepage "https://github.com/gorilla-devs/ferium"
  url "https://github.com/gorilla-devs/ferium/archive/v4.1.7.tar.gz"
  sha256 "2c2193417aff8af9045ea87a6ec6a35d3d1a48bdfdef05fc520fc4b9877de547"
  license "MPL-2.0"
  head "https://github.com/gorilla-devs/ferium.git", branch: "main"

  bottle do
    root_url "https://github.com/theRookieCoder/homebrew-tap/releases/download/ferium-4.1.7"
    sha256 cellar: :any_skip_relocation, big_sur:      "d7470e41487527be63605951164a526cd55a26c4899dc7c121daf01985dd3bce"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ea6e08985424e5837825cb3cd9c7257343ec2acd66c7e24f957f1494780e9136"
  end

  depends_on "rust" => :build

  on_linux do
    depends_on "pkg-config" => :build
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "ferium", "help"
  end
end
