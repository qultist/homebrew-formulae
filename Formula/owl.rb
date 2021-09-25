class Owl < Formula
  desc "Owl collects the licenses of the Swift packages you use"
  homepage "https://github.com/qultist/owl"
  url "https://github.com/qultist/owl.git", tag: "0.1.1", revision: "ac4a397247d34e08888d0478847d83b044517c6d"
  license "MIT"

  depends_on xcode: ["12.0", :build]

  def install
    system "rake", "build"
    bin.install ".build/release/owl"
  end

  test do
    system "#{bin}/owl", "--help"
  end
end
