class SensuGo < Formula
    version = '6.9.0'
    desc "Sensu Go command line tool and agent"
    homepage "https://sensu.io"
    url "https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/#{version}/sensu-go_#{version}_darwin_amd64.tar.gz"
    sha256 "b0090da83678a9271ffe22f98b31f39d8609652d1af08067ad2086af32140038"
    license "MIT"
    head "https://github.com/asachs01/homebrew-sensu-go.git"

    def install
        bin.install "sensuctl"
        bin.install "sensu-agent"

        # Create directory for Sensu agent config
        (etc/"sensu").mkpath

        # Create a script to download an example agent config
        (etc/"sensu"/"download_sensu_agent.sh").write <<~EOS
        #!/bin/sh
        curl -L https://docs.sensu.io/sensu-go/latest/files/agent.yml -o #{etc}/sensu/agent.yml
        EOS

        chmod "+x", "#{etc}/sensu/download_sensu_agent.sh"
        system "#{etc}/sensu/download_sensu_agent.sh"

        (var/"cache/sensu").mkpath

        run [bin/"sensu-agent", "start", "-c", etc/"sensu/agent.yml", "--cache-dir", var/"cache/sensu"]
        keep_alive true
        working_dir var
        log_path var/"log/sensu-agent.log"
        error_log_path var/"log/sensu-agent.log"
    end

    def post_install
        (var/"cache/sensu").mkpath
    end

    service do
        run [bin/"sensu-agent", "start", "-c", etc/"sensu/agent.yml", "--cache-dir", var/"cache/sensu"]
        keep_alive true
        working_dir var
        log_path var/"log/sensu-agent.log"
        error_log_path var/"log/sensu-agent.log"
    end

    test do
        system "#{bin}/sensuctl", "--help"
        system "#{bin}/sensu-agent version"
    end
end
