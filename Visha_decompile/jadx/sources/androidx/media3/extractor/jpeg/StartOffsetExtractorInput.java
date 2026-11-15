package androidx.media3.extractor.jpeg;

import androidx.media3.common.util.Assertions;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ForwardingExtractorInput;

final class StartOffsetExtractorInput extends ForwardingExtractorInput {
    private final long startOffset;

    public StartOffsetExtractorInput(ExtractorInput extractorInput, long j) {
        super(extractorInput);
        Assertions.checkArgument(extractorInput.getPosition() >= j);
        this.startOffset = j;
    }

    @Override
    public long getLength() {
        return super.getLength() - this.startOffset;
    }

    @Override
    public long getPeekPosition() {
        return super.getPeekPosition() - this.startOffset;
    }

    @Override
    public long getPosition() {
        return super.getPosition() - this.startOffset;
    }

    @Override
    public <E extends Throwable> void setRetryPosition(long j, E e) throws Throwable {
        super.setRetryPosition(j + this.startOffset, e);
    }
}
