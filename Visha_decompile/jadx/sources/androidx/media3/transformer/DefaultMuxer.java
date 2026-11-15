package androidx.media3.transformer;

import android.media.MediaCodec;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.muxer.MuxerException;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;

@UnstableApi
public final class DefaultMuxer implements Muxer {
    public static final String MUXER_NAME = FrameworkMuxer.MUXER_NAME;
    private final Muxer muxer;

    @Override
    public void addMetadataEntry(Metadata.Entry entry) {
        this.muxer.addMetadataEntry(entry);
    }

    @Override
    public int addTrack(Format format) throws MuxerException {
        return this.muxer.addTrack(format);
    }

    @Override
    public void close() throws MuxerException {
        this.muxer.close();
    }

    @Override
    public void writeSampleData(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) throws MuxerException {
        this.muxer.writeSampleData(i, byteBuffer, bufferInfo);
    }

    public static final class Factory implements Muxer.Factory {
        private final FrameworkMuxer.Factory muxerFactory;

        public Factory() {
            this.muxerFactory = new FrameworkMuxer.Factory();
        }

        @Override
        public Muxer create(String str) throws MuxerException {
            return new DefaultMuxer(this.muxerFactory.create(str));
        }

        @Override
        public ImmutableList<String> getSupportedSampleMimeTypes(int i) {
            return this.muxerFactory.getSupportedSampleMimeTypes(i);
        }

        public Factory setVideoDurationUs(long j) {
            this.muxerFactory.setVideoDurationUs(j);
            return this;
        }

        @Deprecated
        public Factory(long j) {
            this.muxerFactory = new FrameworkMuxer.Factory().setVideoDurationUs(Util.msToUs(j));
        }
    }

    private DefaultMuxer(Muxer muxer) {
        this.muxer = muxer;
    }
}
