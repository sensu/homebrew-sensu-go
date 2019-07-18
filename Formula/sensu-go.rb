class SensuGo < Formula
    version = '5.11.1'
    desc "Sensu Go"
    homepage "https://sensu.io"
    url "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/#{version}/sensu-enterprise-go_#{version}_darwin_amd64.tar.gz"
    sha256 "9134c38e5f0ad7a36abb5d40cddfc27faf98c1087531544b0de35b45ad6d08c2"

    def install
        bin.install "sensuctl"
    end
    
    test do
        system "#{bin}/sensuctl", "--help"
    end
end
