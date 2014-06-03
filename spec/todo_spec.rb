require_relative 'spec_helper'

describe Task do
  describe "#title" do

    let(:task) {Task.new(title: "Bull shit", description: "Drive all the bulls out of Ireland", status: "incomplete", created_at: Time.now)}

    it "reports the task's title" do
      expect(task.title).to eq("Bull shit")
    end
    it "reports the task's description" do
      expect(task.description).to eq("Drive all the bulls out of Ireland")
    end
    it "reports the task's status" do
      expect(task.status).to eq("incomplete")
    end
    it "reports when it was created" do
      expect(task.created_at).to be_an_instance_of(Time)
    end

  end
end
