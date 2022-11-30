class SensuGo < Formula
    version = '6.9.0'
    desc "Sensu Go"
    homepage "https://sensu.io"
    url "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/#{version}/sensu-go_#{version}_darwin_amd64.tar.gz"
    sha256 "b0090da83678a9271ffe22f98b31f39d8609652d1af08067ad2086af32140038"
    license "MIT"
    head "https://github.com/asachs01/homebrew-sensu-go.git"

    def install
        bin.install "sensuctl"
        bin.install "sensu-agent"
        (bin/"download_sensu_agent_config").write <<--EOS.undent
        #!/bin/sh
        curl -L https://docs.sensu.io/sensu-go/latest/files/agent.yml -o /etc/sensu/agent.yml
    end
    
    #def post_install
        
    
    test do
        system "#{bin}/sensuctl", "--help"
    end
end
