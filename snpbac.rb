class Snpbac < Formula
  desc "SNP and variant calling pipeline for bacteria"
  url "https://github.com/lmc297/SNPBac/raw/master/archive/snpbac-1.0.0.tar.gz"
  sha256 "2135ebf849427e3c4c03a0d7d84d9c0831e43c21f90efd357b5f57cc83558a69"
  version "1.0.0"
  
  depends_on :python3
  depends_on "samtools"
  depends_on "freebayes"
  depends_on "vcftools"
  depends_on "bcftools"
  depends_on "gubbins"
  depends_on "bwa"
  depends_on "bowtie2"
  
  resource "biopython" do
    url "http://biopython.org/DIST/biopython-1.69.tar.gz"
    sha256 "169ffa90c3d3ec5678c7a5c99501c0cfeb54c40ca51a619ce6cee5026d3403eb"
  end
  
  bottle :unneeded 
   
  def install
    bin.install "snpbac", "make_snpbac_infile.py"
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    ENV.prepend "PYTHONPATH", libexec, ':'
    ENV.prepend "PYTHONPATH", libexec/"src", ':'
    puts "done with env"
    # for python_package in ["biopython"]
    #resource("biopython").stage do
    #  system "python", *Language::Python.setup_install_args(libexec)
    #end


  end
end