# frozen_string_literal: true

RSpec.describe 'median' do
  it 'keeps track of the median while we add numbers to an array' do
    median = Median.new(array: [])

    aggregate_failures do
      expect(median.value).to eq(nil)

      median.add(49)
      expect(median.value).to eq(49)

      median.add(2)
      expect(median.value).to eq(25.5)

      median.add(7)
      expect(median.value).to eq(7.0)

      median.add(11)
      expect(median.value).to eq(9.0)

      median.add(38)
      expect(median.value).to eq(11)
    end
  end
end
