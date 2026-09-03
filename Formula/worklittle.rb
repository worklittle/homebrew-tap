class Worklittle < Formula
  desc "Official Worklittle CLI for api.worklittle.com"
  homepage "https://docs.worklittle.com/libraries/cli"
  url "https://docs.worklittle.com/cli/worklittle-1.1.8.tar.gz"
  sha256 "d5dc8da8b4b7d6ebebd2b6c4578b330a2f33d85b95e4013cfae351d3f418f330"
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
