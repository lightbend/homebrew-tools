class ReactiveCli < Formula
  desc "Lightbend Reactive CLI"
  # homepage "https://www.lightbend.com/products/enterprise-suite/advanced-tooling"
  homepage "https://github.com/lightbend/reactive-cli"

  depends_on "re2"
  depends_on "openssl"

  url "https://bintray.com/lightbend/generic/download_file?file_path=reactive-cli-0.4.0-Mac_OS_X-x86_64.zip"
  version "0.4.0"
  sha256 "140bbc90355958f9a0881a6693b500be254eac47174e53be8f7d5f14e6db3d80"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    system bin/"reactive-cli", "version"
  end
end
