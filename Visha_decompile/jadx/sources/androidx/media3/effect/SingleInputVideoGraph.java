package androidx.media3.effect;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.SurfaceInfo;
import androidx.media3.common.VideoCompositorSettings;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoGraph;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.Executor;

@UnstableApi
public abstract class SingleInputVideoGraph implements VideoGraph {
    private final Context context;
    private final DebugViewProvider debugViewProvider;
    private volatile boolean hasProducedFrameWithTimestampZero;
    private final long initialTimestampOffsetUs;
    private int inputIndex;
    private final VideoGraph.Listener listener;
    private final Executor listenerExecutor;
    private final ColorInfo outputColorInfo;

    @Nullable
    private SurfaceInfo outputSurfaceInfo;
    private boolean released;
    private final boolean renderFramesAutomatically;

    @Nullable
    private VideoFrameProcessor videoFrameProcessor;
    private final VideoFrameProcessor.Factory videoFrameProcessorFactory;

    public class AnonymousClass1 implements VideoFrameProcessor.Listener {
        private long lastProcessedFramePresentationTimeUs;

        public AnonymousClass1() {
        }

        public void lambda$onEnded$4() {
            SingleInputVideoGraph.this.listener.onEnded(this.lastProcessedFramePresentationTimeUs);
        }

        public void lambda$onError$3(VideoFrameProcessingException videoFrameProcessingException) {
            SingleInputVideoGraph.this.listener.onError(videoFrameProcessingException);
        }

        public void lambda$onOutputFrameAvailableForRendering$2(long j) {
            SingleInputVideoGraph.this.listener.onOutputFrameAvailableForRendering(j);
        }

        public void lambda$onOutputFrameRateChanged$1(float f) {
            SingleInputVideoGraph.this.listener.onOutputFrameRateChanged(f);
        }

        public void lambda$onOutputSizeChanged$0(int i, int i2) {
            SingleInputVideoGraph.this.listener.onOutputSizeChanged(i, i2);
        }

        @Override
        public void onEnded() {
            SingleInputVideoGraph.this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onEnded$4();
                }
            });
        }

        @Override
        public void onError(final VideoFrameProcessingException videoFrameProcessingException) {
            SingleInputVideoGraph.this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onError$3(videoFrameProcessingException);
                }
            });
        }

        @Override
        public void onOutputFrameAvailableForRendering(final long j) {
            if (j == 0) {
                SingleInputVideoGraph.this.hasProducedFrameWithTimestampZero = true;
            }
            this.lastProcessedFramePresentationTimeUs = j;
            SingleInputVideoGraph.this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onOutputFrameAvailableForRendering$2(j);
                }
            });
        }

        @Override
        public void onOutputFrameRateChanged(final float f) {
            SingleInputVideoGraph.this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onOutputFrameRateChanged$1(f);
                }
            });
        }

        @Override
        public void onOutputSizeChanged(final int i, final int i2) {
            SingleInputVideoGraph.this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onOutputSizeChanged$0(i, i2);
                }
            });
        }
    }

    public SingleInputVideoGraph(Context context, VideoFrameProcessor.Factory factory, ColorInfo colorInfo, VideoGraph.Listener listener, DebugViewProvider debugViewProvider, Executor executor, VideoCompositorSettings videoCompositorSettings, boolean z, long j) {
        Assertions.checkState(VideoCompositorSettings.DEFAULT.equals(videoCompositorSettings), "SingleInputVideoGraph does not use VideoCompositor, and therefore cannot apply VideoCompositorSettings");
        this.context = context;
        this.videoFrameProcessorFactory = factory;
        this.outputColorInfo = colorInfo;
        this.listener = listener;
        this.debugViewProvider = debugViewProvider;
        this.listenerExecutor = executor;
        this.renderFramesAutomatically = z;
        this.initialTimestampOffsetUs = j;
        this.inputIndex = -1;
    }

    public long getInitialTimestampOffsetUs() {
        return this.initialTimestampOffsetUs;
    }

    public int getInputIndex() {
        return this.inputIndex;
    }

    @Override
    public VideoFrameProcessor getProcessor(int i) {
        int i2 = this.inputIndex;
        Assertions.checkArgument(i2 != -1 && i2 == i);
        return (VideoFrameProcessor) Assertions.checkStateNotNull(this.videoFrameProcessor);
    }

    @Override
    public boolean hasProducedFrameWithTimestampZero() {
        return this.hasProducedFrameWithTimestampZero;
    }

    @Override
    public void initialize() {
    }

    @Override
    public void registerInput(int i) throws VideoFrameProcessingException {
        Assertions.checkStateNotNull(Boolean.valueOf(this.videoFrameProcessor == null && !this.released));
        Assertions.checkState(this.inputIndex == -1, "This VideoGraph supports only one input.");
        this.inputIndex = i;
        VideoFrameProcessor videoFrameProcessorCreate = this.videoFrameProcessorFactory.create(this.context, this.debugViewProvider, this.outputColorInfo, this.renderFramesAutomatically, MoreExecutors.a(), new AnonymousClass1());
        this.videoFrameProcessor = videoFrameProcessorCreate;
        SurfaceInfo surfaceInfo = this.outputSurfaceInfo;
        if (surfaceInfo != null) {
            videoFrameProcessorCreate.setOutputSurfaceInfo(surfaceInfo);
        }
    }

    @Override
    public void release() {
        if (this.released) {
            return;
        }
        VideoFrameProcessor videoFrameProcessor = this.videoFrameProcessor;
        if (videoFrameProcessor != null) {
            videoFrameProcessor.release();
            this.videoFrameProcessor = null;
        }
        this.released = true;
    }

    @Override
    public void setOutputSurfaceInfo(@Nullable SurfaceInfo surfaceInfo) {
        this.outputSurfaceInfo = surfaceInfo;
        VideoFrameProcessor videoFrameProcessor = this.videoFrameProcessor;
        if (videoFrameProcessor != null) {
            videoFrameProcessor.setOutputSurfaceInfo(surfaceInfo);
        }
    }
}
