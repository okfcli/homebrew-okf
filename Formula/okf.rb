class Okf < Formula
  desc "Go CLI toolkit for the Open Knowledge Format (OKF), agentic-first and JSON-native"
  homepage "https://github.com/okfcli/okf"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/okfcli/okf/releases/download/v0.2.0/okf_0.2.0_darwin_arm64.tar.gz"
      sha256 "1a0dc58574f00fa6f9678b924cee11c3abb45546f2156a155768fe404db3ab4a"
    end
    on_intel do
      url "https://github.com/okfcli/okf/releases/download/v0.2.0/okf_0.2.0_darwin_amd64.tar.gz"
      sha256 "a96a8830a3bf9a75ed9ee71e4cc8ced7556fd9040c1cf7e9a775d078b6c3347a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/okfcli/okf/releases/download/v0.2.0/okf_0.2.0_linux_arm64.tar.gz"
      sha256 "8a299b08aa6477c1dee2054a60e58e3b6da1dd8b0d10a5ac66af40b024937a27"
    end
    on_intel do
      url "https://github.com/okfcli/okf/releases/download/v0.2.0/okf_0.2.0_linux_amd64.tar.gz"
      sha256 "b48408f9131b167a34196f4bff7118340914015261b6206160955addddbb4620"
    end
  end

  def install
    bin.install "okf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/okf version")
    assert_match '"name": "schema"', shell_output("#{bin}/okf schema schema")
  end
end
