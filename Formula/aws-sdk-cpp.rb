# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class  AwsSdkCpp  < Formula
  desc "Build AwsSdkCpp"
  homepage "https://github.com/aws/aws-sdk-cpp"
  license ""
  head "https://github.com/aws/aws-sdk-cpp.git", :tag => "tags/1.7.150"

  depends_on "cmake" => :build
  depends_on "openssl"
  depends_on "glog"
  
  def install
    system "cmake", 
          ".",
          "-DENABLE_TESTING=OFF",
          "-DAUTORUN_UNIT_TESTS=OFF", 
          "-DCMAKE_BUILD_TYPE=Release",
          "'-DBUILD_ONLY=s3;kinesis;transfer'", 
          "-DBUILD_SHARED_LIBS=OFF",
          "-DCMAKE_CXX_FLAGS='-Wno-deprecated-declarations'",
          *std_cmake_args
    
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
