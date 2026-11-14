class DeccyCli < Formula
  desc "Maintain a decision graph in any repo: one CLI for humans and agents alike"
  homepage "https://edawise.com/"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/edawise/deccy-cli/releases/download/v0.2.3/deccy-cli-aarch64-apple-darwin.tar.xz"
      sha256 "7bef3869d54df717c1baf762481509a1233611c975823be35c47b811d6e2ced8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/edawise/deccy-cli/releases/download/v0.2.3/deccy-cli-x86_64-apple-darwin.tar.xz"
      sha256 "5e2d5c459b14b50f99477772986117b3f04623e9a2650bd0572df36505578470"
    end
  end

  def install
    bin.install "deccy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deccy --version")
  end
end
