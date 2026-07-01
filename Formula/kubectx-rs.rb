class KubectxRs < Formula
  desc "Faster way to switch between clusters and namespaces in kubectl (Rust port)"
  homepage "https://github.com/jayakornk/kubectx-rs"
  url "https://github.com/jayakornk/kubectx-rs/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "2eb2658f650eb81ed4d38d63af9b8a8cc8a69690dd790c49bccaf4fcad0594a2"
  license "Apache-2.0"
  head "https://github.com/jayakornk/kubectx-rs.git", branch: "main"

  # Edition 2024 requires rustc >= 1.85; the Homebrew `rust` formula satisfies this.
  depends_on "rust" => :build

  def install
    # `cargo install` builds every [[bin]] in Cargo.toml, so both `kubectx`
    # and `kubens` are installed into `bin/`.
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubectx --version")
    assert_match version.to_s, shell_output("#{bin}/kubens --version")
  end
end
