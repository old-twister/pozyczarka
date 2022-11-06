
  def full_name(first_name, last_name)
    "#{first_name} #{last_name}"
  end

  describe'test_method' do
    it 'return full name' do
      expect(full_name('Tomek', 'Meus')).to eq 'Tomek Meus'
    end

    it 'return full name based on params' do
      expect(full_name('Jan', 'Kowalski')).to eq 'Jan Kowalski'
    end

  end