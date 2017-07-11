class Snpbac < Formula
  desc "hello world"
  url "https://github.com/lmc297/BTyper/raw/master/archive/btyper-2.0.0.tar.gz"
  sha256 "2135ebf849427e3c4c03a0d7d84d9c0831e43c21f90efd357b5f57cc83558a69"
  version "2.0.0"
  
  depends_on :python
  depends_on "blast"
  depends_on "spades"
  depends_on "sratoolkit"
  
  resource "biopython" do
    url "http://biopython.org/DIST/biopython-1.69.tar.gz"
    sha256 "169ffa90c3d3ec5678c7a5c99501c0cfeb54c40ca51a619ce6cee5026d3403eb"
  end
  
  bottle :unneeded 
   
  def install
    bin.install "btyper", "seq_virulence_db", "seq_mlst_db", "seq_panC_db", "seq_rpoB_db", "seq_16s_db", "seq_amr_db"
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    ENV.prepend "PYTHONPATH", libexec, ':'
    ENV.prepend "PYTHONPATH", libexec/"src", ':'
    puts "done with env"
    # for python_package in ["biopython"]
    resource("biopython").stage do
      system "python", *Language::Python.setup_install_args(libexec)
    end


  end
end
