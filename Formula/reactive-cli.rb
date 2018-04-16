class ReactiveCli < Formula
  desc "Lightbend Reactive CLI"
  # homepage "https://www.lightbend.com/products/enterprise-suite/advanced-tooling"
  homepage "https://github.com/lightbend/reactive-cli"

  depends_on "re2"
  depends_on "openssl"

  url "https://bintray.com/lightbend/generic/download_file?file_path=reactive-cli-1.1.0-Mac_OS_X-x86_64.zip"
  version "1.1.0"
  sha256 "4a11979754de0b33bb94c81e97ccff5fee8942162106b4858d0f3daa96c6e7b8"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    system bin/"reactive-cli", "version"
  end
end
