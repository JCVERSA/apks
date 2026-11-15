package androidx.media3.transformer;

import android.media.MediaCodec;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;

final class NoWriteMuxer implements Muxer {

    public static final class Factory implements Muxer.Factory {
        private final ImmutableList<String> audioMimeTypes;
        private final ImmutableList<String> videoMimeTypes;

        public Factory(ImmutableList<String> immutableList, ImmutableList<String> immutableList2) {
            this.audioMimeTypes = immutableList;
            this.videoMimeTypes = immutableList2;
        }

        @Override
        public Muxer create(String str) {
            return new NoWriteMuxer();
        }

        @Override
        public ImmutableList<String> getSupportedSampleMimeTypes(int i) {
            if (i == 1) {
                return this.audioMimeTypes;
            }
            return i == 2 ? this.videoMimeTypes : ImmutableList.of();
        }
    }

    @Override
    public void addMetadataEntry(Metadata.Entry entry) {
    }

    @Override
    public int addTrack(Format format) {
        return 0;
    }

    @Override
    public void close() {
    }

    @Override
    public void writeSampleData(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
    }
}
