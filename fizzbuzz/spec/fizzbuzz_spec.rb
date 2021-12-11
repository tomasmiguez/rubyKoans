require 'fizzbuzz'

describe 'fizzbuzz' do 
  it 'devuelve "fizz" cuando le pasan 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end
end