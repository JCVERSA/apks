package androidx.media3.extractor;

import androidx.media3.common.util.UnstableApi;

@UnstableApi
public interface ExtractorOutput {
    public static final ExtractorOutput PLACEHOLDER = new ExtractorOutput() {
        @Override
        public void endTracks() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void seekMap(SeekMap seekMap) {
            throw new UnsupportedOperationException();
        }

        @Override
        public TrackOutput track(int i, int i2) {
            throw new UnsupportedOperationException();
        }
    };

    void endTracks();

    void seekMap(SeekMap seekMap);

    TrackOutput track(int i, int i2);
}
