package androidx.media3.transformer;

import android.media.MediaCodec;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.muxer.MuxerException;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;

@UnstableApi
public interface Muxer {

    public interface Factory {
        Muxer create(String str) throws MuxerException;

        ImmutableList<String> getSupportedSampleMimeTypes(int i);
    }

    void addMetadataEntry(Metadata.Entry entry);

    int addTrack(Format format) throws MuxerException;

    void close() throws MuxerException;

    void writeSampleData(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) throws MuxerException;
}
