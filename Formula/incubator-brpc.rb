# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class IncubatorBrpc < Formula
  desc "Build BRPC"
  homepage "https://github.com/apache/incubator-brpc"
  license ""
  head "https://github.com/apache/incubator-brpc.git", :tag => "0.9.7"

  depends_on "cmake" => :build
  depends_on "openssl"
  depends_on "glog"
  
  stable do
    url "https://github.com/apache/incubator-brpc.git", :using => :git, :tag => "0.9.7"
  end
    
  def install
    system "cmake", ".", "-DWITH_GLOG=ON", *std_cmake_args
    
    system "make", "-j4", "install" 
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test incubator-brpc`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
