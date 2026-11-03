class DeccyCli < Formula
  desc "Maintain a decision graph in any repo: one CLI for humans and agents alike"
  homepage "https://edawise.com/"
  license any_of: ["MIT", "Apache-2.0"]

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/edawise/deccy-cli/releases/download/v0.2.1/deccy-cli-aarch64-apple-darwin.tar.xz"
      sha256 "e3b7a5607e03f276fb963540ae3ec1584b7dd6856b0eed48f7d08f08c1ed8771"
    end
    if Hardware::CPU.intel?
      url "https://github.com/edawise/deccy-cli/releases/download/v0.2.1/deccy-cli-x86_64-apple-darwin.tar.xz"
      sha256 "a63dc22ab28083fe278b0cf5f7f9615777bf2648adde48daf62e6655f21ad02c"
    end
  end

  def install
    bin.install "deccy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deccy --version")
  end
end
