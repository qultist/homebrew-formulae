class Ape < Formula
  desc "Ape generates weekly repeating items from templates"
  homepage "https://github.com/qultist/ape"
  url "https://github.com/qultist/ape.git", tag: "0.1.0", revision: "8e84ed4d98685dfd41abce723cdeafda44a67e4e"
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
