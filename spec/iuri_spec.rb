require 'iuri'

describe IURI do
  subject { IURI.parse "https://foo.com/bar" }

  it "should inspect as IURI" do
    expect(subject.inspect)
      .to match %r{#<IURI::HTTPS:0x\h{14} URL:https://foo.com/bar>}
  end

  describe ".with" do
    it "should be able to override the scheme" do
      expect(subject.with(scheme: 'http').to_s).to eq "http://foo.com/bar"
    end

    it "should be able to override the path" do
      expect(subject.with(path: '/baz').to_s).to eq "https://foo.com/baz"
    end

    it "should be able to override multiple components" do
      expect(subject.with(scheme: 'http', path: '/baz').to_s)
        .to eq "http://foo.com/baz"
    end
  end
end
