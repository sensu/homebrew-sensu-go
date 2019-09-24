class SensuGo < Formula
    version = '5.13.1'
    desc "Sensu Go"
    homepage "https://sensu.io"
    url "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/#{version}/sensu-go_#{version}_darwin_amd64.tar.gz
    sha256 "c6cb79080351226e731b9ebaf0b317861770623ca685547b80600d1769b43bbaed51ed42fee7b31dcf545d02ccd0e6cc85927713d889a79392bd23c6451b3d6b"

    def install
        bin.install "sensuctl"
    end
    
    test do
        system "#{bin}/sensuctl", "--help"
    end
end
