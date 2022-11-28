require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'instance methods' do
    describe '#laundry?' do
      it 'return true when title is laundry' do
        task = Task.create!(title: 'laundry', description: 'clean clothes, please its everywhere')
        
        expect(task.laundry?).to be true
      end
      
      it 'returns true when description is laundry' do
        task = Task.create!(title: 'run the washing machine', description: 'laundry')

        expect(task.laundry?).to be true
      end

      it 'return false if title or description dont have laundry' do
        task = Task.create!(title: 'cook dinner', description: 'make it tasty')

        expect(task.laundry?).to be false
      end

      it 'returns true when title includes laundry' do
        task = Task.create!(title: 'run the laundry machine', description: 'do the work bruh')

        expect(task.laundry?).to be true
      end
      
      it 'is case insensitive with word laundry' do
        task = Task.create!(title: 'run the lAunDry machine', description: 'do the work bruh')

        expect(task.laundry?).to be true
      end

      it 'is case insensitive with word laundry' do
        task = Task.create!(title: 'run the machine', description: 'do lAunDry the work bruh')

        expect(task.laundry?).to be true
      end

      it 'when description contains the word laundry' do
        task = Task.create!(title: 'run the stupid machine', description: 'do the laundry bruh')

        expect(task.laundry?).to be true
      end

    end
  end
end