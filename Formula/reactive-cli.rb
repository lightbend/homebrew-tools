class ReactiveCli < Formula
  desc "Lightbend Reactive CLI"
  # homepage "https://www.lightbend.com/products/enterprise-suite/advanced-tooling"
  homepage "https://github.com/lightbend/reactive-cli"

  depends_on "re2"

  url "https://bintray.com/lightbend/generic/download_file?file_path=reactive-cli-0.3.0-Mac_OS_X-x86_64.zip"
  version "0.3.0"
  sha256 "6a1eaad6101102fbe12b87f88b403b45920388f790ef67a56129b6a52a77dade"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    system bin/"reactive-cli", "version"
  end
end
