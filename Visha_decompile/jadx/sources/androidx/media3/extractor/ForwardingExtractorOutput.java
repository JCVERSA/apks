package androidx.media3.extractor;

import androidx.media3.common.util.UnstableApi;

@UnstableApi
public class ForwardingExtractorOutput implements ExtractorOutput {
    private final ExtractorOutput output;

    public ForwardingExtractorOutput(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
    }

    @Override
    public void endTracks() {
        this.output.endTracks();
    }

    @Override
    public void seekMap(SeekMap seekMap) {
        this.output.seekMap(seekMap);
    }

    @Override
    public TrackOutput track(int i, int i2) {
        return this.output.track(i, i2);
    }
}
