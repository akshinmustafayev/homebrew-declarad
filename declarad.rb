class Declarad < Formula
  desc "Infrastructure-as-code for Active Directory"
  homepage "https://github.com/akshinmustafayev/declarad"
  version "0.3.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/akshinmustafayev/declarad/releases/download/0.3.0/declarad-0.3.0-osx-arm64-portable.zip"
    sha256 "4f44f7ba1f396233cf98830cd12320430b6fad62247f5e0c517e5516161e43c9"
  else
    url "https://github.com/akshinmustafayev/declarad/releases/download/0.3.0/declarad-0.3.0-osx-x64-portable.zip"
    sha256 "09bbf5790b0cdb1a16a91a4793e5ae10fce17f9792ce23bf001068e5d3a4519b"
  end

  def install
    bin.install "declarad"
  end

  test do
    assert_match "declarad", shell_output("#{bin}/declarad --version")
  end
end
