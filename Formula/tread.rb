class Tread < Formula
  desc "Terminal-based reader for Markdown, EPUB and web content"
  homepage "https://github.com/liwuhou/tread"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/liwuhou/tread/releases/download/v0.1.7/tread-aarch64-apple-darwin.tar.xz"
      sha256 "da800d440d194ed9582f38fdcb197b2395df1672c511c72b6b9d21b21886b90e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/liwuhou/tread/releases/download/v0.1.7/tread-x86_64-apple-darwin.tar.xz"
      sha256 "578e7ade15449e8ae0e2a876ecb1bdd774dc6f412a578c15e4703e4c286d273d"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/liwuhou/tread/releases/download/v0.1.7/tread-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "aad9ddbb6c38676954472e8dd79ea1003ef152aecfdadf3453a555f50ab3f70b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/liwuhou/tread/releases/download/v0.1.7/tread-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "c6a6a01bb24a99932f08bcc9c419716f34d69a99eb5739f7f43a8dfe1ae0b677"
    end
  end
  license "MIT"

  def install
    bin.install "tread"
  end

  test do
    assert_match "Usage: tread", shell_output("#{bin}/tread 2>&1", 1)
  end
end
