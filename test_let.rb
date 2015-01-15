$count = 0

describe "let! & let" do
  invocation_order = []

  let(:dount) do
    $count += 1
  end

  let(:newm) do
     $count += 1
  end


  it "calls the helper method in a before hook" do
    expect($count).to eq(newm)
  end

  it "calls the helper method again" do
      expect($count).to eq(newm)
  end

  it "calls the helper method third again" do
      #dount
      expect($count).to eq(6)
  end
end



# $count = 0
# describe "let" do
#   let(:count) do 
#   	 $count += 1  
# 	 it "returns 0" do
# 	  expect($count).to eq(1)
#     end
#  end

#   it "returns 0" do
#   	expect($count).to eq(0)
#   end

#   it "returns 1" do
#   	expect($count).to eq(1)
#   end
# end

# $count2 = 0
# describe "let" do
#   let!(:count2) { $count2 += 1 }

#   it "returns 1" do
#     expect($count2).to eq(1)
#   end
# end