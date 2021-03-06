include WrappityWrap

RSpec.describe WrappityWrap do

  it 'has a version number' do
    expect(WrappityWrap::VERSION).not_to be nil
  end

  it 'returns "" when given nil' do
    expect(WrappityWrap.wrap(nil, 4)).to eq("")
  end

  it 'returns "" when given empty string' do
    expect(WrappityWrap.wrap("", 4)).to eq("")
  end

  it 'returns wrapped string when string is shorter than column' do
    expect(WrappityWrap.wrap("word", 6)).to eq("word")
  end

  it 'returns wrapped string when string has a space before the column' do
    expect(WrappityWrap.wrap("long word", 6)).to eq("long\nword")
  end

  it 'returns wrapped string when space occurs at column' do
    expect(WrappityWrap.wrap("long word", 5)).to eq("long\nword")
  end

  it 'returns wrapped string when space after the column' do
    expect(WrappityWrap.wrap("verylong word", 4)).to eq("very\nlong\nword")
  end

end
