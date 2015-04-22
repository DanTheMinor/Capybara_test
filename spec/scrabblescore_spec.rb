require('rspec')
require('scrabblescore')

describe ('String#scrabblescore') do
  it("returns a scrabble score for a word") do
    expect(("ab").scrabblescore()).to(eq(4))
  end

end
