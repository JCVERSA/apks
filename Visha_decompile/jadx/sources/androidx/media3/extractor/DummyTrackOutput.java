package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

@UnstableApi
@Deprecated
public final class DummyTrackOutput implements TrackOutput {
    private final DiscardingTrackOutput discardingTrackOutput = new DiscardingTrackOutput();

    @Override
    public void format(Format format) {
        this.discardingTrackOutput.format(format);
    }

    @Override
    public int sampleData(DataReader dataReader, int i, boolean z) throws IOException {
        return this.discardingTrackOutput.sampleData(dataReader, i, z);
    }

    @Override
    public void sampleMetadata(long j, int i, int i2, int i3, @Nullable TrackOutput.CryptoData cryptoData) {
        this.discardingTrackOutput.sampleMetadata(j, i, i2, i3, cryptoData);
    }

    @Override
    public void sampleData(ParsableByteArray parsableByteArray, int i) {
        this.discardingTrackOutput.sampleData(parsableByteArray, i);
    }

    @Override
    public int sampleData(DataReader dataReader, int i, boolean z, int i2) throws IOException {
        return this.discardingTrackOutput.sampleData(dataReader, i, z, i2);
    }

    @Override
    public void sampleData(ParsableByteArray parsableByteArray, int i, int i2) {
        this.discardingTrackOutput.sampleData(parsableByteArray, i, i2);
    }
}
