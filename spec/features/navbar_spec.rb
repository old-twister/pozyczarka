describe 'Navbar' do
  before do
    visit '/'
  end

  it 'has link to All items' do
    expect(page).to have_link('All')
  end

  it 'has link to Active items' do
    expect(page).to have_link('Active')
  end

  it 'has link to Inactive items' do
    expect(page).to have_link('Inactive')
  end

  it 'has link to Borrowed items' do
    expect(page).to have_link('Borrowed')
  end

  it 'has link to On_place items' do
    expect(page).to have_link('On place')
  end
end