package androidx.media3.muxer;

import android.media.MediaCodec;
import android.util.SparseArray;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

@UnstableApi
public final class FragmentedMp4Muxer implements AutoCloseable {
    public static final long DEFAULT_FRAGMENT_DURATION_MS = 2000;
    private final FragmentedMp4Writer fragmentedMp4Writer;
    private final MetadataCollector metadataCollector;
    private final SparseArray<Track> trackIdToTrack;
    public static final ImmutableList<String> SUPPORTED_VIDEO_SAMPLE_MIME_TYPES = ImmutableList.of(MimeTypes.VIDEO_AV1, "video/3gpp", "video/avc", "video/hevc", "video/mp4v-es", "video/x-vnd.on2.vp9", MimeTypes.VIDEO_APV);
    public static final ImmutableList<String> SUPPORTED_AUDIO_SAMPLE_MIME_TYPES = ImmutableList.of("audio/mp4a-latm", "audio/3gpp", "audio/amr-wb", "audio/opus", "audio/vorbis", "audio/raw");

    public static final class Builder {
        private final OutputStream outputStream;
        private long fragmentDurationMs = 2000;
        private boolean sampleCopyEnabled = true;

        public Builder(OutputStream outputStream) {
            this.outputStream = outputStream;
        }

        public FragmentedMp4Muxer build() {
            return new FragmentedMp4Muxer(this.outputStream, this.fragmentDurationMs, this.sampleCopyEnabled);
        }

        public Builder setFragmentDurationMs(long j) {
            this.fragmentDurationMs = j;
            return this;
        }

        public Builder setSampleCopyingEnabled(boolean z) {
            this.sampleCopyEnabled = z;
            return this;
        }
    }

    public void addMetadataEntry(Metadata.Entry entry) {
        Assertions.checkArgument(MuxerUtil.isMetadataSupported(entry), "Unsupported metadata");
        this.metadataCollector.addMetadata(entry);
    }

    public int addTrack(Format format) {
        Track trackAddTrack = this.fragmentedMp4Writer.addTrack(1, format);
        this.trackIdToTrack.append(trackAddTrack.id, trackAddTrack);
        return trackAddTrack.id;
    }

    @Override
    public void close() throws MuxerException {
        try {
            this.fragmentedMp4Writer.close();
        } catch (IOException e) {
            throw new MuxerException("Failed to close the muxer", e);
        }
    }

    public void writeSampleData(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) throws MuxerException {
        try {
            this.fragmentedMp4Writer.writeSampleData(this.trackIdToTrack.get(i), byteBuffer, bufferInfo);
        } catch (IOException e) {
            throw new MuxerException("Failed to write sample for presentationTimeUs=" + bufferInfo.presentationTimeUs + ", size=" + bufferInfo.size, e);
        }
    }

    private FragmentedMp4Muxer(OutputStream outputStream, long j, boolean z) {
        Assertions.checkNotNull(outputStream);
        MetadataCollector metadataCollector = new MetadataCollector();
        this.metadataCollector = metadataCollector;
        this.fragmentedMp4Writer = new FragmentedMp4Writer(outputStream, metadataCollector, AnnexBToAvccConverter.DEFAULT, j, z);
        this.trackIdToTrack = new SparseArray<>();
    }
}
