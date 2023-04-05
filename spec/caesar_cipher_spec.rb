require './caesar_cipher'

describe "cipher" do
  it "Works for simple words" do 
    expect(cipher('hello', 2)).to eql('jgnnq')
  end

  it "works for capital letters" do
    expect(cipher('HELLO', 2)).to eql('JGNNQ')
  end

  it "works for multi-word strings" do
    expect(cipher('Hello world', 5)).to eql('Mjqqt btwqi')
  end

  it "don't modify ponctuation signs" do
    expect(cipher('Hello-world?!', 5)).to eql('Mjqqt-btwqi?!')
  end

  it "don't modify numbers" do
    expect(cipher('231', 5)).to eql('231')
  end

end
