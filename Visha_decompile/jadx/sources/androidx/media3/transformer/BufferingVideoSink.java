package androidx.media3.transformer;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TimestampIterator;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.video.PlaceholderSurface;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.exoplayer.video.VideoSink;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

final class BufferingVideoSink implements VideoSink {
    private final Context context;
    private boolean isInitialized;
    private final List<VideoSinkOperation> pendingOperations = new ArrayList();
    private PlaceholderSurface placeholderSurface;

    @Nullable
    private VideoSink videoSink;

    public interface VideoSinkOperation {
        void execute(VideoSink videoSink);
    }

    public BufferingVideoSink(Context context) {
        this.context = context;
    }

    private void executeOrDelay(VideoSinkOperation videoSinkOperation) {
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSinkOperation.execute(videoSink);
        } else {
            this.pendingOperations.add(videoSinkOperation);
        }
    }

    private PlaceholderSurface getPlaceholderSurface() {
        if (this.placeholderSurface == null) {
            this.placeholderSurface = PlaceholderSurface.newInstance(this.context, false);
        }
        return this.placeholderSurface;
    }

    @Override
    public void clearOutputSurfaceInfo() {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.clearOutputSurfaceInfo();
            }
        });
    }

    public void clearPendingOperations() {
        this.pendingOperations.clear();
    }

    @Override
    public void enableMayRenderStartOfStream() {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.enableMayRenderStartOfStream();
            }
        });
    }

    @Override
    public void flush(final boolean z) {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.flush(z);
            }
        });
    }

    @Override
    public Surface getInputSurface() {
        VideoSink videoSink = this.videoSink;
        return videoSink == null ? getPlaceholderSurface() : videoSink.getInputSurface();
    }

    @Nullable
    public VideoSink getVideoSink() {
        return this.videoSink;
    }

    @Override
    public boolean handleInputBitmap(Bitmap bitmap, TimestampIterator timestampIterator) {
        VideoSink videoSink = this.videoSink;
        return videoSink != null && videoSink.handleInputBitmap(bitmap, timestampIterator);
    }

    @Override
    public boolean handleInputFrame(long j, boolean z, VideoSink.VideoFrameHandler videoFrameHandler) {
        VideoSink videoSink = this.videoSink;
        return videoSink != null && videoSink.handleInputFrame(j, z, videoFrameHandler);
    }

    @Override
    public boolean initialize(Format format) throws VideoSink.VideoSinkException {
        VideoSink videoSink = this.videoSink;
        boolean z = videoSink == null || videoSink.initialize(format);
        this.isInitialized = z;
        return z;
    }

    @Override
    public boolean isEnded() {
        VideoSink videoSink = this.videoSink;
        return videoSink != null && videoSink.isEnded();
    }

    @Override
    public boolean isInitialized() {
        return this.isInitialized;
    }

    @Override
    public boolean isReady(boolean z) {
        VideoSink videoSink = this.videoSink;
        return videoSink == null || videoSink.isReady(z);
    }

    @Override
    public void join(final boolean z) {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.join(z);
            }
        });
    }

    @Override
    public void onInputStreamChanged(final int i, final Format format, final List<Effect> list) {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.onInputStreamChanged(i, format, list);
            }
        });
    }

    @Override
    public void onRendererDisabled() {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.onRendererDisabled();
            }
        });
    }

    @Override
    public void onRendererEnabled(final boolean z) {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.onRendererEnabled(z);
            }
        });
    }

    @Override
    public void onRendererStarted() {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.onRendererStarted();
            }
        });
    }

    @Override
    public void onRendererStopped() {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.onRendererStopped();
            }
        });
    }

    @Override
    public void release() {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.release();
            }
        });
        PlaceholderSurface placeholderSurface = this.placeholderSurface;
        if (placeholderSurface != null) {
            placeholderSurface.release();
        }
    }

    @Override
    public void render(long j, long j2) throws VideoSink.VideoSinkException {
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSink.render(j, j2);
        }
    }

    @Override
    public void setChangeFrameRateStrategy(final int i) {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.setChangeFrameRateStrategy(i);
            }
        });
    }

    @Override
    public void setListener(final VideoSink.Listener listener, final Executor executor) {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.setListener(listener, executor);
            }
        });
    }

    @Override
    public void setOutputSurfaceInfo(final Surface surface, final Size size) {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.setOutputSurfaceInfo(surface, size);
            }
        });
    }

    @Override
    public void setPlaybackSpeed(final float f) {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.setPlaybackSpeed(f);
            }
        });
    }

    @Override
    public void setStreamTimestampInfo(final long j, final long j2) {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.setStreamTimestampInfo(j, j2);
            }
        });
    }

    @Override
    public void setVideoEffects(final List<Effect> list) {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.setVideoEffects(list);
            }
        });
    }

    @Override
    public void setVideoFrameMetadataListener(final VideoFrameMetadataListener videoFrameMetadataListener) {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.setVideoFrameMetadataListener(videoFrameMetadataListener);
            }
        });
    }

    public void setVideoSink(@Nullable VideoSink videoSink) {
        this.videoSink = videoSink;
        if (videoSink == null) {
            return;
        }
        for (int i = 0; i < this.pendingOperations.size(); i++) {
            this.pendingOperations.get(i).execute(videoSink);
        }
        this.pendingOperations.clear();
    }

    @Override
    public void setWakeupListener(final Renderer.WakeupListener wakeupListener) {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.setWakeupListener(wakeupListener);
            }
        });
    }

    @Override
    public void signalEndOfCurrentInputStream() {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.signalEndOfCurrentInputStream();
            }
        });
    }

    @Override
    public void signalEndOfInput() {
        executeOrDelay(new VideoSinkOperation() {
            @Override
            public final void execute(VideoSink videoSink) {
                videoSink.signalEndOfInput();
            }
        });
    }
}
