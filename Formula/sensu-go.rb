class SensuGo < Formula
    version = '5.13.1'
    desc "Sensu Go"
    homepage "https://sensu.io"
    url "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/#{version}/sensu-go_#{version}_darwin_amd64.tar.gz
    sha256 "73497e87807405a161b61cf86fb87e9a3858ab2b73f902eef9f5b87e02462178"

    def install
        bin.install "sensuctl"
    end
    
    test do
        system "#{bin}/sensuctl", "--help"
    end
end
