package androidx.media3.extractor;

import androidx.media3.common.util.UnstableApi;

@UnstableApi
public final class NoOpExtractorOutput implements ExtractorOutput {
    @Override
    public void endTracks() {
    }

    @Override
    public void seekMap(SeekMap seekMap) {
    }

    @Override
    public TrackOutput track(int i, int i2) {
        return new DiscardingTrackOutput();
    }
}
