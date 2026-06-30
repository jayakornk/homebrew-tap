class KubectxRs < Formula
  desc "Faster way to switch between clusters and namespaces in kubectl (Rust port)"
  homepage "https://github.com/jayakornk/kubectx-rs"
  url "https://github.com/jayakornk/kubectx-rs/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "4b645f7fabee3d60ba82ce9703273e51c096c914f13c432fba75665b82970a92"
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
