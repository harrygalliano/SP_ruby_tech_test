require './lib/receiver'

describe Receiver do 
    before(:each) do 
        @receiver = Receiver.new("spec/test.log")
        end

        describe 'most views creates an array of data' do 
            it 'displays the web pages with the most total views' do 
                expect(@receiver.most_views).not_to be_empty
            end
        end

        describe 'most views has a specified length' do 
            it 'displays the web pages with the most total views' do 
               expect(@receiver.most_views.count).to eq(6)
            end
        end


        describe 'most views stores the correct information' do 
            it 'displays the web pages with the most total views' do 
                expect(@receiver.most_views).to include(["/about/2", ["444.701.448.104"]])
            end
        end
    end