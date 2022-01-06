class SensuGo < Formula
    version = '6.6.3'
    desc "Sensu Go"
    homepage "https://sensu.io"
    url "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/#{version}/sensu-go_#{version}_darwin_amd64.tar.gz"
    sha256 "7b28b23fb192daaf9c7f5a98a5ca5740ad589385152bdce5824020b3a92a48a0"

    def install
        bin.install "sensuctl"
    end
    
    test do
        system "#{bin}/sensuctl", "--help"
    end
end
