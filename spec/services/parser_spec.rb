describe Parser, focus: true do
  let(:input) { '4501 222321 Соколов Орел Васильевич г. Москва Московской обл.' }

  let(:result) { Parser.parse input }
  it do
    expect(result).to eq nil
  end
end
