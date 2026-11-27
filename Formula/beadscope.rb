class Beadscope < Formula
  desc "Local web UI for the beads (bd) issue tracker"
  homepage "https://github.com/sai-manoj-kumar/beadscope"
  url "https://registry.npmjs.org/beadscope/-/beadscope-0.6.14.tgz"
  sha256 "609a6fedd3231575e1b4330e4d123e461287dc88d772afe465e9b80c65ffedd5"
  license "MIT"

  depends_on "beads"
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  def caveats
    <<~EOS
      Start Beadscope in the background and open it in your browser:
        beadscope start

      Stop it with `beadscope stop`. Run `beadscope --help` for the other commands.
    EOS
  end

  test do
    assert_match "Beadscope", shell_output("#{bin}/beadscope --help")
    assert_match "not running", shell_output("#{bin}/beadscope status", 1)
  end
end
