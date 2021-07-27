RSpec.describe "Segment 2 - Exercise" do

  describe "Technician" do 
    it "inherits from ActiveRecord::Base" do 
      expect(Technician.superclass).to eq(ActiveRecord::Base)
    end

    it "has the appropriate columns" do 
      columns = Technician.columns
      {
        first_name: :string,
        last_name: :string,
        specialization: :string,
        start_date: :date
      }.each do |column_name, type|
        column = columns.find{|c| c.name == column_name.to_s}
        expect(column).not_to be_nil, "#{column_name} should exist"
        expect(column.sql_type_metadata.type).to eq(type), "#{column_name} should be a #{type} type column"
      end
    end

    it "has many issues" do 
      expect(Technician.new).to respond_to(:issues)
      expect(Technician.new.issues).to respond_to(:build), "make sure that the #issues method is coming from an association macro"
    end

    it "has many computers through issues" do 
      expect(Technician.new).to respond_to(:computers)
      expect(Technician.new.computers).to respond_to(:build), "make sure that the #computers method is coming from an association macro"
    end

  end

  describe "Issue" do 
    it "inherits from ActiveRecord::Base" do 
      expect(Issue.superclass).to eq(ActiveRecord::Base)
    end

    it "has the appropriate columns" do
      columns = Issue.columns
      {
        title: :string,
        description: :text,
        started_at: :datetime,
        resolved: :boolean,
        computer_id: :integer,
        technician_id: :integer,
        created_at: :datetime,
        updated_at: :datetime
      }.each do |column_name, type|
        column = columns.find{|c| c.name == column_name.to_s}
        expect(column).not_to be_nil, "#{column_name} should exist"
        expect(column.sql_type_metadata.type).to eq(type), "#{column_name} should be a #{type} type column"
      end
    end

    it "belongs to a computer" do 
      expect(Issue.new).to respond_to(:computer)
    end

    it "belongs to a technician" do 
      expect(Issue.new).to respond_to(:technician)
    end
  end

  describe "Computer" do 
    it "inherits from ActiveRecord::Base" do 
      expect(Computer.superclass).to eq(ActiveRecord::Base)
    end

    it "has the appropriate columns" do 
      columns = Computer.columns
      {
        brand: :string,
        model: :string,
        screen_size: :float,
        model_year: :integer,
        asleep: :boolean,
        last_backed_up_at: :datetime
      }.each do |column_name, type|
        column = columns.find{|c| c.name == column_name.to_s}
        expect(column).not_to be_nil, "#{column_name} should exist"
        expect(column.sql_type_metadata.type).to eq(type), "#{column_name} should be a #{type} type column"
      end
    end

    it "has many issues" do 
      expect(Computer.new).to respond_to(:issues)
      expect(Computer.new.issues).to respond_to(:build)
    end

    it "has many technicians through issues" do 
      expect(Computer.new).to respond_to(:technicians)
      expect(Computer.new.technicians).to respond_to(:build)
    end
  end

  
end
