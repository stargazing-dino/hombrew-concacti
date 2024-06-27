class Concacti < Formula
    desc "Concatenate files in a directory"
    homepage "https://github.com/stargazing-dino/concacti"
    version "1.0.0"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/stargazing-dino/concacti/releases/download/v1.0.0/concacti-v1.0.0-aarch64-apple-darwin"
        sha256 "473ac3012879f4c5b558543119fba412c73a30d448935dc4f269d2b187bf66a8"
      else
        url "https://github.com/stargazing-dino/concacti/releases/download/v1.0.0/concacti-v1.0.0-x86_64-apple-darwin"
        sha256 "4c2ce50b64b7625950c89650b37e95a2963f5e6270c756a8959539bed699994c"
      end
    end

    def install
      bin.install "concacti-v#{version}-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}-apple-darwin" => "concacti"
    end

    test do
      system "#{bin}/concacti", "--version"
    end
  end