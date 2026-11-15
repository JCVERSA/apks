package androidx.media3.exoplayer.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.PreviewingVideoGraph;
import androidx.media3.common.SurfaceInfo;
import androidx.media3.common.VideoCompositorSettings;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoGraph;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.TimestampIterator;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.effect.DefaultVideoFrameProcessor;
import androidx.media3.effect.PreviewingSingleInputVideoGraph;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import defpackage.e88;
import defpackage.w6a;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@UnstableApi
public final class PlaybackVideoGraphWrapper implements VideoSinkProvider, VideoGraph.Listener {
    private static final Executor NO_OP_EXECUTOR = new Executor() {
        @Override
        public final void execute(Runnable runnable) {
            PlaybackVideoGraphWrapper.lambda$static$0(runnable);
        }
    };
    private static final int PRIMARY_SEQUENCE_INDEX = 0;
    private static final int STATE_CREATED = 0;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_RELEASED = 2;
    private long bufferTimestampAdjustmentUs;
    private final Clock clock;
    private final List<Effect> compositionEffects;
    private final VideoCompositorSettings compositorSettings;
    private final Context context;

    @Nullable
    private Pair<Surface, Size> currentSurfaceAndSize;
    private final VideoSink defaultVideoSink;
    private long finalBufferPresentationTimeUs;
    private HandlerWrapper handler;
    private boolean hasSignaledEndOfCurrentInputStream;
    private final SparseArray<InputVideoSink> inputVideoSinks;
    private long lastOutputBufferPresentationTimeUs;
    private final CopyOnWriteArraySet<Listener> listeners;
    private long outputStreamStartPositionUs;
    private int pendingFlushCount;
    private final PreviewingVideoGraph.Factory previewingVideoGraphFactory;
    private int registeredVideoInputCount;
    private final boolean requestOpenGlToneMapping;
    private int state;
    private final TimedValueQueue<Long> streamStartPositionsUs;
    private int totalVideoInputCount;
    private final VideoSink.VideoFrameHandler videoFrameHandler;
    private PreviewingVideoGraph videoGraph;
    private Format videoGraphOutputFormat;

    @Nullable
    private Renderer.WakeupListener wakeupListener;

    public static final class Builder {
        private boolean built;
        private final Context context;
        private PreviewingVideoGraph.Factory previewingVideoGraphFactory;
        private boolean requestOpenGlToneMapping;
        private VideoFrameProcessor.Factory videoFrameProcessorFactory;
        private final VideoFrameReleaseControl videoFrameReleaseControl;
        private List<Effect> compositionEffects = ImmutableList.of();
        private VideoCompositorSettings compositorSettings = VideoCompositorSettings.DEFAULT;
        private Clock clock = Clock.DEFAULT;

        public Builder(Context context, VideoFrameReleaseControl videoFrameReleaseControl) {
            this.context = context.getApplicationContext();
            this.videoFrameReleaseControl = videoFrameReleaseControl;
        }

        public PlaybackVideoGraphWrapper build() {
            Assertions.checkState(!this.built);
            if (this.previewingVideoGraphFactory == null) {
                if (this.videoFrameProcessorFactory == null) {
                    this.videoFrameProcessorFactory = new ReflectiveDefaultVideoFrameProcessorFactory();
                }
                this.previewingVideoGraphFactory = new ReflectivePreviewingSingleInputVideoGraphFactory(this.videoFrameProcessorFactory);
            }
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = new PlaybackVideoGraphWrapper(this);
            this.built = true;
            return playbackVideoGraphWrapper;
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setCompositionEffects(List<Effect> list) {
            this.compositionEffects = list;
            return this;
        }

        public Builder setCompositorSettings(VideoCompositorSettings videoCompositorSettings) {
            this.compositorSettings = videoCompositorSettings;
            return this;
        }

        public Builder setPreviewingVideoGraphFactory(PreviewingVideoGraph.Factory factory) {
            this.previewingVideoGraphFactory = factory;
            return this;
        }

        public Builder setRequestOpenGlToneMapping(boolean z) {
            this.requestOpenGlToneMapping = z;
            return this;
        }

        public Builder setVideoFrameProcessorFactory(VideoFrameProcessor.Factory factory) {
            this.videoFrameProcessorFactory = factory;
            return this;
        }
    }

    public final class DefaultVideoSinkListener implements VideoSink.Listener {
        private DefaultVideoSinkListener() {
        }

        @Override
        public void onError(VideoSink videoSink, VideoSink.VideoSinkException videoSinkException) {
            Iterator it = PlaybackVideoGraphWrapper.this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onError(PlaybackVideoGraphWrapper.this, VideoFrameProcessingException.from(videoSinkException));
            }
        }

        @Override
        public void onFirstFrameRendered(VideoSink videoSink) {
            Iterator it = PlaybackVideoGraphWrapper.this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onFirstFrameRendered(PlaybackVideoGraphWrapper.this);
            }
        }

        @Override
        public void onFrameDropped(VideoSink videoSink) {
            Iterator it = PlaybackVideoGraphWrapper.this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onFrameDropped(PlaybackVideoGraphWrapper.this);
            }
        }

        @Override
        public void onVideoSizeChanged(VideoSink videoSink, VideoSize videoSize) {
            Iterator it = PlaybackVideoGraphWrapper.this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onVideoSizeChanged(PlaybackVideoGraphWrapper.this, videoSize);
            }
        }
    }

    public final class InputVideoSink implements VideoSink, Listener {
        private long inputBufferTimestampAdjustmentUs;

        @Nullable
        private Format inputFormat;
        private final int inputIndex;
        private int inputType;
        private boolean signaledEndOfStream;

        @Nullable
        private VideoFrameProcessor videoFrameProcessor;
        private final int videoFrameProcessorMaxPendingFrameCount;
        private ImmutableList<Effect> videoEffects = ImmutableList.of();
        private long lastBufferPresentationTimeUs = C.TIME_UNSET;
        private VideoSink.Listener listener = VideoSink.Listener.NO_OP;
        private Executor listenerExecutor = PlaybackVideoGraphWrapper.NO_OP_EXECUTOR;

        public InputVideoSink(Context context, int i) {
            this.inputIndex = i;
            this.videoFrameProcessorMaxPendingFrameCount = Util.getMaxPendingFramesCountForMediaCodecDecoders(context);
        }

        public void lambda$onError$3(VideoSink.Listener listener, VideoFrameProcessingException videoFrameProcessingException) {
            listener.onError(this, new VideoSink.VideoSinkException(videoFrameProcessingException, (Format) Assertions.checkStateNotNull(this.inputFormat)));
        }

        public void lambda$onFirstFrameRendered$0(VideoSink.Listener listener) {
            listener.onFirstFrameRendered(this);
        }

        public void lambda$onFrameDropped$1(VideoSink.Listener listener) {
            listener.onFrameDropped((VideoSink) Assertions.checkStateNotNull(this));
        }

        public void lambda$onVideoSizeChanged$2(VideoSink.Listener listener, VideoSize videoSize) {
            listener.onVideoSizeChanged(this, videoSize);
        }

        private void registerInputStream(Format format) {
            ((VideoFrameProcessor) Assertions.checkStateNotNull(this.videoFrameProcessor)).registerInputStream(this.inputType, format.buildUpon().setColorInfo(PlaybackVideoGraphWrapper.getAdjustedInputColorInfo(format.colorInfo)).build(), this.videoEffects, 0L);
        }

        private void setPendingVideoEffects(List<Effect> list) {
            if (PlaybackVideoGraphWrapper.this.previewingVideoGraphFactory.supportsMultipleInputs()) {
                this.videoEffects = ImmutableList.copyOf((Collection) list);
            } else {
                this.videoEffects = new ImmutableList.a().l(list).l(PlaybackVideoGraphWrapper.this.compositionEffects).e();
            }
        }

        @Override
        public void clearOutputSurfaceInfo() {
            PlaybackVideoGraphWrapper.this.clearOutputSurfaceInfo();
        }

        @Override
        public void enableMayRenderStartOfStream() {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.enableMayRenderStartOfStream();
        }

        @Override
        public void flush(boolean z) {
            if (isInitialized()) {
                this.videoFrameProcessor.flush();
            }
            this.lastBufferPresentationTimeUs = C.TIME_UNSET;
            PlaybackVideoGraphWrapper.this.flush(z);
            this.signaledEndOfStream = false;
        }

        @Override
        public Surface getInputSurface() {
            Assertions.checkState(isInitialized());
            return ((VideoFrameProcessor) Assertions.checkStateNotNull(this.videoFrameProcessor)).getInputSurface();
        }

        @Override
        public boolean handleInputBitmap(Bitmap bitmap, TimestampIterator timestampIterator) {
            Assertions.checkState(isInitialized());
            if (!PlaybackVideoGraphWrapper.this.shouldRenderToInputVideoSink() || !((VideoFrameProcessor) Assertions.checkNotNull(this.videoFrameProcessor)).queueInputBitmap(bitmap, timestampIterator)) {
                return false;
            }
            long lastTimestampUs = timestampIterator.getLastTimestampUs() - this.inputBufferTimestampAdjustmentUs;
            Assertions.checkState(lastTimestampUs != C.TIME_UNSET);
            this.lastBufferPresentationTimeUs = lastTimestampUs;
            return true;
        }

        @Override
        public boolean handleInputFrame(long j, boolean z, VideoSink.VideoFrameHandler videoFrameHandler) {
            Assertions.checkState(isInitialized());
            if (!PlaybackVideoGraphWrapper.this.shouldRenderToInputVideoSink() || ((VideoFrameProcessor) Assertions.checkStateNotNull(this.videoFrameProcessor)).getPendingInputFrameCount() >= this.videoFrameProcessorMaxPendingFrameCount || !((VideoFrameProcessor) Assertions.checkStateNotNull(this.videoFrameProcessor)).registerInputFrame()) {
                return false;
            }
            this.lastBufferPresentationTimeUs = j - this.inputBufferTimestampAdjustmentUs;
            videoFrameHandler.render(j * 1000);
            return true;
        }

        @Override
        public boolean initialize(Format format) throws VideoSink.VideoSinkException {
            Assertions.checkState(!isInitialized());
            VideoFrameProcessor videoFrameProcessorRegisterInput = PlaybackVideoGraphWrapper.this.registerInput(format, this.inputIndex);
            this.videoFrameProcessor = videoFrameProcessorRegisterInput;
            return videoFrameProcessorRegisterInput != null;
        }

        @Override
        public boolean isEnded() {
            return isInitialized() && PlaybackVideoGraphWrapper.this.isEnded();
        }

        @Override
        public boolean isInitialized() {
            return this.videoFrameProcessor != null;
        }

        @Override
        public boolean isReady(boolean z) {
            return PlaybackVideoGraphWrapper.this.isReady(z && isInitialized());
        }

        @Override
        public void join(boolean z) {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.join(z);
        }

        @Override
        public void onError(PlaybackVideoGraphWrapper playbackVideoGraphWrapper, final VideoFrameProcessingException videoFrameProcessingException) {
            final VideoSink.Listener listener = this.listener;
            this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onError$3(listener, videoFrameProcessingException);
                }
            });
        }

        @Override
        public void onFirstFrameRendered(PlaybackVideoGraphWrapper playbackVideoGraphWrapper) {
            final VideoSink.Listener listener = this.listener;
            this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onFirstFrameRendered$0(listener);
                }
            });
        }

        @Override
        public void onFrameDropped(PlaybackVideoGraphWrapper playbackVideoGraphWrapper) {
            final VideoSink.Listener listener = this.listener;
            this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onFrameDropped$1(listener);
                }
            });
        }

        @Override
        public void onInputStreamChanged(int i, Format format, List<Effect> list) {
            Assertions.checkState(isInitialized());
            if (i != 1 && i != 2) {
                throw new UnsupportedOperationException("Unsupported input type " + i);
            }
            setPendingVideoEffects(list);
            this.inputType = i;
            this.inputFormat = format;
            PlaybackVideoGraphWrapper.this.finalBufferPresentationTimeUs = C.TIME_UNSET;
            PlaybackVideoGraphWrapper.this.hasSignaledEndOfCurrentInputStream = false;
            registerInputStream(format);
        }

        @Override
        public void onRendererDisabled() {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.onRendererDisabled();
        }

        @Override
        public void onRendererEnabled(boolean z) {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.onRendererEnabled(z);
        }

        @Override
        public void onRendererStarted() {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.onRendererStarted();
        }

        @Override
        public void onRendererStopped() {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.onRendererStopped();
        }

        @Override
        public void onVideoSizeChanged(PlaybackVideoGraphWrapper playbackVideoGraphWrapper, final VideoSize videoSize) {
            final VideoSink.Listener listener = this.listener;
            this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onVideoSizeChanged$2(listener, videoSize);
                }
            });
        }

        @Override
        public void release() {
            PlaybackVideoGraphWrapper.this.release();
        }

        @Override
        public void render(long j, long j2) throws VideoSink.VideoSinkException {
            PlaybackVideoGraphWrapper.this.render(j, j2);
        }

        @Override
        public void setChangeFrameRateStrategy(int i) {
            PlaybackVideoGraphWrapper.this.defaultVideoSink.setChangeFrameRateStrategy(i);
        }

        @Override
        public void setListener(VideoSink.Listener listener, Executor executor) {
            this.listener = listener;
            this.listenerExecutor = executor;
        }

        @Override
        public void setOutputSurfaceInfo(Surface surface, Size size) {
            PlaybackVideoGraphWrapper.this.setOutputSurfaceInfo(surface, size);
        }

        @Override
        public void setPlaybackSpeed(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
            PlaybackVideoGraphWrapper.this.setPlaybackSpeed(f);
        }

        @Override
        public void setStreamTimestampInfo(long j, long j2) {
            TimedValueQueue timedValueQueue = PlaybackVideoGraphWrapper.this.streamStartPositionsUs;
            long j3 = this.lastBufferPresentationTimeUs;
            timedValueQueue.add(j3 == C.TIME_UNSET ? 0L : j3 + 1, Long.valueOf(j));
            this.inputBufferTimestampAdjustmentUs = j2;
            PlaybackVideoGraphWrapper.this.setBufferTimestampAdjustment(j2);
        }

        @Override
        public void setVideoEffects(List<Effect> list) {
            if (this.videoEffects.equals(list)) {
                return;
            }
            setPendingVideoEffects(list);
            Format format = this.inputFormat;
            if (format != null) {
                registerInputStream(format);
            }
        }

        @Override
        public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
            PlaybackVideoGraphWrapper.this.setVideoFrameMetadataListener(videoFrameMetadataListener);
        }

        @Override
        public void setWakeupListener(Renderer.WakeupListener wakeupListener) {
            PlaybackVideoGraphWrapper.this.wakeupListener = wakeupListener;
        }

        @Override
        public void signalEndOfCurrentInputStream() {
            PlaybackVideoGraphWrapper.this.finalBufferPresentationTimeUs = this.lastBufferPresentationTimeUs;
            if (PlaybackVideoGraphWrapper.this.lastOutputBufferPresentationTimeUs >= PlaybackVideoGraphWrapper.this.finalBufferPresentationTimeUs) {
                PlaybackVideoGraphWrapper.this.defaultVideoSink.signalEndOfCurrentInputStream();
                PlaybackVideoGraphWrapper.this.hasSignaledEndOfCurrentInputStream = true;
            }
        }

        @Override
        public void signalEndOfInput() {
            if (!this.signaledEndOfStream && isInitialized()) {
                this.videoFrameProcessor.signalEndOfInput();
                this.signaledEndOfStream = true;
            }
        }
    }

    public interface Listener {
        void onError(PlaybackVideoGraphWrapper playbackVideoGraphWrapper, VideoFrameProcessingException videoFrameProcessingException);

        void onFirstFrameRendered(PlaybackVideoGraphWrapper playbackVideoGraphWrapper);

        void onFrameDropped(PlaybackVideoGraphWrapper playbackVideoGraphWrapper);

        void onVideoSizeChanged(PlaybackVideoGraphWrapper playbackVideoGraphWrapper, VideoSize videoSize);
    }

    public static final class ReflectiveDefaultVideoFrameProcessorFactory implements VideoFrameProcessor.Factory {
        private static final w6a VIDEO_FRAME_PROCESSOR_FACTORY_SUPPLIER = Suppliers.a(new w6a() {
            @Override
            public final Object get() {
                return PlaybackVideoGraphWrapper.ReflectiveDefaultVideoFrameProcessorFactory.lambda$static$0();
            }
        });

        private ReflectiveDefaultVideoFrameProcessorFactory() {
        }

        public static VideoFrameProcessor.Factory lambda$static$0() {
            try {
                return (VideoFrameProcessor.Factory) Assertions.checkNotNull(DefaultVideoFrameProcessor.Factory.Builder.class.getMethod("build", null).invoke(DefaultVideoFrameProcessor.Factory.Builder.class.getConstructor(null).newInstance(null), null));
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        }

        @Override
        public VideoFrameProcessor create(Context context, DebugViewProvider debugViewProvider, ColorInfo colorInfo, boolean z, Executor executor, VideoFrameProcessor.Listener listener) throws VideoFrameProcessingException {
            return ((VideoFrameProcessor.Factory) VIDEO_FRAME_PROCESSOR_FACTORY_SUPPLIER.get()).create(context, debugViewProvider, colorInfo, z, executor, listener);
        }
    }

    public static final class ReflectivePreviewingSingleInputVideoGraphFactory implements PreviewingVideoGraph.Factory {
        private final VideoFrameProcessor.Factory videoFrameProcessorFactory;

        public ReflectivePreviewingSingleInputVideoGraphFactory(VideoFrameProcessor.Factory factory) {
            this.videoFrameProcessorFactory = factory;
        }

        @Override
        public PreviewingVideoGraph create(Context context, ColorInfo colorInfo, DebugViewProvider debugViewProvider, VideoGraph.Listener listener, Executor executor, VideoCompositorSettings videoCompositorSettings, List<Effect> list, long j) throws VideoFrameProcessingException {
            try {
                return ((PreviewingVideoGraph.Factory) PreviewingSingleInputVideoGraph.Factory.class.getConstructor(VideoFrameProcessor.Factory.class).newInstance(this.videoFrameProcessorFactory)).create(context, colorInfo, debugViewProvider, listener, executor, videoCompositorSettings, list, j);
            } catch (Exception e) {
                throw VideoFrameProcessingException.from(e);
            }
        }

        @Override
        public boolean supportsMultipleInputs() {
            return false;
        }
    }

    public void flush(boolean z) {
        if (isInitialized()) {
            this.pendingFlushCount++;
            this.defaultVideoSink.flush(z);
            while (this.streamStartPositionsUs.size() > 1) {
                this.streamStartPositionsUs.pollFirst();
            }
            if (this.streamStartPositionsUs.size() == 1) {
                this.defaultVideoSink.setStreamTimestampInfo(((Long) Assertions.checkNotNull(this.streamStartPositionsUs.pollFirst())).longValue(), this.bufferTimestampAdjustmentUs);
            }
            this.lastOutputBufferPresentationTimeUs = C.TIME_UNSET;
            this.finalBufferPresentationTimeUs = C.TIME_UNSET;
            this.hasSignaledEndOfCurrentInputStream = false;
            ((HandlerWrapper) Assertions.checkStateNotNull(this.handler)).post(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$flush$1();
                }
            });
        }
    }

    public static ColorInfo getAdjustedInputColorInfo(@Nullable ColorInfo colorInfo) {
        return (colorInfo == null || !colorInfo.isDataSpaceValid()) ? ColorInfo.SDR_BT709_LIMITED : colorInfo;
    }

    public boolean isEnded() {
        return this.pendingFlushCount == 0 && this.hasSignaledEndOfCurrentInputStream && this.defaultVideoSink.isEnded();
    }

    private boolean isInitialized() {
        return this.state == 1;
    }

    public boolean isReady(boolean z) {
        return this.defaultVideoSink.isReady(z && this.pendingFlushCount == 0);
    }

    public void lambda$flush$1() {
        this.pendingFlushCount--;
    }

    public static void lambda$static$0(Runnable runnable) {
    }

    private void maybeSetOutputSurfaceInfo(@Nullable Surface surface, int i, int i2) {
        PreviewingVideoGraph previewingVideoGraph = this.videoGraph;
        if (previewingVideoGraph == null) {
            return;
        }
        if (surface != null) {
            previewingVideoGraph.setOutputSurfaceInfo(new SurfaceInfo(surface, i, i2));
            this.defaultVideoSink.setOutputSurfaceInfo(surface, new Size(i, i2));
        } else {
            previewingVideoGraph.setOutputSurfaceInfo(null);
            this.defaultVideoSink.clearOutputSurfaceInfo();
        }
    }

    @Nullable
    public VideoFrameProcessor registerInput(Format format, int i) throws VideoSink.VideoSinkException {
        if (i == 0) {
            Assertions.checkState(this.state == 0);
            ColorInfo adjustedInputColorInfo = getAdjustedInputColorInfo(format.colorInfo);
            if (this.requestOpenGlToneMapping) {
                adjustedInputColorInfo = ColorInfo.SDR_BT709_LIMITED;
            } else if (adjustedInputColorInfo.colorTransfer == 7 && Util.SDK_INT < 34) {
                adjustedInputColorInfo = adjustedInputColorInfo.buildUpon().setColorTransfer(6).build();
            }
            ColorInfo colorInfo = adjustedInputColorInfo;
            HandlerWrapper handlerWrapperCreateHandler = this.clock.createHandler((Looper) Assertions.checkStateNotNull(Looper.myLooper()), null);
            this.handler = handlerWrapperCreateHandler;
            try {
                PreviewingVideoGraph.Factory factory = this.previewingVideoGraphFactory;
                Context context = this.context;
                DebugViewProvider debugViewProvider = DebugViewProvider.NONE;
                Objects.requireNonNull(handlerWrapperCreateHandler);
                PreviewingVideoGraph previewingVideoGraphCreate = factory.create(context, colorInfo, debugViewProvider, this, new e88(handlerWrapperCreateHandler), this.compositorSettings, this.compositionEffects, 0L);
                this.videoGraph = previewingVideoGraphCreate;
                previewingVideoGraphCreate.initialize();
                Pair<Surface, Size> pair = this.currentSurfaceAndSize;
                if (pair != null) {
                    Surface surface = (Surface) pair.first;
                    Size size = (Size) pair.second;
                    maybeSetOutputSurfaceInfo(surface, size.getWidth(), size.getHeight());
                }
                this.defaultVideoSink.initialize(format);
                this.state = 1;
            } catch (VideoFrameProcessingException e) {
                throw new VideoSink.VideoSinkException(e, format);
            }
        } else if (!isInitialized()) {
            return null;
        }
        try {
            ((PreviewingVideoGraph) Assertions.checkNotNull(this.videoGraph)).registerInput(i);
            this.registeredVideoInputCount++;
            VideoSink videoSink = this.defaultVideoSink;
            DefaultVideoSinkListener defaultVideoSinkListener = new DefaultVideoSinkListener();
            HandlerWrapper handlerWrapper = (HandlerWrapper) Assertions.checkNotNull(this.handler);
            Objects.requireNonNull(handlerWrapper);
            videoSink.setListener(defaultVideoSinkListener, new e88(handlerWrapper));
            return this.videoGraph.getProcessor(i);
        } catch (VideoFrameProcessingException e2) {
            throw new VideoSink.VideoSinkException(e2, format);
        }
    }

    public void render(long j, long j2) throws VideoSink.VideoSinkException {
        this.defaultVideoSink.render(j, j2);
    }

    public void setBufferTimestampAdjustment(long j) {
        this.bufferTimestampAdjustmentUs = j;
        this.defaultVideoSink.setStreamTimestampInfo(this.outputStreamStartPositionUs, j);
    }

    public void setPlaybackSpeed(float f) {
        this.defaultVideoSink.setPlaybackSpeed(f);
    }

    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        this.defaultVideoSink.setVideoFrameMetadataListener(videoFrameMetadataListener);
    }

    public boolean shouldRenderToInputVideoSink() {
        int i = this.totalVideoInputCount;
        return i != -1 && i == this.registeredVideoInputCount;
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    @Override
    public void clearOutputSurfaceInfo() {
        Size size = Size.UNKNOWN;
        maybeSetOutputSurfaceInfo(null, size.getWidth(), size.getHeight());
        this.currentSurfaceAndSize = null;
    }

    @Override
    public VideoSink getSink(int i) {
        Assertions.checkState(!Util.contains(this.inputVideoSinks, i));
        InputVideoSink inputVideoSink = new InputVideoSink(this.context, i);
        addListener(inputVideoSink);
        this.inputVideoSinks.put(i, inputVideoSink);
        return inputVideoSink;
    }

    @Override
    public void onEnded(long j) {
    }

    @Override
    public void onError(VideoFrameProcessingException videoFrameProcessingException) {
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onError(this, videoFrameProcessingException);
        }
    }

    @Override
    public void onOutputFrameAvailableForRendering(long j) {
        if (this.pendingFlushCount > 0) {
            return;
        }
        Renderer.WakeupListener wakeupListener = this.wakeupListener;
        if (wakeupListener != null) {
            wakeupListener.onWakeup();
        }
        long j2 = j - this.bufferTimestampAdjustmentUs;
        this.lastOutputBufferPresentationTimeUs = j2;
        Long lPollFloor = this.streamStartPositionsUs.pollFloor(j2);
        if (lPollFloor != null && lPollFloor.longValue() != this.outputStreamStartPositionUs) {
            this.defaultVideoSink.setStreamTimestampInfo(lPollFloor.longValue(), this.bufferTimestampAdjustmentUs);
            this.outputStreamStartPositionUs = lPollFloor.longValue();
        }
        long j3 = this.finalBufferPresentationTimeUs;
        boolean z = j3 != C.TIME_UNSET && j2 >= j3;
        this.defaultVideoSink.handleInputFrame(j, z, this.videoFrameHandler);
        if (z) {
            this.defaultVideoSink.signalEndOfCurrentInputStream();
            this.hasSignaledEndOfCurrentInputStream = true;
        }
    }

    @Override
    public void onOutputFrameRateChanged(float f) {
        Format formatBuild = this.videoGraphOutputFormat.buildUpon().setFrameRate(f).build();
        this.videoGraphOutputFormat = formatBuild;
        this.defaultVideoSink.onInputStreamChanged(1, formatBuild, ImmutableList.of());
    }

    @Override
    public void onOutputSizeChanged(int i, int i2) {
        Format formatBuild = this.videoGraphOutputFormat.buildUpon().setWidth(i).setHeight(i2).build();
        this.videoGraphOutputFormat = formatBuild;
        this.defaultVideoSink.onInputStreamChanged(1, formatBuild, ImmutableList.of());
    }

    @Override
    public void release() {
        if (this.state == 2) {
            return;
        }
        HandlerWrapper handlerWrapper = this.handler;
        if (handlerWrapper != null) {
            handlerWrapper.removeCallbacksAndMessages(null);
        }
        PreviewingVideoGraph previewingVideoGraph = this.videoGraph;
        if (previewingVideoGraph != null) {
            previewingVideoGraph.release();
        }
        this.currentSurfaceAndSize = null;
        this.state = 2;
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    @Override
    public void setOutputSurfaceInfo(Surface surface, Size size) {
        Pair<Surface, Size> pair = this.currentSurfaceAndSize;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((Size) this.currentSurfaceAndSize.second).equals(size)) {
            return;
        }
        this.currentSurfaceAndSize = Pair.create(surface, size);
        maybeSetOutputSurfaceInfo(surface, size.getWidth(), size.getHeight());
    }

    public void setTotalVideoInputCount(int i) {
        this.totalVideoInputCount = i;
    }

    private PlaybackVideoGraphWrapper(Builder builder) {
        this.context = builder.context;
        this.streamStartPositionsUs = new TimedValueQueue<>();
        this.previewingVideoGraphFactory = (PreviewingVideoGraph.Factory) Assertions.checkStateNotNull(builder.previewingVideoGraphFactory);
        this.inputVideoSinks = new SparseArray<>();
        this.compositionEffects = builder.compositionEffects;
        this.compositorSettings = builder.compositorSettings;
        Clock clock = builder.clock;
        this.clock = clock;
        this.defaultVideoSink = new DefaultVideoSink(builder.videoFrameReleaseControl, clock);
        this.videoFrameHandler = new VideoSink.VideoFrameHandler() {
            @Override
            public void render(long j) {
                ((PreviewingVideoGraph) Assertions.checkStateNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).renderOutputFrame(j);
            }

            @Override
            public void skip() {
                ((PreviewingVideoGraph) Assertions.checkStateNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).renderOutputFrame(-2L);
            }
        };
        this.listeners = new CopyOnWriteArraySet<>();
        this.requestOpenGlToneMapping = builder.requestOpenGlToneMapping;
        this.videoGraphOutputFormat = new Format.Builder().build();
        this.lastOutputBufferPresentationTimeUs = C.TIME_UNSET;
        this.finalBufferPresentationTimeUs = C.TIME_UNSET;
        this.totalVideoInputCount = -1;
        this.state = 0;
    }
}
