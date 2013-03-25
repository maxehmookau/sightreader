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

describe '#bars=' do

  it 'should fill the @rhythm Array with the correct number of dashes' do
    pattern = Sightreader::Pattern.new
    pattern.bars = 1
    pattern.rhythm.should eq(['-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-'])
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
    pattern.toggle_beat(bar: 1, beat: 1)
    pattern.rhythm.should eq(['x','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-'])
  end

  it 'should turn on a beat when off (2)' do
    pattern = Sightreader::Pattern.new
    pattern.bars = 1
    pattern.toggle_beat(bar: 1, beat: 4)
    pattern.rhythm.should eq(['-', '-', '-', 'x', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-'])
  end

  it 'should turn on a beat when off (3)' do
    pattern = Sightreader::Pattern.new
    pattern.bars = 1
    pattern.toggle_beat(bar: 1, beat: 4)
    pattern.toggle_beat(bar: 1, beat: 10)
    pattern.rhythm.should eq(['-', '-', '-','x', '-','-', '-', '-', '-', 'x', '-', '-', '-', '-', '-', '-'])
  end

end