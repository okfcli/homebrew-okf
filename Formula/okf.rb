class Okf < Formula
  desc "Go CLI toolkit for the Open Knowledge Format (OKF) — agentic-first, JSON-native"
  homepage "https://github.com/okfcli/okf"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/okfcli/okf/releases/download/v0.1.0/okf_0.1.0_darwin_arm64.tar.gz"
      sha256 "8278039f68bf7570fcbdd5f13c5c48c4073a7b6f25bcac89a1596672ef8f70ba"
    end
    on_intel do
      url "https://github.com/okfcli/okf/releases/download/v0.1.0/okf_0.1.0_darwin_amd64.tar.gz"
      sha256 "b2b9408966995efd062d50184e50231ef88aedf9787caed2f651ed00549f6930"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/okfcli/okf/releases/download/v0.1.0/okf_0.1.0_linux_arm64.tar.gz"
      sha256 "93e4473b06b42337d4ad68e25405ad92ec6bcb028326c92245f94edb20925237"
    end
    on_intel do
      url "https://github.com/okfcli/okf/releases/download/v0.1.0/okf_0.1.0_linux_amd64.tar.gz"
      sha256 "8151816ab7e1ae7722888fca6d1c8f7c30e8a750bccc78a979c0749adfb9a135"
    end
  end

  def install
    bin.install "okf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/okf version")
    assert_match '"name":"schema"', shell_output("#{bin}/okf schema")
  end
end
