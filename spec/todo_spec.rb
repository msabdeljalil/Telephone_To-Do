require_relative 'spec_helper'

describe Task do
  describe "#initialize" do

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

    let(:task2) {Task.new(title: "Self improvement", description: "Be nicer to your group")}

    it "reports the task's title" do
      expect(task2.title).to eq("Self improvement")
    end

    it "reports the task's description" do
      expect(task2.description).to eq("Be nicer to your group")
    end

    it "has a default incomplete status" do
      expect(task2.status).to eq("incomplete")
    end

    it "has a created_at timestamp automatically set on initialization" do
      expect(task2.created_at).to be_an_instance_of(Time)
    end

  end
end
