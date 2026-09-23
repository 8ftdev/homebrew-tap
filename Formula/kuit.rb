class Kuit < Formula
  desc "Local collection of web components and development tools"
  homepage "https://github.com/8ftdev/kuit"

  on_macos do
    on_arm do
      url "https://github.com/8ftdev/kuit/releases/download/v0.1.0-rc.1/kuit_0.1.0-rc.1_darwin_arm64.tar.gz"
      sha256 "168b31ea75222532d7477ac599c76a84d744671c342bc7fd353346efa07d6a38"
    end

    on_intel do
      url "https://github.com/8ftdev/kuit/releases/download/v0.1.0-rc.1/kuit_0.1.0-rc.1_darwin_amd64.tar.gz"
      sha256 "72e099e6bb633bf425dfa48f4e09520510e3973594dd4a97432899052c6ec183"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/8ftdev/kuit/releases/download/v0.1.0-rc.1/kuit_0.1.0-rc.1_linux_arm64.tar.gz"
      sha256 "46f80ceea8b7d132db591daf7b808ae5bef1429679583a6111c5cffc45d30106"
    end

    on_intel do
      url "https://github.com/8ftdev/kuit/releases/download/v0.1.0-rc.1/kuit_0.1.0-rc.1_linux_amd64.tar.gz"
      sha256 "a52b2e34ab7f73b18633246906529523d47c1ae330eb882ed4218fddbdb49628"
    end
  end

  def install
    bin.install "kuit"
  end

  test do
    assert_match "kuit", shell_output("#{bin}/kuit --help")
  end
end
