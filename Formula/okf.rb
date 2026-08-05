class Okf < Formula
  desc "Go CLI toolkit for the Open Knowledge Format (OKF), agentic-first and JSON-native"
  homepage "https://github.com/okfcli/okf"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/okfcli/okf/releases/download/v0.3.0/okf_0.3.0_darwin_arm64.tar.gz"
      sha256 "7ea2f6a3ae4ce189c2ecdec8f3ecd100feccb5a720b84467b5312afb75a4cbfa"
    end
    on_intel do
      url "https://github.com/okfcli/okf/releases/download/v0.3.0/okf_0.3.0_darwin_amd64.tar.gz"
      sha256 "c5afcee8dac9362af435e23da4ad9624798da6fccdfaa5bab89c45aa0f01ab43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/okfcli/okf/releases/download/v0.3.0/okf_0.3.0_linux_arm64.tar.gz"
      sha256 "b03a75239136a4f0fc5cd1dd60246254e25cd5b13b84cc683e9308360c6b53a5"
    end
    on_intel do
      url "https://github.com/okfcli/okf/releases/download/v0.3.0/okf_0.3.0_linux_amd64.tar.gz"
      sha256 "43b4eb96974d409cc228326bf7976217391454b7d98f18016b00104cf5777509"
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
