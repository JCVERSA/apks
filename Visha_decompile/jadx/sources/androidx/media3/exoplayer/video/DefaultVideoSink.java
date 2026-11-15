package androidx.media3.exoplayer.video;

import android.graphics.Bitmap;
import android.media.MediaFormat;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TimestampIterator;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.Renderer;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;

final class DefaultVideoSink implements VideoSink {
    private long bufferTimestampAdjustmentUs;
    private final Clock clock;
    private Format inputFormat;
    private VideoSink.Listener listener;
    private Executor listenerExecutor;

    @Nullable
    private Surface outputSurface;
    private long streamStartPositionUs;
    private final Queue<VideoSink.VideoFrameHandler> videoFrameHandlers;
    private VideoFrameMetadataListener videoFrameMetadataListener;
    private final VideoFrameReleaseControl videoFrameReleaseControl;
    private final VideoFrameRenderControl videoFrameRenderControl;

    public final class FrameRendererImpl implements VideoFrameRenderControl.FrameRenderer {
        private Format outputFormat;

        private FrameRendererImpl() {
        }

        public void lambda$dropFrame$2() {
            DefaultVideoSink.this.listener.onFrameDropped(DefaultVideoSink.this);
        }

        public void lambda$onVideoSizeChanged$0(VideoSize videoSize) {
            DefaultVideoSink.this.listener.onVideoSizeChanged(DefaultVideoSink.this, videoSize);
        }

        public void lambda$renderFrame$1() {
            DefaultVideoSink.this.listener.onFirstFrameRendered(DefaultVideoSink.this);
        }

        @Override
        public void dropFrame() {
            DefaultVideoSink.this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$dropFrame$2();
                }
            });
            ((VideoSink.VideoFrameHandler) DefaultVideoSink.this.videoFrameHandlers.remove()).skip();
        }

        @Override
        public void onVideoSizeChanged(final VideoSize videoSize) {
            this.outputFormat = new Format.Builder().setWidth(videoSize.width).setHeight(videoSize.height).setSampleMimeType("video/raw").build();
            DefaultVideoSink.this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onVideoSizeChanged$0(videoSize);
                }
            });
        }

        @Override
        public void renderFrame(long j, long j2, boolean z) {
            if (z && DefaultVideoSink.this.outputSurface != null) {
                DefaultVideoSink.this.listenerExecutor.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$renderFrame$1();
                    }
                });
            }
            Format formatBuild = this.outputFormat;
            if (formatBuild == null) {
                formatBuild = new Format.Builder().build();
            }
            DefaultVideoSink.this.videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j2, DefaultVideoSink.this.clock.nanoTime(), formatBuild, null);
            ((VideoSink.VideoFrameHandler) DefaultVideoSink.this.videoFrameHandlers.remove()).render(j);
        }
    }

    public DefaultVideoSink(VideoFrameReleaseControl videoFrameReleaseControl, Clock clock) {
        this.videoFrameReleaseControl = videoFrameReleaseControl;
        videoFrameReleaseControl.setClock(clock);
        this.clock = clock;
        this.videoFrameRenderControl = new VideoFrameRenderControl(new FrameRendererImpl(), videoFrameReleaseControl);
        this.videoFrameHandlers = new ArrayDeque();
        this.inputFormat = new Format.Builder().build();
        this.streamStartPositionUs = C.TIME_UNSET;
        this.listener = VideoSink.Listener.NO_OP;
        this.listenerExecutor = new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                DefaultVideoSink.lambda$new$0(runnable);
            }
        };
        this.videoFrameMetadataListener = new VideoFrameMetadataListener() {
            @Override
            public final void onVideoFrameAboutToBeRendered(long j, long j2, Format format, MediaFormat mediaFormat) {
                DefaultVideoSink.lambda$new$1(j, j2, format, mediaFormat);
            }
        };
    }

    public static void lambda$new$0(Runnable runnable) {
    }

    public static void lambda$new$1(long j, long j2, Format format, MediaFormat mediaFormat) {
    }

    @Override
    public void clearOutputSurfaceInfo() {
        this.outputSurface = null;
        this.videoFrameReleaseControl.setOutputSurface(null);
    }

    @Override
    public void enableMayRenderStartOfStream() {
        this.videoFrameReleaseControl.allowReleaseFirstFrameBeforeStarted();
    }

    @Override
    public void flush(boolean z) {
        if (z) {
            this.videoFrameReleaseControl.reset();
        }
        this.videoFrameRenderControl.flush();
        this.videoFrameHandlers.clear();
    }

    @Override
    public Surface getInputSurface() {
        return (Surface) Assertions.checkStateNotNull(this.outputSurface);
    }

    @Override
    public boolean handleInputBitmap(Bitmap bitmap, TimestampIterator timestampIterator) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean handleInputFrame(long j, boolean z, VideoSink.VideoFrameHandler videoFrameHandler) {
        this.videoFrameHandlers.add(videoFrameHandler);
        this.videoFrameRenderControl.onFrameAvailableForRendering(j - this.bufferTimestampAdjustmentUs);
        return true;
    }

    @Override
    public boolean initialize(Format format) {
        return true;
    }

    @Override
    public boolean isEnded() {
        return this.videoFrameRenderControl.isEnded();
    }

    @Override
    public boolean isInitialized() {
        return true;
    }

    @Override
    public boolean isReady(boolean z) {
        return this.videoFrameReleaseControl.isReady(z);
    }

    @Override
    public void join(boolean z) {
        this.videoFrameReleaseControl.join(z);
    }

    @Override
    public void onInputStreamChanged(int i, Format format, List<Effect> list) {
        Assertions.checkState(list.isEmpty());
        int i2 = format.width;
        Format format2 = this.inputFormat;
        if (i2 != format2.width || format.height != format2.height) {
            this.videoFrameRenderControl.onVideoSizeChanged(i2, format.height);
        }
        float f = format.frameRate;
        if (f != this.inputFormat.frameRate) {
            this.videoFrameReleaseControl.setFrameRate(f);
        }
        this.inputFormat = format;
    }

    @Override
    public void onRendererDisabled() {
        this.videoFrameReleaseControl.onDisabled();
    }

    @Override
    public void onRendererEnabled(boolean z) {
        this.videoFrameReleaseControl.onEnabled(z);
    }

    @Override
    public void onRendererStarted() {
        this.videoFrameReleaseControl.onStarted();
    }

    @Override
    public void onRendererStopped() {
        this.videoFrameReleaseControl.onStopped();
    }

    @Override
    public void release() {
    }

    @Override
    public void render(long j, long j2) throws VideoSink.VideoSinkException {
        try {
            this.videoFrameRenderControl.render(j, j2);
        } catch (ExoPlaybackException e) {
            throw new VideoSink.VideoSinkException(e, this.inputFormat);
        }
    }

    @Override
    public void setChangeFrameRateStrategy(int i) {
        this.videoFrameReleaseControl.setChangeFrameRateStrategy(i);
    }

    @Override
    public void setListener(VideoSink.Listener listener, Executor executor) {
        this.listener = listener;
        this.listenerExecutor = executor;
    }

    @Override
    public void setOutputSurfaceInfo(Surface surface, Size size) {
        this.outputSurface = surface;
        this.videoFrameReleaseControl.setOutputSurface(surface);
    }

    @Override
    public void setPlaybackSpeed(float f) {
        this.videoFrameReleaseControl.setPlaybackSpeed(f);
    }

    @Override
    public void setStreamTimestampInfo(long j, long j2) {
        if (j != this.streamStartPositionUs) {
            this.videoFrameRenderControl.onStreamStartPositionChanged(j);
            this.streamStartPositionUs = j;
        }
        this.bufferTimestampAdjustmentUs = j2;
    }

    @Override
    public void setVideoEffects(List<Effect> list) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        this.videoFrameMetadataListener = videoFrameMetadataListener;
    }

    @Override
    public void setWakeupListener(Renderer.WakeupListener wakeupListener) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void signalEndOfCurrentInputStream() {
        this.videoFrameRenderControl.signalEndOfInput();
    }

    @Override
    public void signalEndOfInput() {
    }
}
