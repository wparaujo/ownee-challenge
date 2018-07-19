require "rails_helper"

RSpec.describe Movie, type: :model do
    subject { described_class.find 1 }
    it "save" do
        movie = Movie.new(name: 'movie test', price: 5.99)
        genre = Genre.new(name: 'horror')
        movie.genre = genre
        expect(movie.save).to eq(true)
    end
    
    it "read" do
        expect(subject).to eq(subject)
    end

    it "update" do
        subject.name = "movie test edited"
        expect(subject.save).to eq(true) 
    end

    it "delete" do
        expect(subject.delete).to eq(subject)
    end
end
