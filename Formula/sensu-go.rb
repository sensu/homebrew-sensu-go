class SensuGo < Formula
    version '6.1.2'
    version_scheme 1
    desc "Sensu Go"
    homepage "https://sensu.io"
    url "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/#{version}/sensu-go_#{version}_darwin_amd64.tar.gz"
    sha256 "ec006bb05073350bff329094cbc304fdae2d50b1b9677f5b6d9605478ff06807"

    def install
        bin.install "sensuctl"
    end
    
    test do
        system "#{bin}/sensuctl", "--help"
    end
end
