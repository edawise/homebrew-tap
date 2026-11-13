class DeccyCli < Formula
  desc "Maintain a decision graph in any repo: one CLI for humans and agents alike"
  homepage "https://edawise.com/"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/edawise/deccy-cli/releases/download/v0.2.2/deccy-cli-aarch64-apple-darwin.tar.xz"
      sha256 "9021846cb0ad2f47e172cc2348da1eb61c516ff5fd2848dcf080495fd7cd9e2a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/edawise/deccy-cli/releases/download/v0.2.2/deccy-cli-x86_64-apple-darwin.tar.xz"
      sha256 "597b51603ac44af0e315ff64239a4db5f80c36bef220340e3732635c53e20f7b"
    end
  end

  def install
    bin.install "deccy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deccy --version")
  end
end
