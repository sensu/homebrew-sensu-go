class SensuGo < Formula
    version '5.21.0'
    version_scheme 1
    desc "Sensu Go"
    homepage "https://sensu.io"
    url "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/#{version}/sensu-go_#{version}_darwin_amd64.tar.gz"
    sha256 "aff56164e5bbec1ae33e5c4f38f8be400e397268d71351ec8701a64c67d19baa"

    def install
        bin.install "sensuctl"
    end
    
    test do
        system "#{bin}/sensuctl", "--help"
    end
end
