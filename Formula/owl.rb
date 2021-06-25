class Owl < Formula
  desc "Owl collects the licenses of the Swift packages you use"
  homepage "https://github.com/qultist/owl"
  url "https://github.com/qultist/owl.git", tag: "0.1.0", revision: "1140e288a393fa9f61f51d6d3174462b636fc224"
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
