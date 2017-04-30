describe VanishingVision::Core do
  describe '#vanish' do
    subject { VanishingVision::Core.new(text).vanish }

    context 'There is a blank line at the beginning' do
      let(:text) { "  \n \nhi" }

      it { is_expected.to eq "hi\n" }
    end

    context 'There is a blank line at the end' do
      let(:text) { "hi\n \n  " }

      it { is_expected.to eq "hi\n" }
    end

    context 'There is a space at the beginning of the line' do
      let(:text) { "  hi" }

      it { is_expected.to eq "  hi\n" }
    end

    context 'There is a space at the end of the line' do
      let(:text) { "hi  " }

      it { is_expected.to eq "hi\n" }
    end

    context 'The end of the line ends with a new line' do
      let(:text) { "hi\nhi" }

      it { is_expected.to eq "hi\nhi\n" }
    end

    context 'Duplicate line break at end of line' do
      let(:text) { "hi\n\n" }

      it { is_expected.to eq "hi\n" }
    end

    context 'Including multiple blank lines' do
      let(:text) { "hi\n\n\nhi" }

      it { is_expected.to eq "hi\n\n\nhi\n" }
    end

    context 'Complex text' do
      let(:text) { "  \n  \n\n  \nfoo  \n  bar  \n    baz  \n \n      qoo  oox  \n  \n\n \n" }

      it { is_expected.to eq "foo\n  bar\n    baz\n\n      qoo  oox\n" }
    end
  end
end
