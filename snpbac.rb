class Snpbac < Formula
  desc "SNP and variant calling pipeline for bacteria"
  url "https://github.com/lmc297/SNPBac/raw/master/archive/snpbac-1.0.0.tar.gz"
  sha256 "f79165d6518e1246f1e7b70f6ebf71c5a74fe5274bc0d903021ed1fcf257b2f4"
  version "1.0.0"
  
  depends_on "python"
  depends_on "samtools"
  depends_on "freebayes"
  depends_on "vcftools"
  depends_on "bcftools"
  depends_on "gubbins"
  depends_on "bwa"
  depends_on "bowtie2"
  depends_on "raxml"
  
  bottle :unneeded 
   
  def install
    bin.install "snpbac", "make_snpbac_infile.py", "mapping.py", "__init__.py", "call_variants.py", "recombination.py", "snp_matrix.py"
  
  end
end
