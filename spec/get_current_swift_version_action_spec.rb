describe Fastlane::Actions::GetCurrentSwiftVersionAction do
  describe 'Test' do
    it 'prints a correct Swift version' do
      version = Fastlane::Actions::GetCurrentSwiftVersionAction.run(nil)
      expect(version).to eq("4.0.2")
    end
  end
end
