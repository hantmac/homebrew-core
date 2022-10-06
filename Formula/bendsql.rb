class Bendsql < Formula
  desc "Work seamlessly with Databend Cloud from the command line."
  homepage "https://github.com/databendcloud/bendsql"
  url "https://github.com/databendcloud/bendsql/releases/download/v0.0.2/bendsql-darwin-amd64.tar.gz"
  sha256 "25c1a2a4e1922261535325634a939fe42a0ffcc12ae6c262ed7021dab611f622"
  license "MIT"
  head "https://github.com/databendcloud/bendsql.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "make test"
  end
end