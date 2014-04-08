require 'spec_helper'

describe Line do
  it { should validate_presence_of :number }

  it { should have_many(:stops) }
  # it { should have_many :stations } this works too but is less specific than ...
  it { should have_many(:stations).through(:stops) }
end
