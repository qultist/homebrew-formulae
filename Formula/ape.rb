class Ape < Formula
  desc "Ape generates weekly repeating items from templates"
  homepage "https://github.com/qultist/ape"
  url "https://github.com/qultist/ape.git", tag: "0.1.1", revision: "373410ff9776141215d14ad0b63e4fdf6ba1a4a0"
  license "MIT"

  depends_on xcode: ["13.3", :build]

  def install
    system "rake", "build"
    bin.install ".build/release/ape"
  end

  test do
    system "#{bin}/ape", "--help"
  end
end
