require 'spec_helper'

describe '#initialize' do

  it 'should should create a Pattern object' do
    pattern = Sightreader::Pattern.new
    expect(pattern).to be_a(Sightreader::Pattern)
  end

  it 'should initlize an empty array to hold the pattern' do
    pattern = Sightreader::Pattern.new
    pattern.rhythm.should be_empty
  end
  
end

describe '#add_bar' do

  it 'should increase the size of @rhythm by 1' do
    pattern = Sightreader::Pattern.new
    pattern.add_bar
    pattern.rhythm.length.should eq(1)
  end

  it 'should populate the empty bar with dashes' do
    pattern = Sightreader::Pattern.new
    pattern.add_bar
    pattern.rhythm[0].should eq(['-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-'])
  end

end

describe '#bars=' do

  it 'should fill the @rhythm Array with the correct number of dashes' do
    pattern = Sightreader::Pattern.new
    pattern.bars = 1
    pattern.rhythm.should eq([['-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-']])
  end

  it 'should set @bars' do
    pattern = Sightreader::Pattern.new
    pattern.bars = 23
    pattern.bars.should eq 23
  end

end

describe '#toggle_beat' do

  it 'should turn on a beat when off' do
    pattern = Sightreader::Pattern.new
    pattern.bars = 1
    pattern.toggle_beat(1, 1)
    pattern.rhythm.should eq([['x','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-']])
  end

  it 'should turn on a beat when off (2)' do
    pattern = Sightreader::Pattern.new
    pattern.bars = 1
    pattern.toggle_beat(1, 4)
    pattern.rhythm.should eq([['-', '-', '-', 'x', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-']])
  end

  it 'should turn on a beat when off (3)' do
    pattern = Sightreader::Pattern.new
    pattern.bars = 1
    pattern.toggle_beat(1, 4)
    pattern.toggle_beat(1, 10)
    pattern.rhythm.should eq([['-', '-', '-','x', '-','-', '-', '-', '-', 'x', '-', '-', '-', '-', '-', '-']])
  end

  it 'should turn a beat off when on' do
    pattern = Sightreader::Pattern.new
    pattern.bars = 1
    pattern.toggle_beat(1, 4)
    pattern.rhythm.should eq([['-', '-', '-','x', '-','-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-']])
    pattern.toggle_beat(1, 4)
    pattern.rhythm.should eq([['-', '-', '-','-', '-','-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-']])
  end

end
