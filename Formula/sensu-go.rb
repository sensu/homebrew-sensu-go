class SensuGo < Formula
    version '5.19.0'
    version_scheme 1
    desc "Sensu Go"
    homepage "https://sensu.io"
    url "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/#{version}/sensu-go_#{version}_darwin_amd64.tar.gz"
    sha256 "7a124794995e06cccbf1919553b9ed4b4e87125dfe1cd051747d1ed4ce8c5665"

    def install
        bin.install "sensuctl"
    end
    
    test do
        system "#{bin}/sensuctl", "--help"
    end
end
