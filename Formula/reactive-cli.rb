class ReactiveCli < Formula
  desc "Lightbend Reactive CLI"
  # homepage "https://www.lightbend.com/products/enterprise-suite/advanced-tooling"
  homepage "https://github.com/lightbend/reactive-cli"

  depends_on "re2"
  depends_on "openssl"

  url "https://bintray.com/lightbend/generic/download_file?file_path=reactive-cli-1.1.1-Mac_OS_X-x86_64.zip"
  version "1.1.1"
  sha256 "f9bf8f426b902ab68c55d21dea80795b292dc2d0296729b2bd468bb595f16fb4"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    system bin/"reactive-cli", "version"
  end
end
