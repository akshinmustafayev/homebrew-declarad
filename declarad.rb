class Declarad < Formula
  desc "Infrastructure-as-code for Active Directory"
  homepage "https://github.com/akshinmustafayev/declarad"
  version "0.4.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/akshinmustafayev/declarad/releases/download/0.4.0/declarad-0.4.0-osx-arm64-portable.zip"
    sha256 "1f305b381e68560d65399bb6bf251dbd2ba03934b3d6c2ba76c3ad767b9afef2"
  else
    url "https://github.com/akshinmustafayev/declarad/releases/download/0.4.0/declarad-0.4.0-osx-x64-portable.zip"
    sha256 "3a681537607f77c97aec1a79b921e3ff5d8adbfdcdf299f66e216c185fdfdcc5"
  end

  def install
    bin.install "declarad"
  end

  test do
    assert_match "declarad", shell_output("#{bin}/declarad --version")
  end
end
