package androidx.media3.transformer;

import android.content.Context;
import android.media.MediaCodec;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.video.PlaceholderSurface;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@UnstableApi
public final class ExperimentalAnalyzerModeFactory {

    public static final class DroppingEncoder implements Codec {
        private static final int INTERNAL_BUFFER_SIZE = 8196;
        private static final String TAG = "DroppingEncoder";
        private final ByteBuffer buffer = ByteBuffer.allocateDirect(INTERNAL_BUFFER_SIZE).order(ByteOrder.nativeOrder());
        private final Format configurationFormat;
        private boolean inputStreamEnded;
        private final Surface placeholderSurface;

        public static final class Factory implements Codec.EncoderFactory {
            private final Context context;

            public Factory(Context context) {
                this.context = context;
            }

            @Override
            public Codec createForAudioEncoding(Format format) {
                return new DroppingEncoder(this.context, format);
            }

            @Override
            public Codec createForVideoEncoding(Format format) {
                return new DroppingEncoder(this.context, format);
            }
        }

        public DroppingEncoder(Context context, Format format) {
            this.configurationFormat = format;
            this.placeholderSurface = PlaceholderSurface.newInstance(context, false);
        }

        @Override
        public Format getConfigurationFormat() {
            return this.configurationFormat;
        }

        @Override
        public Format getInputFormat() {
            return this.configurationFormat;
        }

        @Override
        public Surface getInputSurface() {
            return this.placeholderSurface;
        }

        @Override
        public String getName() {
            return TAG;
        }

        @Override
        @Nullable
        public ByteBuffer getOutputBuffer() {
            return null;
        }

        @Override
        @Nullable
        public MediaCodec.BufferInfo getOutputBufferInfo() {
            return null;
        }

        @Override
        @Nullable
        public Format getOutputFormat() {
            return this.configurationFormat;
        }

        @Override
        public boolean isEnded() {
            return this.inputStreamEnded;
        }

        @Override
        public boolean maybeDequeueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
            if (this.inputStreamEnded) {
                return false;
            }
            decoderInputBuffer.data = this.buffer;
            return true;
        }

        @Override
        public void queueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
            Assertions.checkState(!this.inputStreamEnded, "Input buffer can not be queued after the input stream has ended.");
            if (decoderInputBuffer.isEndOfStream()) {
                this.inputStreamEnded = true;
            }
            decoderInputBuffer.clear();
            decoderInputBuffer.data = null;
        }

        @Override
        public void release() {
            this.placeholderSurface.release();
        }

        @Override
        public void releaseOutputBuffer(long j) {
        }

        @Override
        public void signalEndOfInputStream() {
            this.inputStreamEnded = true;
        }

        @Override
        public void releaseOutputBuffer(boolean z) {
        }
    }

    private ExperimentalAnalyzerModeFactory() {
    }

    public static Transformer buildAnalyzer(Context context) {
        return buildAnalyzer(context, new Transformer.Builder(context).build());
    }

    public static Transformer buildAnalyzer(Context context, Transformer transformer) {
        return transformer.buildUpon().experimentalSetTrimOptimizationEnabled(false).experimentalSetMaxFramesInEncoder(-1).setEncoderFactory(new DroppingEncoder.Factory(context)).setMaxDelayBetweenMuxerSamplesMs(C.TIME_UNSET).setMuxerFactory(new NoWriteMuxer.Factory(ImmutableList.of("audio/mp4a-latm"), ImmutableList.of("video/avc"))).setAudioMimeType("audio/mp4a-latm").setVideoMimeType("video/avc").build();
    }
}
