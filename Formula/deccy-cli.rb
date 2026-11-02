class DeccyCli < Formula
  desc "Maintain a decision graph in any repo: one CLI for humans and agents alike"
  homepage "https://edawise.com/"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/edawise/deccy-cli/releases/download/v0.2.0/deccy-cli-aarch64-apple-darwin.tar.xz"
      sha256 "b590f819858f88d74cf08e37bb0a6bf20e0fb654e3185c51d796331c2daf923b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/edawise/deccy-cli/releases/download/v0.2.0/deccy-cli-x86_64-apple-darwin.tar.xz"
      sha256 "7036ff6452e57fd3f98033f615c16f3bd906a842af9262051e7af9694f1ebab2"
    end
  end

  def install
    bin.install "deccy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deccy --version")
  end
end
