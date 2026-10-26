class DeccyCli < Formula
  desc "Maintain a decision graph in any repo: one CLI for humans and agents alike"
  homepage "https://edawise.com/"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/edawise/deccy-cli/releases/download/v0.1.0/deccy-cli-aarch64-apple-darwin.tar.xz"
      sha256 "7cd3187e42e50f58e6b95ae42df71859c95588cf71cd85b8111be8e9cd42062b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/edawise/deccy-cli/releases/download/v0.1.0/deccy-cli-x86_64-apple-darwin.tar.xz"
      sha256 "366f1c84ee0b9ce0a181e8267f7ae4db7c4d7fed12395390d8914b4cb5dbf9bd"
    end
  end

  def install
    bin.install "deccy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deccy --version")
  end
end
