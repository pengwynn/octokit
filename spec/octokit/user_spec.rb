require 'helper'

describe Octokit::User do
  describe ".path" do
    context "with no user passed" do
      it "returns default path" do
        path = Octokit::User.path nil
        expect(path).to eq 'user'
      end
    end

    context "with login" do
      it "returns login api path" do
        path = Octokit::User.path 'pengwynn'
        expect(path).to eq 'users/pengwynn'
      end

      it "escapes the login" do
        path = Octokit::User.path 'hu[bot]'
        expect(path).to eq 'users/hu%5Bbot%5D'
      end
    end # with login

    context "with id" do
      it "returns id api path" do
        path = Octokit::User.path 865
        expect(path).to eq 'user/865'
      end
    end # with id
  end # .path
end # Octokit::User
