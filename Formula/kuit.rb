class Kuit < Formula
  desc "Local collection of web components and development tools"
  homepage "https://github.com/8ftdev/kuit"

  on_macos do
    on_arm do
      url "https://github.com/8ftdev/kuit/releases/download/v0.1.0-rc.3/kuit_0.1.0-rc.3_darwin_arm64.tar.gz"
      sha256 "1f5fbd5c673e65499b3d011507a1e1804e71bfeac250bab768f626bc19aa17e0"
    end

    on_intel do
      url "https://github.com/8ftdev/kuit/releases/download/v0.1.0-rc.3/kuit_0.1.0-rc.3_darwin_amd64.tar.gz"
      sha256 "aaee8158e290a4503d4015ee32002bccbdc964b524caf7b8a40988a4844ea285"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/8ftdev/kuit/releases/download/v0.1.0-rc.3/kuit_0.1.0-rc.3_linux_arm64.tar.gz"
      sha256 "148cf7399961e7a0f9885bef15305d3cff60eeac7a2a6dce9696909dc0069114"
    end

    on_intel do
      url "https://github.com/8ftdev/kuit/releases/download/v0.1.0-rc.3/kuit_0.1.0-rc.3_linux_amd64.tar.gz"
      sha256 "0314b08d7e1406b5d4c55d415047b1f3f5c65bb0bdbccdbab1558c89a5871b9f"
    end
  end

  def install
    bin.install "kuit"
  end

  test do
    assert_match "kuit", shell_output("#{bin}/kuit --help")
  end
end
