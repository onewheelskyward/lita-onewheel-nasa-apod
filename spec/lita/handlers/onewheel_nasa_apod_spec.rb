require 'spec_helper'

describe Lita::Handlers::OnewheelNasaApod, lita_handler: true do
  it { is_expected.to route('cosmos') }
  it { is_expected.to route('Good morning.') }

  it 'will return a random garfield comic' do
    send_message 'you know the cosmos'
    expect(replies.last).to include('http://apod.nasa.gov/apod/image/1610/GhostAurora_Takasaka_960.jpg')
  end
end
