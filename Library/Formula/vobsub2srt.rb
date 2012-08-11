require 'formula'

class Vobsub2srt < Formula
  head 'https://github.com/ruediger/VobSub2SRT.git'
  homepage 'https://github.com/ruediger/VobSub2SRT'

  depends_on 'cmake' => :build
  depends_on 'tesseract'
  depends_on 'ffmpeg'

  def install
    system "./configure", *std_cmake_args
    system "make install"
  end
end
