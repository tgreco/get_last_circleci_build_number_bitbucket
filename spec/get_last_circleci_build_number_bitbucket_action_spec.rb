describe Fastlane::Actions::GetLastCircleciBuildNumberBitbucketAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The get_last_circleci_build_number_bitbucket plugin is working!")

      Fastlane::Actions::GetLastCircleciBuildNumberBitbucketAction.run(nil)
    end
  end
end
