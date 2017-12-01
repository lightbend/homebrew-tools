class ReactiveCli < Formula
  desc "Lightbend Reactive CLI"
  # homepage "https://www.lightbend.com/products/enterprise-suite/advanced-tooling"
  homepage "https://github.com/lightbend/reactive-cli"

  depends_on "re2"
  depends_on "openssl"

  url "https://bintray.com/lightbend/generic/download_file?file_path=reactive-cli-0.3.4-Mac_OS_X-x86_64.zip"
  version "0.3.4"
  sha256 "facf5676e8bacda5cc40575e2e0e0f1616cc095158ee23f40c141b88e9ad360a"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    system bin/"reactive-cli", "version"
  end
end
