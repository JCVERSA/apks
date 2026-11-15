package androidx.media3.transformer;

import android.media.MediaCodec;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;

@UnstableApi
public interface Codec {

    public interface DecoderFactory {
        Codec createForAudioDecoding(Format format) throws ExportException;

        Codec createForVideoDecoding(Format format, Surface surface, boolean z) throws ExportException;
    }

    public interface EncoderFactory {
        default boolean audioNeedsEncoding() {
            return false;
        }

        Codec createForAudioEncoding(Format format) throws ExportException;

        Codec createForVideoEncoding(Format format) throws ExportException;

        default boolean videoNeedsEncoding() {
            return false;
        }
    }

    Format getConfigurationFormat();

    Format getInputFormat() throws ExportException;

    Surface getInputSurface();

    default int getMaxPendingFrameCount() {
        return 5;
    }

    String getName();

    @Nullable
    ByteBuffer getOutputBuffer() throws ExportException;

    @Nullable
    MediaCodec.BufferInfo getOutputBufferInfo() throws ExportException;

    @Nullable
    Format getOutputFormat() throws ExportException;

    boolean isEnded();

    boolean maybeDequeueInputBuffer(DecoderInputBuffer decoderInputBuffer) throws ExportException;

    void queueInputBuffer(DecoderInputBuffer decoderInputBuffer) throws ExportException;

    void release();

    void releaseOutputBuffer(long j) throws ExportException;

    void releaseOutputBuffer(boolean z) throws ExportException;

    void signalEndOfInputStream() throws ExportException;
}
