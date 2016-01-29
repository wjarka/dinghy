require 'formula'

DINGHY_VERSION='4.1.0'

class Dinghy < Formula
  homepage 'https://github.com/wjarka/dinghy'
  url  'https://github.com/wjarka/dinghy.git', tag: "v#{DINGHY_VERSION}"
  head 'https://github.com/wjarka/dinghy.git', branch: :master
  version DINGHY_VERSION

  depends_on 'unfs3'
  depends_on 'dnsmasq'

  def install
    bin.install "bin/dinghy"
    bin.install "bin/_dinghy_command"
    prefix.install "cli"
  end

  def caveats; <<-EOS.undent
    Run `dinghy create` to create the VM, then `dinghy up` to bring up the VM and services.
    EOS
  end
end
