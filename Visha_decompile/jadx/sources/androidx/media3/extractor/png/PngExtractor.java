package androidx.media3.extractor.png;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SingleSampleExtractor;
import java.io.IOException;

@UnstableApi
public final class PngExtractor implements Extractor {
    private static final int PNG_FILE_SIGNATURE = 35152;
    private static final int PNG_FILE_SIGNATURE_LENGTH = 2;
    private final SingleSampleExtractor imageExtractor = new SingleSampleExtractor(PNG_FILE_SIGNATURE, 2, "image/png");

    @Override
    public void init(ExtractorOutput extractorOutput) {
        this.imageExtractor.init(extractorOutput);
    }

    @Override
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        return this.imageExtractor.read(extractorInput, positionHolder);
    }

    @Override
    public void release() {
    }

    @Override
    public void seek(long j, long j2) {
        this.imageExtractor.seek(j, j2);
    }

    @Override
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        return this.imageExtractor.sniff(extractorInput);
    }
}
