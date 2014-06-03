require_relative 'spec_helper'

describe Task do
  describe "#initialize" do
    context "initializes with title, description, status, and timestamp" do

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

    context "initializes with default incomplete status and timestamp" do

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
        # expect(task2.created_at).to be_an_instance_of(Time)
        expect(task2.instance_variable_get(:@created_at)).to be_an_instance_of(Time)
      end
    end
  end

  describe "#mark_as_complete!" do
    let(:task) {Task.new(title: "Learn git", description: "After each commit run 'git push origin master --force'")}
    it "sets status to complete" do
      task.mark_as_complete!
      expect(task.status).to eq("complete")
    end
  end

  describe "#mark_as_incomplete!" do
    it "sets status to incomplete" do
      task.mark_as_incomplete!
      expect(task.status).to eq("incomplete")
    end
  end

end
