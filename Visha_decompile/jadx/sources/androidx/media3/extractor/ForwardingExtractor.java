package androidx.media3.extractor;

import androidx.media3.common.util.UnstableApi;
import java.io.IOException;
import java.util.List;

@UnstableApi
public class ForwardingExtractor implements Extractor {
    private final Extractor delegate;

    public ForwardingExtractor(Extractor extractor) {
        this.delegate = extractor;
    }

    @Override
    public List<SniffFailure> getSniffFailureDetails() {
        return this.delegate.getSniffFailureDetails();
    }

    @Override
    public Extractor getUnderlyingImplementation() {
        return this.delegate.getUnderlyingImplementation();
    }

    @Override
    public void init(ExtractorOutput extractorOutput) {
        this.delegate.init(extractorOutput);
    }

    @Override
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        return this.delegate.read(extractorInput, positionHolder);
    }

    @Override
    public void release() {
        this.delegate.release();
    }

    @Override
    public void seek(long j, long j2) {
        this.delegate.seek(j, j2);
    }

    @Override
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        return this.delegate.sniff(extractorInput);
    }
}
