require './lib/caesar_cipher'

describe "#caesar_cipher" do
    it "returns lowercase letters" do
        expect(caesar_cipher('abcde', 5)).to eql('fghij')
    end

    it "returns uppercase letters" do
        expect(caesar_cipher('ABCDE', 5)).to eql('FGHIJ')
    end

    it "returns mix of lowercase and uppercase" do
        expect(caesar_cipher('AbCdE', 6)).to eql('GhIjK')
    end

    it "returns same string with non-letters" do
        expect(caesar_cipher('^&*(', 5)).to eql('^&*(')
    end

    it "returns mix with letters and non-letters" do
        expect(caesar_cipher('A*C*E', 5)).to eql('F*H*J')
    end

    it "returns empty with no input" do
        expect(caesar_cipher('', 5)).to eql('')
    end
end