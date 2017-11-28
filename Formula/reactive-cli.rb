class ReactiveCli < Formula
  desc "Lightbend Reactive CLI"
  # homepage "https://www.lightbend.com/products/enterprise-suite/advanced-tooling"
  homepage "https://github.com/lightbend/reactive-cli"

  depends_on "re2"

  url "https://bintray.com/lightbend/generic/download_file?file_path=reactive-cli-0.3.2-Mac_OS_X-x86_64.zip"
  version "0.3.2"
  sha256 "ff4d7748291bcf902cd4bca21fb3efc0ea29cf10d9537890c406735612ad7d42"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    system bin/"reactive-cli", "version"
  end
end
