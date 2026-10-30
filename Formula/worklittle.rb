class Worklittle < Formula
  desc "Official Worklittle CLI for api.worklittle.com"
  homepage "https://docs.worklittle.com/libraries/cli"
  url "https://docs.worklittle.com/cli/worklittle-1.3.0.tar.gz"
  sha256 "82a54d1fbfdaf556f2e6910af62ac4c0a4329fb69556ca2759b4b10783af4e30"
  license "MIT"

  depends_on "node"

  def install
    libexec.install "worklittle.mjs"
    (bin/"worklittle").write <<~EOS
      #!/bin/bash
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/worklittle.mjs" "$@"
    EOS
  end

  test do
    assert_match "worklittle", shell_output("#{bin}/worklittle help")
  end
end
