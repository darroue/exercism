=begin
Write your code for the 'Protein Translation' exercise in this file. Make the tests in
`protein_translation_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/protein-translation` directory.
=end

class InvalidCodonError < StandardError; end

module Translation
  STOP = "STOP"
  DATA = {
    "AUG" => "Methionine",
"UUU" => "Phenylalanine",
    "UUC" => "Phenylalanine",
"UUA" => "Leucine",
    "UUG"	 => "Leucine",
"UCU" => "Serine",
    "UCC" => "Serine",
    "UCA" => "Serine",
    "UCG" => "Serine",
"UAU" => "Tyrosine",
    "UAC" => "Tyrosine",
"UGU" => "Cysteine",
    "UGC" => "Cysteine",
"UGG" => "Tryptophan",
    "UAA" => STOP,
    "UAG" => STOP,
    "UGA" => STOP,
  }

  
  def self.of_rna(strand)
    name = []
    strand.chars.each_slice(3) do |slice|
      key = slice.join
      value = DATA[key]

      raise InvalidCodonError if value.nil?

      break if value == STOP
      
      name << value
    end

    name
  end
end