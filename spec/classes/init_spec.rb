require 'spec_helper'
describe 'digitaloceanubuntulamp' do

  context 'with defaults for all parameters' do
    it { should contain_class('digitaloceanubuntulamp') }
  end
end
