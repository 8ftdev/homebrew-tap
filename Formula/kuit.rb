class Kuit < Formula
  desc "Local collection of web components and development tools"
  homepage "https://github.com/8ftdev/kuit"

  on_macos do
    on_arm do
      url "https://github.com/8ftdev/kuit/releases/download/v0.1.0-rc.2/kuit_0.1.0-rc.2_darwin_arm64.tar.gz"
      sha256 "bec9d36f978b931e76ded8bf2c625a2f67895334ba26d9c28bfd13b2c5d04198"
    end

    on_intel do
      url "https://github.com/8ftdev/kuit/releases/download/v0.1.0-rc.2/kuit_0.1.0-rc.2_darwin_amd64.tar.gz"
      sha256 "399ad51d231612dfd1cec686f15fb48f5ff7e753724d341c0f694d7f1f79db6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/8ftdev/kuit/releases/download/v0.1.0-rc.2/kuit_0.1.0-rc.2_linux_arm64.tar.gz"
      sha256 "f0ef43b46d711b3a5cf864de3a2d09a6803922b42662b150fb9615017934b2c3"
    end

    on_intel do
      url "https://github.com/8ftdev/kuit/releases/download/v0.1.0-rc.2/kuit_0.1.0-rc.2_linux_amd64.tar.gz"
      sha256 "2d245f97a03f2daf4a2c8f87af27432a3406524ad7191c56835cfd6239d7d440"
    end
  end

  def install
    bin.install "kuit"
  end

  test do
    assert_match "kuit", shell_output("#{bin}/kuit --help")
  end
end
