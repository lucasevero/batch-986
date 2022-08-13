# TDD - Test Driven Development
# 1. Write some tests
# 2. Code and make then green
# 3. Refactor and 'style'
require_relative "../encrypt"

describe "#encrypt" do
  it "Should return a empty string if no string is given" do
    expected = ""
    actual = encrypt("")

    expect(actual).to eq(expected)
  end

  it "should encrypt the string with each letter being switched by the letter three position before" do
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")

    expect(actual).to eq(expected)
  end
end
