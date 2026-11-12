class Beadscope < Formula
  desc "Local web UI for the beads (bd) issue tracker"
  homepage "https://github.com/sai-manoj-kumar/beadscope"
  url "https://registry.npmjs.org/beadscope/-/beadscope-0.5.0.tgz"
  sha256 "1d667f06ec3c11f377edbed9ba60571c8a3f39ed7b7c5d125d2f482fbc3dff61"
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
