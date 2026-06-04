class CodexCopilotBridge < Formula
  desc "Local bridge for using GitHub Copilot models from Codex CLI"
  homepage "https://github.com/greatbody/codex-copilot-bridge"
  url "https://github.com/greatbody/codex-copilot-bridge/releases/download/v0.1.0/codex-copilot-bridge-v0.1.0-darwin-x64.tar.gz"
  version "0.1.0"
  sha256 "192184a28c827654a8883f5374e60465b948a519b499848a46d853c525d4884c"
  license "MIT"

  depends_on :macos

  def install
    odie "This release currently provides a macOS x64 binary only" if Hardware::CPU.arm?

    bin.install "bin/codex-copilot-bridge"
    bin.install "bin/ghcodex"
  end

  test do
    assert_predicate bin/"codex-copilot-bridge", :exist?
    assert_predicate bin/"ghcodex", :exist?
  end
end
