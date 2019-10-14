class SensuGo < Formula
    version = '5.14.0'
    desc "Sensu Go"
    homepage "https://sensu.io"
    url "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/#{version}/sensu-go_#{version}_darwin_amd64.tar.gz"
    sha256 "0f2d7e4081c58a3f32cf2e0f74060a2d5353b914bff7c5179a78e7c68c6805e0"

    def install
        bin.install "sensuctl"
    end
    
    test do
        system "#{bin}/sensuctl", "--help"
    end
end
