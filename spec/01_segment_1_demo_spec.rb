RSpec.describe "Segment 1 demo" do 
  let(:lennon) {Dog.create(name: "Lennon Snow", age: "11 months", breed: "Pomeranian")}
  let(:morning_walk) {Walk.create(time: DateTime.now)}

  describe "Dog" do 
    it "has many dog walks" do 
      dog_walk = lennon.dog_walks.create(number_two: true, walk: morning_walk)
      expect(lennon.dog_walks).to include(dog_walk)
    end

    it "has many walks through dog walks" do 
      dog_walk = lennon.dog_walks.create(number_two: true, walk: morning_walk)
      expect(lennon.walks).to include(morning_walk)
    end
  end

  describe "DogWalk" do 
    before(:each) do 
      @dw = DogWalk.create(dog: lennon, walk: morning_walk)
    end

    it "belongs to a dog" do 
      expect(@dw.dog).to eq(lennon)
    end 

    it "belongs to a walk" do 
      expect(@dw.walk).to eq(morning_walk)
    end
  end

  describe "Walk" do 
    it "has many dog walks" do 
      dog_walk = morning_walk.dog_walks.create(number_two: true, dog: lennon)
      expect(morning_walk.dog_walks).to include(dog_walk)
    end

    it "has many dogs through dog walks" do 
      dog_walk = morning_walk.dog_walks.create(number_two: true, dog: lennon)
      expect(morning_walk.dogs).to include(lennon)
    end
  end
end