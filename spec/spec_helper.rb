# -*- coding: utf-8 -*-
require 'rspec'

shared_examples "should equal 'H24.4.29'" do
  it { subject.to_era.should eq "H24.4.29" }

  context "with '%o%E.%m.%d'" do
    it { subject.to_era("%o%E.%m.%d").should eq "H24.4.29" }
  end
end

shared_examples "should equal '平成24年4月29日'" do
  context "with '%O%E年%m月%d日'" do
    it { subject.to_era("%O%E年%m月%d日").should eq "平成24年4月29日" }
  end
end

shared_examples "should equal '24.4.29'" do
  context "with '%E.%m.%d'" do
    it { subject.to_era("%E.%m.%d").should eq "24.4.29" }
  end
end

shared_examples "should equal 'H1.1.8'" do
  it { subject.to_era.should eq "H1.1.8" }
end

shared_examples "should equal 'S64.1.7'" do
  it { subject.to_era.should eq "S64.1.7" }
end

shared_examples "should equal '昭和64.1.7'" do
  it { subject.to_era("%O%E.%m.%d").should eq "昭和64.1.7" }
end

shared_examples "should equal 'S1.12.25'" do
  it { subject.to_era.should eq "S1.12.25" }
end

shared_examples "should equal 'T15.12.24'" do
  it { subject.to_era.should eq "T15.12.24" }
end

shared_examples "should equal 'T1.7.30'" do
  it { subject.to_era.should eq "T1.7.30" }
end

shared_examples "should equal '大正1.7.30'" do
  it { subject.to_era("%O%E.%m.%d").should eq "大正1.7.30" }
end

shared_examples "should equal 'M45.7.29'" do
  it { subject.to_era.should eq "M45.7.29" }
end

shared_examples "should equal '明治45.7.29'" do
  it { subject.to_era("%O%E.%m.%d").should eq "明治45.7.29" }
end

shared_examples "should equal 'M1.9.8'" do
  it { subject.to_era.should eq "M1.9.8" }
end
