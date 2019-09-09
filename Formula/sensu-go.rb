class SensuGo < Formula
    version = '5.13.0'
    desc "Sensu Go"
    homepage "https://sensu.io"
    url "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/#{version}/sensu-go_#{version}_darwin_amd64.tar.gz
    sha256 "5ae2725b5a48bbdecb57e3a329f73fcc3198935a2853888531cef14e6e7e68b8"

    def install
        bin.install "sensuctl"
    end
    
    test do
        system "#{bin}/sensuctl", "--help"
    end
end
