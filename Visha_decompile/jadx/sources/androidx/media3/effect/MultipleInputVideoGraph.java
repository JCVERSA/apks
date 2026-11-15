package androidx.media3.effect;

import android.content.Context;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.util.SparseArray;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.GlObjectsProvider;
import androidx.media3.common.GlTextureInfo;
import androidx.media3.common.OnInputFrameProcessedListener;
import androidx.media3.common.SurfaceInfo;
import androidx.media3.common.VideoCompositorSettings;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoGraph;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.effect.GlTextureProducer;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

@UnstableApi
public abstract class MultipleInputVideoGraph implements VideoGraph {
    private static final int COMPOSITOR_TEXTURE_OUTPUT_CAPACITY = 1;
    private static final int PRE_COMPOSITOR_TEXTURE_OUTPUT_CAPACITY = 2;
    private static final long RELEASE_WAIT_TIME_MS = 1000;
    private static final String SHARED_EXECUTOR_NAME = "Effect:MultipleInputVideoGraph:Thread";
    private static final String TAG = "MultiInputVG";
    private final List<Effect> compositionEffects;

    @Nullable
    private VideoFrameProcessor compositionVideoFrameProcessor;
    private boolean compositionVideoFrameProcessorInputStreamRegistered;
    private boolean compositionVideoFrameProcessorInputStreamRegistrationCompleted;
    private boolean compositorEnded;
    private final SparseArray<CompositorOutputTextureRelease> compositorOutputTextureReleases;
    private final Queue<CompositorOutputTextureInfo> compositorOutputTextures;
    private final Context context;
    private final DebugViewProvider debugViewProvider;
    private final GlObjectsProvider glObjectsProvider;
    private volatile boolean hasProducedFrameWithTimestampZero;
    private final long initialTimestampOffsetUs;
    private long lastRenderedPresentationTimeUs;
    private final VideoGraph.Listener listener;
    private final Executor listenerExecutor;
    private final ColorInfo outputColorInfo;
    private final SparseArray<VideoFrameProcessor> preProcessors;
    private boolean released;
    private final boolean renderFramesAutomatically;
    private final ExecutorService sharedExecutorService;

    @Nullable
    private VideoCompositor videoCompositor;
    private final VideoCompositorSettings videoCompositorSettings;
    private final DefaultVideoFrameProcessor.Factory videoFrameProcessorFactory;

    public class AnonymousClass1 implements VideoFrameProcessor.Listener {
        public AnonymousClass1() {
        }

        public void lambda$onEnded$3() {
            MultipleInputVideoGraph.this.listener.onEnded(MultipleInputVideoGraph.this.lastRenderedPresentationTimeUs);
        }

        public void lambda$onOutputFrameAvailableForRendering$2(long j) {
            MultipleInputVideoGraph.this.listener.onOutputFrameAvailableForRendering(j);
        }

        public void lambda$onOutputFrameRateChanged$1(float f) {
            MultipleInputVideoGraph.this.listener.onOutputFrameRateChanged(f);
        }

        public void lambda$onOutputSizeChanged$0(int i, int i2) {
            MultipleInputVideoGraph.this.listener.onOutputSizeChanged(i, i2);
        }

        @Override
        public void onEnded() {
            MultipleInputVideoGraph.this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onEnded$3();
                }
            });
        }

        @Override
        public void onError(VideoFrameProcessingException videoFrameProcessingException) {
            MultipleInputVideoGraph.this.handleVideoFrameProcessingException(videoFrameProcessingException);
        }

        @Override
        public void onInputStreamRegistered(int i, Format format, List<Effect> list) {
            MultipleInputVideoGraph.this.compositionVideoFrameProcessorInputStreamRegistrationCompleted = true;
            MultipleInputVideoGraph.this.queueCompositionOutputInternal();
        }

        @Override
        public void onOutputFrameAvailableForRendering(final long j) {
            if (j == 0) {
                MultipleInputVideoGraph.this.hasProducedFrameWithTimestampZero = true;
            }
            MultipleInputVideoGraph.this.lastRenderedPresentationTimeUs = j;
            MultipleInputVideoGraph.this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onOutputFrameAvailableForRendering$2(j);
                }
            });
        }

        @Override
        public void onOutputFrameRateChanged(final float f) {
            MultipleInputVideoGraph.this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onOutputFrameRateChanged$1(f);
                }
            });
        }

        @Override
        public void onOutputSizeChanged(final int i, final int i2) {
            MultipleInputVideoGraph.this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$onOutputSizeChanged$0(i, i2);
                }
            });
        }
    }

    public static final class CompositorOutputTextureInfo {
        public final GlTextureInfo glTextureInfo;
        public final long presentationTimeUs;

        public CompositorOutputTextureInfo(GlTextureInfo glTextureInfo, long j, AnonymousClass1 anonymousClass1) {
            this(glTextureInfo, j);
        }

        private CompositorOutputTextureInfo(GlTextureInfo glTextureInfo, long j) {
            this.glTextureInfo = glTextureInfo;
            this.presentationTimeUs = j;
        }
    }

    public static final class CompositorOutputTextureRelease {
        private final long presentationTimeUs;
        private final GlTextureProducer textureProducer;

        public CompositorOutputTextureRelease(GlTextureProducer glTextureProducer, long j) {
            this.textureProducer = glTextureProducer;
            this.presentationTimeUs = j;
        }

        public void release() {
            this.textureProducer.releaseOutputTexture(this.presentationTimeUs);
        }
    }

    public static final class SingleContextGlObjectsProvider implements GlObjectsProvider {
        private final GlObjectsProvider glObjectsProvider = new DefaultGlObjectsProvider();
        private EGLContext singleEglContext;

        @Override
        public GlTextureInfo createBuffersForTexture(int i, int i2, int i3) throws GlUtil.GlException {
            return this.glObjectsProvider.createBuffersForTexture(i, i2, i3);
        }

        @Override
        public EGLContext createEglContext(EGLDisplay eGLDisplay, int i, int[] iArr) throws GlUtil.GlException {
            if (this.singleEglContext == null) {
                this.singleEglContext = this.glObjectsProvider.createEglContext(eGLDisplay, i, iArr);
            }
            return this.singleEglContext;
        }

        @Override
        public EGLSurface createEglSurface(EGLDisplay eGLDisplay, Object obj, int i, boolean z) throws GlUtil.GlException {
            return this.glObjectsProvider.createEglSurface(eGLDisplay, obj, i, z);
        }

        @Override
        public EGLSurface createFocusedPlaceholderEglSurface(EGLContext eGLContext, EGLDisplay eGLDisplay) throws GlUtil.GlException {
            return this.glObjectsProvider.createFocusedPlaceholderEglSurface(eGLContext, eGLDisplay);
        }

        @Override
        public void release(EGLDisplay eGLDisplay) throws GlUtil.GlException {
            EGLContext eGLContext = this.singleEglContext;
            if (eGLContext != null) {
                GlUtil.destroyEglContext(eGLDisplay, eGLContext);
            }
        }
    }

    public MultipleInputVideoGraph(Context context, VideoFrameProcessor.Factory factory, ColorInfo colorInfo, DebugViewProvider debugViewProvider, VideoGraph.Listener listener, Executor executor, VideoCompositorSettings videoCompositorSettings, List<Effect> list, long j, boolean z) {
        Assertions.checkArgument(factory instanceof DefaultVideoFrameProcessor.Factory);
        this.context = context;
        this.outputColorInfo = colorInfo;
        this.debugViewProvider = debugViewProvider;
        this.listener = listener;
        this.listenerExecutor = executor;
        this.videoCompositorSettings = videoCompositorSettings;
        this.compositionEffects = new ArrayList(list);
        this.initialTimestampOffsetUs = j;
        this.renderFramesAutomatically = z;
        this.lastRenderedPresentationTimeUs = C.TIME_UNSET;
        this.preProcessors = new SparseArray<>();
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Util.newSingleThreadScheduledExecutor(SHARED_EXECUTOR_NAME);
        this.sharedExecutorService = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        SingleContextGlObjectsProvider singleContextGlObjectsProvider = new SingleContextGlObjectsProvider();
        this.glObjectsProvider = singleContextGlObjectsProvider;
        this.videoFrameProcessorFactory = ((DefaultVideoFrameProcessor.Factory) factory).buildUpon().setGlObjectsProvider(singleContextGlObjectsProvider).setExecutorService(scheduledExecutorServiceNewSingleThreadScheduledExecutor).build();
        this.compositorOutputTextures = new ArrayDeque();
        this.compositorOutputTextureReleases = new SparseArray<>();
    }

    public void handleVideoFrameProcessingException(final Exception exc) {
        this.listenerExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$handleVideoFrameProcessingException$2(exc);
            }
        });
    }

    public void lambda$handleVideoFrameProcessingException$2(Exception exc) {
        this.listener.onError(exc instanceof VideoFrameProcessingException ? (VideoFrameProcessingException) exc : VideoFrameProcessingException.from(exc));
    }

    public void lambda$registerInput$0(int i, GlTextureProducer glTextureProducer, GlTextureInfo glTextureInfo, long j, long j2) throws VideoFrameProcessingException, GlUtil.GlException {
        queuePreProcessingOutputToCompositor(i, glTextureProducer, glTextureInfo, j);
    }

    public void lambda$release$1() {
        try {
            this.glObjectsProvider.release(GlUtil.getDefaultEglDisplay());
        } catch (Exception e) {
            Log.e(TAG, "Error releasing GlObjectsProvider", e);
        }
    }

    public void onCompositionVideoFrameProcessorInputFrameProcessed(int i, long j) {
        Assertions.checkState(Util.contains(this.compositorOutputTextureReleases, i));
        this.compositorOutputTextureReleases.get(i).release();
        this.compositorOutputTextureReleases.remove(i);
        queueCompositionOutputInternal();
    }

    public void onPreProcessingVideoFrameProcessorEnded(int i) {
        ((VideoCompositor) Assertions.checkNotNull(this.videoCompositor)).signalEndOfInputSource(i);
    }

    public void onVideoCompositorEnded() {
        this.compositorEnded = true;
        if (this.compositorOutputTextures.isEmpty()) {
            ((VideoFrameProcessor) Assertions.checkNotNull(this.compositionVideoFrameProcessor)).signalEndOfInput();
        } else {
            queueCompositionOutputInternal();
        }
    }

    public void processCompositorOutputTexture(GlTextureProducer glTextureProducer, GlTextureInfo glTextureInfo, long j, long j2) {
        Assertions.checkStateNotNull(this.compositionVideoFrameProcessor);
        Assertions.checkState(!this.compositorEnded);
        DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_COMPOSITOR, DebugTraceUtil.EVENT_OUTPUT_TEXTURE_RENDERED, j);
        this.compositorOutputTextures.add(new CompositorOutputTextureInfo(glTextureInfo, j, null));
        this.compositorOutputTextureReleases.put(glTextureInfo.texId, new CompositorOutputTextureRelease(glTextureProducer, j));
        if (this.compositionVideoFrameProcessorInputStreamRegistered) {
            queueCompositionOutputInternal();
        } else {
            ((VideoFrameProcessor) Assertions.checkNotNull(this.compositionVideoFrameProcessor)).registerInputStream(3, new Format.Builder().setColorInfo(this.outputColorInfo).setWidth(glTextureInfo.width).setHeight(glTextureInfo.height).build(), this.compositionEffects, 0L);
            this.compositionVideoFrameProcessorInputStreamRegistered = true;
        }
    }

    public void queueCompositionOutputInternal() {
        CompositorOutputTextureInfo compositorOutputTextureInfoPeek;
        Assertions.checkStateNotNull(this.compositionVideoFrameProcessor);
        if (this.compositionVideoFrameProcessorInputStreamRegistrationCompleted && (compositorOutputTextureInfoPeek = this.compositorOutputTextures.peek()) != null) {
            Assertions.checkState(((VideoFrameProcessor) Assertions.checkNotNull(this.compositionVideoFrameProcessor)).queueInputTexture(compositorOutputTextureInfoPeek.glTextureInfo.texId, compositorOutputTextureInfoPeek.presentationTimeUs));
            this.compositorOutputTextures.remove();
            if (this.compositorEnded && this.compositorOutputTextures.isEmpty()) {
                ((VideoFrameProcessor) Assertions.checkNotNull(this.compositionVideoFrameProcessor)).signalEndOfInput();
            }
        }
    }

    private void queuePreProcessingOutputToCompositor(int i, GlTextureProducer glTextureProducer, GlTextureInfo glTextureInfo, long j) {
        DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_VFP, DebugTraceUtil.EVENT_OUTPUT_TEXTURE_RENDERED, j);
        ((VideoCompositor) Assertions.checkNotNull(this.videoCompositor)).queueInputTexture(i, glTextureProducer, glTextureInfo, this.outputColorInfo, j);
    }

    public VideoFrameProcessor getCompositionVideoFrameProcessor() {
        return (VideoFrameProcessor) Assertions.checkStateNotNull(this.compositionVideoFrameProcessor);
    }

    public long getInitialTimestampOffsetUs() {
        return this.initialTimestampOffsetUs;
    }

    @Override
    public VideoFrameProcessor getProcessor(int i) {
        Assertions.checkState(Util.contains(this.preProcessors, i));
        return this.preProcessors.get(i);
    }

    @Override
    public boolean hasProducedFrameWithTimestampZero() {
        return this.hasProducedFrameWithTimestampZero;
    }

    @Override
    public void initialize() throws VideoFrameProcessingException {
        Assertions.checkState(this.preProcessors.size() == 0 && this.videoCompositor == null && this.compositionVideoFrameProcessor == null && !this.released);
        DefaultVideoFrameProcessor defaultVideoFrameProcessorCreate = this.videoFrameProcessorFactory.create(this.context, this.debugViewProvider, this.outputColorInfo, this.renderFramesAutomatically, MoreExecutors.a(), (VideoFrameProcessor.Listener) new AnonymousClass1());
        this.compositionVideoFrameProcessor = defaultVideoFrameProcessorCreate;
        defaultVideoFrameProcessorCreate.setOnInputFrameProcessedListener(new OnInputFrameProcessedListener() {
            @Override
            public final void onInputFrameProcessed(int i, long j) {
                this.a.onCompositionVideoFrameProcessorInputFrameProcessed(i, j);
            }
        });
        this.videoCompositor = new DefaultVideoCompositor(this.context, this.glObjectsProvider, this.videoCompositorSettings, this.sharedExecutorService, new VideoCompositor.Listener() {
            @Override
            public void onEnded() {
                MultipleInputVideoGraph.this.onVideoCompositorEnded();
            }

            @Override
            public void onError(VideoFrameProcessingException videoFrameProcessingException) {
                MultipleInputVideoGraph.this.handleVideoFrameProcessingException(videoFrameProcessingException);
            }
        }, new GlTextureProducer.Listener() {
            @Override
            public final void onTextureRendered(GlTextureProducer glTextureProducer, GlTextureInfo glTextureInfo, long j, long j2) {
                this.a.processCompositorOutputTexture(glTextureProducer, glTextureInfo, j, j2);
            }
        }, 1);
    }

    @Override
    public void registerInput(@IntRange(from = 0) final int i) throws VideoFrameProcessingException {
        Assertions.checkState(!Util.contains(this.preProcessors, i));
        ((VideoCompositor) Assertions.checkNotNull(this.videoCompositor)).registerInputSource(i);
        this.preProcessors.put(i, this.videoFrameProcessorFactory.buildUpon().setTextureOutput(new GlTextureProducer.Listener() {
            @Override
            public final void onTextureRendered(GlTextureProducer glTextureProducer, GlTextureInfo glTextureInfo, long j, long j2) throws VideoFrameProcessingException, GlUtil.GlException {
                this.a.lambda$registerInput$0(i, glTextureProducer, glTextureInfo, j, j2);
            }
        }, 2).build().create(this.context, DebugViewProvider.NONE, this.outputColorInfo, true, this.listenerExecutor, new VideoFrameProcessor.Listener() {
            @Override
            public void onEnded() {
                MultipleInputVideoGraph.this.onPreProcessingVideoFrameProcessorEnded(i);
            }

            @Override
            public void onError(VideoFrameProcessingException videoFrameProcessingException) {
                MultipleInputVideoGraph.this.handleVideoFrameProcessingException(videoFrameProcessingException);
            }
        }));
    }

    @Override
    public void release() {
        if (this.released) {
            return;
        }
        for (int i = 0; i < this.preProcessors.size(); i++) {
            SparseArray<VideoFrameProcessor> sparseArray = this.preProcessors;
            sparseArray.get(sparseArray.keyAt(i)).release();
        }
        this.preProcessors.clear();
        VideoCompositor videoCompositor = this.videoCompositor;
        if (videoCompositor != null) {
            videoCompositor.release();
            this.videoCompositor = null;
        }
        VideoFrameProcessor videoFrameProcessor = this.compositionVideoFrameProcessor;
        if (videoFrameProcessor != null) {
            videoFrameProcessor.release();
            this.compositionVideoFrameProcessor = null;
        }
        this.sharedExecutorService.submit(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$release$1();
            }
        });
        this.sharedExecutorService.shutdown();
        try {
            this.sharedExecutorService.awaitTermination(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            Log.e(TAG, "Thread interrupted while waiting for executor service termination");
        }
        this.released = true;
    }

    @Override
    public void setOutputSurfaceInfo(@Nullable SurfaceInfo surfaceInfo) {
        ((VideoFrameProcessor) Assertions.checkNotNull(this.compositionVideoFrameProcessor)).setOutputSurfaceInfo(surfaceInfo);
    }
}
