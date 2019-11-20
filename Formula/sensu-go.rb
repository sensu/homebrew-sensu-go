class SensuGo < Formula
    version '5.15.0'
    version_scheme 1
    desc "Sensu Go"
    homepage "https://sensu.io"
    url "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/#{version}/sensu-go_#{version}_darwin_amd64.tar.gz"
    sha256 "b1bc8ff4cac6e588e9d08b191f9404a1c2ae70e8597b5ab7928e3d965e22c58c"

    def install
        bin.install "sensuctl"
    end
    
    test do
        system "#{bin}/sensuctl", "--help"
    end
end
