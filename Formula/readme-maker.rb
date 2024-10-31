# Formula/readme-maker.rb
class ReadmeMaker < Formula
  desc "A CLI tool to generate structured README.md files using OpenAI API."
  homepage "https://github.com/CalebSargeant/readme-maker"
  url "https://github.com/CalebSargeant/readme-maker/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "<SHA256_CHECKSUM>"
  license "MIT"

  depends_on "python@3.9"  # Use the Python version required for your package

  def install
    # Install the Python package using pip
    system "pip3", "install", ".", "--prefix=#{prefix}"
  end

  test do
    # Test the installation
    system "#{bin}/readme", "--help"
  end
end