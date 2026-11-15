package androidx.media3.transformer;

import android.content.Context;
import android.media.MediaCodec;
import android.util.Pair;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.SurfaceInfo;
import androidx.media3.common.VideoCompositorSettings;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoGraph;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;
import androidx.media3.decoder.DecoderInputBuffer;
import com.google.common.util.concurrent.MoreExecutors;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Objects;

final class VideoSampleExporter extends SampleExporter {
    private final DecoderInputBuffer encoderOutputBuffer;
    private final EncoderWrapper encoderWrapper;
    private volatile long finalFramePresentationTimeUs;
    private boolean hasMuxedTimestampZero;
    private final long initialTimestampOffsetUs;
    private long lastMuxerInputBufferTimestampUs;
    private final VideoGraphWrapper videoGraph;

    @VisibleForTesting
    public static final class EncoderWrapper {
        private static final String DEFAULT_OUTPUT_MIME_TYPE = "video/hevc";
        private volatile Codec encoder;
        private final Codec.EncoderFactory encoderFactory;
        private SurfaceInfo encoderSurfaceInfo;
        private final FallbackListener fallbackListener;
        private final int hdrModeAfterFallback;
        private final Format inputFormat;
        private final List<String> muxerSupportedMimeTypes;
        private volatile int outputRotationDegrees;
        private final boolean portraitEncodingEnabled;
        private volatile boolean releaseEncoder;
        private final String requestedOutputMimeType;
        private final TransformationRequest transformationRequest;

        public EncoderWrapper(Codec.EncoderFactory encoderFactory, Format format, boolean z, List<String> list, TransformationRequest transformationRequest, FallbackListener fallbackListener) {
            Assertions.checkArgument(format.colorInfo != null);
            this.encoderFactory = encoderFactory;
            this.inputFormat = format;
            this.portraitEncodingEnabled = z;
            this.muxerSupportedMimeTypes = list;
            this.transformationRequest = transformationRequest;
            this.fallbackListener = fallbackListener;
            Pair<String, Integer> requestedOutputMimeTypeAndHdrModeAfterFallback = getRequestedOutputMimeTypeAndHdrModeAfterFallback(format, transformationRequest);
            this.requestedOutputMimeType = (String) requestedOutputMimeTypeAndHdrModeAfterFallback.first;
            this.hdrModeAfterFallback = ((Integer) requestedOutputMimeTypeAndHdrModeAfterFallback.second).intValue();
        }

        private static TransformationRequest createSupportedTransformationRequest(TransformationRequest transformationRequest, boolean z, Format format, Format format2, int i) {
            TransformationRequest.Builder builderBuildUpon = transformationRequest.buildUpon();
            if (transformationRequest.hdrMode != i) {
                builderBuildUpon.setHdrMode(i);
            }
            if (!Objects.equals(format.sampleMimeType, format2.sampleMimeType)) {
                builderBuildUpon.setVideoMimeType(format2.sampleMimeType);
            }
            if (z) {
                int i2 = format.width;
                int i3 = format2.width;
                if (i2 != i3) {
                    builderBuildUpon.setResolution(i3);
                }
            } else {
                int i4 = format.height;
                int i5 = format2.height;
                if (i4 != i5) {
                    builderBuildUpon.setResolution(i5);
                }
            }
            return builderBuildUpon.build();
        }

        private static Pair<String, Integer> getRequestedOutputMimeTypeAndHdrModeAfterFallback(Format format, TransformationRequest transformationRequest) {
            String str = (String) Assertions.checkNotNull(format.sampleMimeType);
            String str2 = transformationRequest.videoMimeType;
            if (str2 != null) {
                str = str2;
            } else if (MimeTypes.isImage(str)) {
                str = "video/hevc";
            }
            return TransformerUtil.getOutputMimeTypeAndHdrModeAfterFallback(transformationRequest.hdrMode, str, format.colorInfo);
        }

        private ColorInfo getSupportedInputColor() {
            if ((!ColorInfo.isTransferHdr(this.inputFormat.colorInfo) || this.hdrModeAfterFallback == 0) && !ColorInfo.SRGB_BT709_FULL.equals(this.inputFormat.colorInfo)) {
                return (ColorInfo) Assertions.checkNotNull(this.inputFormat.colorInfo);
            }
            return ColorInfo.SDR_BT709_LIMITED;
        }

        public int getHdrModeAfterFallback() {
            return this.hdrModeAfterFallback;
        }

        @Nullable
        public ByteBuffer getOutputBuffer() throws ExportException {
            if (this.encoder != null) {
                return this.encoder.getOutputBuffer();
            }
            return null;
        }

        @Nullable
        public MediaCodec.BufferInfo getOutputBufferInfo() throws ExportException {
            if (this.encoder != null) {
                return this.encoder.getOutputBufferInfo();
            }
            return null;
        }

        @Nullable
        public Format getOutputFormat() throws ExportException {
            if (this.encoder == null) {
                return null;
            }
            Format outputFormat = this.encoder.getOutputFormat();
            return (outputFormat == null || this.outputRotationDegrees == 0) ? outputFormat : outputFormat.buildUpon().setRotationDegrees(this.outputRotationDegrees).build();
        }

        @Nullable
        public SurfaceInfo getSurfaceInfo(int i, int i2) throws ExportException {
            if (this.releaseEncoder) {
                return null;
            }
            SurfaceInfo surfaceInfo = this.encoderSurfaceInfo;
            if (surfaceInfo != null) {
                return surfaceInfo;
            }
            if (i < i2 && !this.portraitEncodingEnabled) {
                this.outputRotationDegrees = 90;
                i2 = i;
                i = i2;
            }
            if (this.inputFormat.rotationDegrees % 180 == this.outputRotationDegrees % 180) {
                this.outputRotationDegrees = this.inputFormat.rotationDegrees;
            }
            Format formatBuild = new Format.Builder().setWidth(i).setHeight(i2).setRotationDegrees(0).setFrameRate(this.inputFormat.frameRate).setSampleMimeType(this.requestedOutputMimeType).setColorInfo(getSupportedInputColor()).setCodecs(this.inputFormat.codecs).build();
            this.encoder = this.encoderFactory.createForVideoEncoding(formatBuild.buildUpon().setSampleMimeType(SampleExporter.findSupportedMimeTypeForEncoderAndMuxer(formatBuild, this.muxerSupportedMimeTypes)).build());
            Format configurationFormat = this.encoder.getConfigurationFormat();
            this.fallbackListener.onTransformationRequestFinalized(createSupportedTransformationRequest(this.transformationRequest, this.outputRotationDegrees != 0, formatBuild, configurationFormat, this.hdrModeAfterFallback));
            this.encoderSurfaceInfo = new SurfaceInfo(this.encoder.getInputSurface(), configurationFormat.width, configurationFormat.height, this.outputRotationDegrees, true);
            if (this.releaseEncoder) {
                this.encoder.release();
            }
            return this.encoderSurfaceInfo;
        }

        public boolean isEnded() {
            return this.encoder != null && this.encoder.isEnded();
        }

        public void release() {
            if (this.encoder != null) {
                this.encoder.release();
            }
            this.releaseEncoder = true;
        }

        public void releaseOutputBuffer(boolean z) throws ExportException {
            if (this.encoder != null) {
                this.encoder.releaseOutputBuffer(z);
            }
        }

        public void signalEndOfInputStream() throws ExportException {
            if (this.encoder != null) {
                this.encoder.signalEndOfInputStream();
            }
        }
    }

    public final class VideoGraphWrapper implements TransformerVideoGraph, VideoGraph.Listener {
        private final Consumer<ExportException> errorConsumer;
        private int framesAvailableToRender;
        private int framesInEncoder;
        private final Object lock;
        private final int maxFramesInEncoder;
        private final boolean renderFramesAutomatically;
        private final TransformerVideoGraph videoGraph;

        public VideoGraphWrapper(Context context, TransformerVideoGraph.Factory factory, ColorInfo colorInfo, Consumer<ExportException> consumer, DebugViewProvider debugViewProvider, VideoCompositorSettings videoCompositorSettings, List<Effect> list, int i) throws VideoFrameProcessingException {
            this.errorConsumer = consumer;
            this.maxFramesInEncoder = i;
            boolean z = i < 1;
            this.renderFramesAutomatically = z;
            this.lock = new Object();
            this.videoGraph = factory.create(context, colorInfo, debugViewProvider, this, MoreExecutors.a(), videoCompositorSettings, list, VideoSampleExporter.this.initialTimestampOffsetUs, z);
        }

        private void maybeRenderEarliestOutputFrame() {
            boolean z;
            int i;
            synchronized (this.lock) {
                try {
                    int i2 = this.framesAvailableToRender;
                    if (i2 <= 0 || (i = this.framesInEncoder) >= this.maxFramesInEncoder) {
                        z = false;
                    } else {
                        z = true;
                        this.framesInEncoder = i + 1;
                        this.framesAvailableToRender = i2 - 1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                renderOutputFrameWithMediaPresentationTime();
            }
        }

        @Override
        public GraphInput createInput(int i) throws VideoFrameProcessingException {
            return this.videoGraph.createInput(i);
        }

        @Override
        public VideoFrameProcessor getProcessor(int i) {
            return this.videoGraph.getProcessor(i);
        }

        public boolean hasEncoderReleasedAllBuffersAfterEndOfStream() {
            boolean z = false;
            if (this.renderFramesAutomatically) {
                return false;
            }
            boolean z2 = VideoSampleExporter.this.finalFramePresentationTimeUs != C.TIME_UNSET;
            synchronized (this.lock) {
                if (this.framesInEncoder == 0 && z2) {
                    z = true;
                }
            }
            return z;
        }

        @Override
        public boolean hasProducedFrameWithTimestampZero() {
            return this.videoGraph.hasProducedFrameWithTimestampZero();
        }

        @Override
        public void initialize() throws VideoFrameProcessingException {
            this.videoGraph.initialize();
        }

        public void onEncoderBufferReleased() {
            if (this.renderFramesAutomatically) {
                return;
            }
            synchronized (this.lock) {
                Assertions.checkState(this.framesInEncoder > 0);
                this.framesInEncoder--;
            }
            maybeRenderEarliestOutputFrame();
        }

        @Override
        public void onEnded(long j) {
            VideoSampleExporter.this.finalFramePresentationTimeUs = j;
            try {
                VideoSampleExporter.this.encoderWrapper.signalEndOfInputStream();
            } catch (ExportException e) {
                this.errorConsumer.accept(e);
            }
        }

        @Override
        public void onError(VideoFrameProcessingException videoFrameProcessingException) {
            this.errorConsumer.accept(ExportException.createForVideoFrameProcessingException(videoFrameProcessingException));
        }

        @Override
        public void onOutputFrameAvailableForRendering(long j) {
            if (this.renderFramesAutomatically) {
                return;
            }
            synchronized (this.lock) {
                this.framesAvailableToRender++;
            }
            maybeRenderEarliestOutputFrame();
        }

        @Override
        public void onOutputSizeChanged(int i, int i2) {
            SurfaceInfo surfaceInfo;
            try {
                surfaceInfo = VideoSampleExporter.this.encoderWrapper.getSurfaceInfo(i, i2);
            } catch (ExportException e) {
                this.errorConsumer.accept(e);
                surfaceInfo = null;
            }
            setOutputSurfaceInfo(surfaceInfo);
        }

        @Override
        public void registerInput(@IntRange(from = 0) int i) throws VideoFrameProcessingException {
            this.videoGraph.registerInput(i);
        }

        @Override
        public void release() {
            this.videoGraph.release();
        }

        @Override
        public void renderOutputFrameWithMediaPresentationTime() {
            this.videoGraph.renderOutputFrameWithMediaPresentationTime();
        }

        @Override
        public void setOutputSurfaceInfo(@Nullable SurfaceInfo surfaceInfo) {
            this.videoGraph.setOutputSurfaceInfo(surfaceInfo);
        }
    }

    public VideoSampleExporter(Context context, Format format, TransformationRequest transformationRequest, VideoCompositorSettings videoCompositorSettings, List<Effect> list, VideoFrameProcessor.Factory factory, Codec.EncoderFactory encoderFactory, MuxerWrapper muxerWrapper, Consumer<ExportException> consumer, FallbackListener fallbackListener, DebugViewProvider debugViewProvider, long j, boolean z, boolean z2, int i) throws ExportException {
        super(format, muxerWrapper);
        this.initialTimestampOffsetUs = j;
        this.finalFramePresentationTimeUs = C.TIME_UNSET;
        this.lastMuxerInputBufferTimestampUs = C.TIME_UNSET;
        ColorInfo colorInfo = (ColorInfo) Assertions.checkNotNull(format.colorInfo);
        ColorInfo colorInfoBuild = colorInfo.colorTransfer == 2 ? Objects.equals(format.sampleMimeType, MimeTypes.IMAGE_JPEG_R) ? new ColorInfo.Builder().setColorSpace(6).setColorTransfer(7).setColorRange(1).build() : ColorInfo.SDR_BT709_LIMITED : colorInfo;
        EncoderWrapper encoderWrapper = new EncoderWrapper(encoderFactory, format.buildUpon().setColorInfo(colorInfoBuild).build(), z2, muxerWrapper.getSupportedSampleMimeTypes(2), transformationRequest, fallbackListener);
        this.encoderWrapper = encoderWrapper;
        this.encoderOutputBuffer = new DecoderInputBuffer(0);
        if (encoderWrapper.getHdrModeAfterFallback() == 2 && ColorInfo.isTransferHdr(colorInfo)) {
            colorInfoBuild = ColorInfo.SDR_BT709_LIMITED;
        }
        try {
            VideoGraphWrapper videoGraphWrapper = new VideoGraphWrapper(context, z ? new TransformerMultipleInputVideoGraph.Factory(factory) : new TransformerSingleInputVideoGraph.Factory(factory), colorInfoBuild, consumer, debugViewProvider, videoCompositorSettings, list, i);
            this.videoGraph = videoGraphWrapper;
            videoGraphWrapper.initialize();
        } catch (VideoFrameProcessingException e) {
            throw ExportException.createForVideoFrameProcessingException(e);
        }
    }

    @Override
    public GraphInput getInput(EditedMediaItem editedMediaItem, Format format, int i) throws ExportException {
        try {
            return this.videoGraph.createInput(i);
        } catch (VideoFrameProcessingException e) {
            throw ExportException.createForVideoFrameProcessingException(e);
        }
    }

    @Override
    @Nullable
    public DecoderInputBuffer getMuxerInputBuffer() throws ExportException {
        this.encoderOutputBuffer.data = this.encoderWrapper.getOutputBuffer();
        if (this.encoderOutputBuffer.data == null) {
            return null;
        }
        MediaCodec.BufferInfo bufferInfo = (MediaCodec.BufferInfo) Assertions.checkNotNull(this.encoderWrapper.getOutputBufferInfo());
        if (bufferInfo.presentationTimeUs == 0 && this.videoGraph.hasProducedFrameWithTimestampZero() == this.hasMuxedTimestampZero && this.finalFramePresentationTimeUs != C.TIME_UNSET && bufferInfo.size > 0) {
            bufferInfo.presentationTimeUs = this.finalFramePresentationTimeUs;
        }
        DecoderInputBuffer decoderInputBuffer = this.encoderOutputBuffer;
        decoderInputBuffer.timeUs = bufferInfo.presentationTimeUs;
        decoderInputBuffer.setFlags(bufferInfo.flags);
        this.lastMuxerInputBufferTimestampUs = bufferInfo.presentationTimeUs;
        return this.encoderOutputBuffer;
    }

    @Override
    @Nullable
    public Format getMuxerInputFormat() throws ExportException {
        return this.encoderWrapper.getOutputFormat();
    }

    @Override
    public boolean isMuxerInputEnded() {
        return this.encoderWrapper.isEnded() || this.videoGraph.hasEncoderReleasedAllBuffersAfterEndOfStream();
    }

    @Override
    public void release() {
        this.videoGraph.release();
        this.encoderWrapper.release();
    }

    @Override
    public void releaseMuxerInputBuffer() throws ExportException {
        if (this.lastMuxerInputBufferTimestampUs == 0) {
            this.hasMuxedTimestampZero = true;
        }
        this.encoderWrapper.releaseOutputBuffer(false);
        this.videoGraph.onEncoderBufferReleased();
    }
}
