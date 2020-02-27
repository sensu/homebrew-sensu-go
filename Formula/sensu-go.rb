class SensuGo < Formula
    version '5.18.0'
    version_scheme 1
    desc "Sensu Go"
    homepage "https://sensu.io"
    url "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/#{version}/sensu-go_#{version}_darwin_amd64.tar.gz"
    sha256 "2a0c423385dec0e1e70f21baa4df62cd16e0e4f649e1e916c9d96ae9ec578c23"

    def install
        bin.install "sensuctl"
    end
    
    test do
        system "#{bin}/sensuctl", "--help"
    end
end
