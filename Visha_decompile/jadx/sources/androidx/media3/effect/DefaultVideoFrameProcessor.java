package androidx.media3.effect;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.FrameInfo;
import androidx.media3.common.GlObjectsProvider;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.OnInputFrameProcessedListener;
import androidx.media3.common.SurfaceInfo;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TimestampIterator;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.bumptech.glide.Registry;
import com.google.common.collect.ImmutableList;
import defpackage.v55;
import defpackage.y62;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

@UnstableApi
public final class DefaultVideoFrameProcessor implements VideoFrameProcessor {
    private static final String TAG = "DefaultFrameProcessor";
    public static final int WORKING_COLOR_SPACE_DEFAULT = 0;
    public static final int WORKING_COLOR_SPACE_LINEAR = 2;
    public static final int WORKING_COLOR_SPACE_ORIGINAL = 1;
    private final Context context;
    private InputStreamInfo currentInputStreamInfo;
    private final DebugViewProvider debugViewProvider;
    private final EGLDisplay eglDisplay;
    private final FinalShaderProgramWrapper finalShaderProgramWrapper;
    private final GlObjectsProvider glObjectsProvider;
    private volatile boolean inputStreamEnded;
    private final ConditionVariable inputStreamRegisteredCondition;
    private final InputSwitcher inputSwitcher;
    private final VideoFrameProcessor.Listener listener;
    private final Executor listenerExecutor;
    private volatile FrameInfo nextInputFrameInfo;

    @Nullable
    @GuardedBy("lock")
    private Runnable onInputSurfaceReadyListener;
    private final ColorInfo outputColorInfo;

    @Nullable
    @GuardedBy("lock")
    private InputStreamInfo pendingInputStreamInfo;

    @GuardedBy("lock")
    private boolean registeredFirstInputStream;
    private final boolean renderFramesAutomatically;
    private final boolean shouldReleaseGlObjectsProvider;
    private final VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor;
    private final List<Effect> activeEffects = new ArrayList();
    private final Object lock = new Object();
    private final List<GlShaderProgram> intermediateGlShaderPrograms = new ArrayList();

    public static final class Factory implements VideoFrameProcessor.Factory {
        private static final String THREAD_NAME = "Effect:DefaultVideoFrameProcessor:GlThread";

        @Nullable
        private final ExecutorService executorService;
        private final boolean experimentalAdjustSurfaceTextureTransformationMatrix;
        private final boolean experimentalRepeatInputBitmapWithoutResampling;

        @Nullable
        private final GlObjectsProvider glObjectsProvider;
        private final boolean repeatLastRegisteredFrame;
        private final int sdrWorkingColorSpace;
        private final int textureOutputCapacity;

        @Nullable
        private final GlTextureProducer.Listener textureOutputListener;

        public static final class Builder {

            @Nullable
            private ExecutorService executorService;
            private boolean experimentalAdjustSurfaceTextureTransformationMatrix;
            private boolean experimentalRepeatInputBitmapWithoutResampling;
            private GlObjectsProvider glObjectsProvider;
            private boolean requireRegisteringAllInputFrames;
            private int sdrWorkingColorSpace;
            private int textureOutputCapacity;
            private GlTextureProducer.Listener textureOutputListener;

            public Factory build() {
                return new Factory(this.sdrWorkingColorSpace, !this.requireRegisteringAllInputFrames, this.glObjectsProvider, this.executorService, this.textureOutputListener, this.textureOutputCapacity, this.experimentalAdjustSurfaceTextureTransformationMatrix, this.experimentalRepeatInputBitmapWithoutResampling);
            }

            public Builder setExecutorService(@Nullable ExecutorService executorService) {
                this.executorService = executorService;
                return this;
            }

            @Deprecated
            public Builder setExperimentalAdjustSurfaceTextureTransformationMatrix(boolean z) {
                this.experimentalAdjustSurfaceTextureTransformationMatrix = z;
                return this;
            }

            @Deprecated
            public Builder setExperimentalRepeatInputBitmapWithoutResampling(boolean z) {
                this.experimentalRepeatInputBitmapWithoutResampling = z;
                return this;
            }

            public Builder setGlObjectsProvider(GlObjectsProvider glObjectsProvider) {
                this.glObjectsProvider = glObjectsProvider;
                return this;
            }

            @Deprecated
            public Builder setRequireRegisteringAllInputFrames(boolean z) {
                this.requireRegisteringAllInputFrames = z;
                return this;
            }

            public Builder setSdrWorkingColorSpace(int i) {
                this.sdrWorkingColorSpace = i;
                return this;
            }

            public Builder setTextureOutput(GlTextureProducer.Listener listener, @IntRange(from = 1) int i) {
                this.textureOutputListener = listener;
                Assertions.checkArgument(i >= 1);
                this.textureOutputCapacity = i;
                return this;
            }

            public Builder() {
                this.sdrWorkingColorSpace = 0;
                this.requireRegisteringAllInputFrames = true;
                this.experimentalAdjustSurfaceTextureTransformationMatrix = true;
                this.experimentalRepeatInputBitmapWithoutResampling = true;
            }

            private Builder(Factory factory) {
                this.sdrWorkingColorSpace = factory.sdrWorkingColorSpace;
                this.executorService = factory.executorService;
                this.glObjectsProvider = factory.glObjectsProvider;
                this.textureOutputListener = factory.textureOutputListener;
                this.textureOutputCapacity = factory.textureOutputCapacity;
                this.requireRegisteringAllInputFrames = !factory.repeatLastRegisteredFrame;
                this.experimentalAdjustSurfaceTextureTransformationMatrix = factory.experimentalAdjustSurfaceTextureTransformationMatrix;
                this.experimentalRepeatInputBitmapWithoutResampling = factory.experimentalRepeatInputBitmapWithoutResampling;
            }
        }

        public DefaultVideoFrameProcessor lambda$create$0(Context context, DebugViewProvider debugViewProvider, ColorInfo colorInfo, boolean z, VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor, Executor executor, VideoFrameProcessor.Listener listener, GlObjectsProvider glObjectsProvider, boolean z2) throws Exception {
            return DefaultVideoFrameProcessor.createOpenGlObjectsAndFrameProcessor(context, debugViewProvider, colorInfo, this.sdrWorkingColorSpace, z, videoFrameProcessingTaskExecutor, executor, listener, glObjectsProvider, z2, this.textureOutputListener, this.textureOutputCapacity, this.repeatLastRegisteredFrame, this.experimentalAdjustSurfaceTextureTransformationMatrix, this.experimentalRepeatInputBitmapWithoutResampling);
        }

        public Builder buildUpon() {
            return new Builder();
        }

        private Factory(int i, boolean z, @Nullable GlObjectsProvider glObjectsProvider, @Nullable ExecutorService executorService, @Nullable GlTextureProducer.Listener listener, int i2, boolean z2, boolean z3) {
            this.sdrWorkingColorSpace = i;
            this.repeatLastRegisteredFrame = z;
            this.glObjectsProvider = glObjectsProvider;
            this.executorService = executorService;
            this.textureOutputListener = listener;
            this.textureOutputCapacity = i2;
            this.experimentalAdjustSurfaceTextureTransformationMatrix = z2;
            this.experimentalRepeatInputBitmapWithoutResampling = z3;
        }

        @Override
        public DefaultVideoFrameProcessor create(final Context context, final DebugViewProvider debugViewProvider, final ColorInfo colorInfo, final boolean z, final Executor executor, final VideoFrameProcessor.Listener listener) throws VideoFrameProcessingException {
            ExecutorService executorServiceNewSingleThreadExecutor = this.executorService;
            if (executorServiceNewSingleThreadExecutor == null) {
                executorServiceNewSingleThreadExecutor = Util.newSingleThreadExecutor(THREAD_NAME);
            }
            ExecutorService executorService = executorServiceNewSingleThreadExecutor;
            boolean z2 = this.executorService == null;
            Objects.requireNonNull(listener);
            final VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor = new VideoFrameProcessingTaskExecutor(executorService, z2, new VideoFrameProcessingTaskExecutor.ErrorListener() {
                @Override
                public final void onError(VideoFrameProcessingException videoFrameProcessingException) {
                    listener.onError(videoFrameProcessingException);
                }
            });
            GlObjectsProvider defaultGlObjectsProvider = this.glObjectsProvider;
            final boolean z3 = defaultGlObjectsProvider == null || this.executorService == null;
            if (defaultGlObjectsProvider == null) {
                defaultGlObjectsProvider = new DefaultGlObjectsProvider();
            }
            final GlObjectsProvider glObjectsProvider = defaultGlObjectsProvider;
            try {
                return (DefaultVideoFrameProcessor) executorService.submit(new Callable() {
                    @Override
                    public final Object call() {
                        return this.b.lambda$create$0(context, debugViewProvider, colorInfo, z, videoFrameProcessingTaskExecutor, executor, listener, glObjectsProvider, z3);
                    }
                }).get();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new VideoFrameProcessingException(e);
            } catch (ExecutionException e2) {
                throw new VideoFrameProcessingException(e2);
            }
        }
    }

    public static final class InputStreamInfo {
        public final List<Effect> effects;
        public final Format format;
        public final int inputType;
        public final long offsetToAddUs;

        public InputStreamInfo(int i, Format format, List<Effect> list, long j) {
            this.inputType = i;
            this.format = format;
            this.effects = list;
            this.offsetToAddUs = j;
        }
    }

    public interface ReleaseOutputTextureCallback {
        void release(long j);
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface WorkingColorSpace {
    }

    static {
        MediaLibraryInfo.registerModule("media3.effect");
    }

    private DefaultVideoFrameProcessor(Context context, GlObjectsProvider glObjectsProvider, boolean z, EGLDisplay eGLDisplay, InputSwitcher inputSwitcher, VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor, final VideoFrameProcessor.Listener listener, final Executor executor, FinalShaderProgramWrapper finalShaderProgramWrapper, boolean z2, ColorInfo colorInfo, DebugViewProvider debugViewProvider) {
        this.context = context;
        this.glObjectsProvider = glObjectsProvider;
        this.shouldReleaseGlObjectsProvider = z;
        this.eglDisplay = eGLDisplay;
        this.inputSwitcher = inputSwitcher;
        this.videoFrameProcessingTaskExecutor = videoFrameProcessingTaskExecutor;
        this.listener = listener;
        this.listenerExecutor = executor;
        this.renderFramesAutomatically = z2;
        this.outputColorInfo = colorInfo;
        this.debugViewProvider = debugViewProvider;
        this.finalShaderProgramWrapper = finalShaderProgramWrapper;
        ConditionVariable conditionVariable = new ConditionVariable();
        this.inputStreamRegisteredCondition = conditionVariable;
        conditionVariable.open();
        finalShaderProgramWrapper.setOnInputStreamProcessedListener(new FinalShaderProgramWrapper.OnInputStreamProcessedListener() {
            @Override
            public final void onInputStreamProcessed() {
                this.a.lambda$new$0(executor, listener);
            }
        });
    }

    private Format adjustForPixelWidthHeightRatio(Format format) {
        float f = format.pixelWidthHeightRatio;
        if (f > 1.0f) {
            return format.buildUpon().setWidth((int) (format.width * format.pixelWidthHeightRatio)).setPixelWidthHeightRatio(1.0f).build();
        }
        return f < 1.0f ? format.buildUpon().setHeight((int) (format.height / format.pixelWidthHeightRatio)).setPixelWidthHeightRatio(1.0f).build() : format;
    }

    private static void chainShaderProgramsWithListeners(GlObjectsProvider glObjectsProvider, List<GlShaderProgram> list, FinalShaderProgramWrapper finalShaderProgramWrapper, VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor, VideoFrameProcessor.Listener listener, Executor executor) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(finalShaderProgramWrapper);
        int i = 0;
        while (i < arrayList.size() - 1) {
            GlShaderProgram glShaderProgram = (GlShaderProgram) arrayList.get(i);
            i++;
            GlShaderProgram glShaderProgram2 = (GlShaderProgram) arrayList.get(i);
            ChainingGlShaderProgramListener chainingGlShaderProgramListener = new ChainingGlShaderProgramListener(glObjectsProvider, glShaderProgram, glShaderProgram2, videoFrameProcessingTaskExecutor);
            glShaderProgram.setOutputListener(chainingGlShaderProgramListener);
            Objects.requireNonNull(listener);
            glShaderProgram.setErrorListener(executor, new y62(listener));
            glShaderProgram2.setInputListener(chainingGlShaderProgramListener);
        }
    }

    private static void checkColors(ColorInfo colorInfo, ColorInfo colorInfo2) throws VideoFrameProcessingException {
        if (ColorInfo.isTransferHdr(colorInfo)) {
            Assertions.checkArgument(colorInfo.colorSpace == 6);
        }
        if (ColorInfo.isTransferHdr(colorInfo) || ColorInfo.isTransferHdr(colorInfo2)) {
            try {
                if (GlUtil.getContextMajorVersion() != 3) {
                    throw new VideoFrameProcessingException("OpenGL ES 3.0 context support is required for HDR input or output.");
                }
            } catch (GlUtil.GlException e) {
                throw VideoFrameProcessingException.from(e);
            }
        }
        Assertions.checkArgument(colorInfo.isDataSpaceValid());
        Assertions.checkArgument(colorInfo.colorTransfer != 1);
        Assertions.checkArgument(colorInfo2.isDataSpaceValid());
        Assertions.checkArgument(colorInfo2.colorTransfer != 1);
        if (ColorInfo.isTransferHdr(colorInfo) != ColorInfo.isTransferHdr(colorInfo2)) {
            Assertions.checkArgument(isSupportedToneMapping(colorInfo, colorInfo2) || isUltraHdr(colorInfo, colorInfo2));
        }
    }

    private void configure(final InputStreamInfo inputStreamInfo, boolean z) throws VideoFrameProcessingException {
        checkColors((ColorInfo) Assertions.checkNotNull(inputStreamInfo.format.colorInfo), this.outputColorInfo);
        if (z || !this.activeEffects.equals(inputStreamInfo.effects)) {
            if (!this.intermediateGlShaderPrograms.isEmpty()) {
                for (int i = 0; i < this.intermediateGlShaderPrograms.size(); i++) {
                    this.intermediateGlShaderPrograms.get(i).release();
                }
                this.intermediateGlShaderPrograms.clear();
            }
            ImmutableList.a aVarL = new ImmutableList.a().l(inputStreamInfo.effects);
            DebugViewProvider debugViewProvider = this.debugViewProvider;
            if (debugViewProvider != DebugViewProvider.NONE) {
                aVarL.a(new DebugViewEffect(debugViewProvider, this.outputColorInfo));
            }
            this.intermediateGlShaderPrograms.addAll(createGlShaderPrograms(this.context, aVarL.e(), this.outputColorInfo, this.finalShaderProgramWrapper));
            this.inputSwitcher.setDownstreamShaderProgram((GlShaderProgram) v55.f(this.intermediateGlShaderPrograms, this.finalShaderProgramWrapper));
            chainShaderProgramsWithListeners(this.glObjectsProvider, this.intermediateGlShaderPrograms, this.finalShaderProgramWrapper, this.videoFrameProcessingTaskExecutor, this.listener, this.listenerExecutor);
            this.activeEffects.clear();
            this.activeEffects.addAll(inputStreamInfo.effects);
        }
        this.inputSwitcher.switchToInput(inputStreamInfo.inputType, new FrameInfo(inputStreamInfo.format, inputStreamInfo.offsetToAddUs));
        this.inputStreamRegisteredCondition.open();
        synchronized (this.lock) {
            try {
                Runnable runnable = this.onInputSurfaceReadyListener;
                if (runnable != null) {
                    runnable.run();
                    this.onInputSurfaceReadyListener = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.listenerExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$configure$5(inputStreamInfo);
            }
        });
        InputStreamInfo inputStreamInfo2 = this.currentInputStreamInfo;
        if (inputStreamInfo2 == null || inputStreamInfo.format.frameRate != inputStreamInfo2.format.frameRate) {
            this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$configure$6(inputStreamInfo);
                }
            });
        }
        this.currentInputStreamInfo = inputStreamInfo;
    }

    private static Pair<EGLContext, EGLSurface> createFocusedEglContext(GlObjectsProvider glObjectsProvider, EGLDisplay eGLDisplay, int i, int[] iArr) throws GlUtil.GlException {
        EGLContext eGLContextCreateEglContext = glObjectsProvider.createEglContext(eGLDisplay, i, iArr);
        return Pair.create(eGLContextCreateEglContext, glObjectsProvider.createFocusedPlaceholderEglSurface(eGLContextCreateEglContext, eGLDisplay));
    }

    private static Pair<EGLContext, EGLSurface> createFocusedEglContextWithFallback(GlObjectsProvider glObjectsProvider, EGLDisplay eGLDisplay, int[] iArr) throws GlUtil.GlException {
        try {
            return createFocusedEglContext(glObjectsProvider, eGLDisplay, 3, iArr);
        } catch (GlUtil.GlException unused) {
            return createFocusedEglContext(glObjectsProvider, eGLDisplay, 2, iArr);
        }
    }

    private static ImmutableList<GlShaderProgram> createGlShaderPrograms(Context context, List<Effect> list, ColorInfo colorInfo, FinalShaderProgramWrapper finalShaderProgramWrapper) throws VideoFrameProcessingException {
        ImmutableList.a aVar = new ImmutableList.a();
        ImmutableList.a aVar2 = new ImmutableList.a();
        ImmutableList.a aVar3 = new ImmutableList.a();
        for (int i = 0; i < list.size(); i++) {
            Effect effect = list.get(i);
            Assertions.checkArgument(effect instanceof GlEffect, "DefaultVideoFrameProcessor only supports GlEffects");
            GlEffect glEffect = (GlEffect) effect;
            if (glEffect instanceof GlMatrixTransformation) {
                aVar2.a((GlMatrixTransformation) glEffect);
            } else if (glEffect instanceof RgbMatrix) {
                aVar3.a((RgbMatrix) glEffect);
            } else {
                boolean zIsTransferHdr = ColorInfo.isTransferHdr(colorInfo);
                ImmutableList immutableListE = aVar2.e();
                ImmutableList immutableListE2 = aVar3.e();
                if (!immutableListE.isEmpty() || !immutableListE2.isEmpty()) {
                    aVar.a(DefaultShaderProgram.create(context, immutableListE, immutableListE2, zIsTransferHdr));
                    aVar2 = new ImmutableList.a();
                    aVar3 = new ImmutableList.a();
                }
                aVar.a(glEffect.toGlShaderProgram(context, zIsTransferHdr));
            }
        }
        finalShaderProgramWrapper.setMatrixTransformations(aVar2.e(), aVar3.e());
        return aVar.e();
    }

    public static DefaultVideoFrameProcessor createOpenGlObjectsAndFrameProcessor(Context context, DebugViewProvider debugViewProvider, ColorInfo colorInfo, int i, boolean z, VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor, Executor executor, VideoFrameProcessor.Listener listener, GlObjectsProvider glObjectsProvider, boolean z2, @Nullable GlTextureProducer.Listener listener2, int i2, boolean z3, boolean z4, boolean z5) throws VideoFrameProcessingException, GlUtil.GlException {
        EGLDisplay defaultEglDisplay = GlUtil.getDefaultEglDisplay();
        Pair<EGLContext, EGLSurface> pairCreateFocusedEglContextWithFallback = createFocusedEglContextWithFallback(glObjectsProvider, defaultEglDisplay, ColorInfo.isTransferHdr(colorInfo) ? GlUtil.EGL_CONFIG_ATTRIBUTES_RGBA_1010102 : GlUtil.EGL_CONFIG_ATTRIBUTES_RGBA_8888);
        ColorInfo colorInfoBuild = (ColorInfo.isTransferHdr(colorInfo) || i == 2) ? colorInfo.buildUpon().setColorTransfer(1).setHdrStaticInfo(null).build() : colorInfo;
        Objects.requireNonNull(listener);
        return new DefaultVideoFrameProcessor(context, glObjectsProvider, z2, defaultEglDisplay, new InputSwitcher(context, colorInfoBuild, glObjectsProvider, videoFrameProcessingTaskExecutor, executor, new y62(listener), i, z3, z4, z5), videoFrameProcessingTaskExecutor, listener, executor, new FinalShaderProgramWrapper(context, defaultEglDisplay, (EGLContext) pairCreateFocusedEglContextWithFallback.first, (EGLSurface) pairCreateFocusedEglContextWithFallback.second, colorInfo, videoFrameProcessingTaskExecutor, executor, listener, listener2, i2, i, z), z, colorInfo, debugViewProvider);
    }

    private static String getInputTypeString(int i) {
        if (i == 1) {
            return "Surface";
        }
        if (i == 2) {
            return Registry.BUCKET_BITMAP;
        }
        if (i == 3) {
            return "Texture ID";
        }
        if (i == 4) {
            return "Surface with automatic frame registration";
        }
        throw new IllegalArgumentException(String.valueOf(i));
    }

    private static boolean isSupportedToneMapping(ColorInfo colorInfo, ColorInfo colorInfo2) {
        int i;
        return colorInfo.colorSpace == 6 && colorInfo2.colorSpace != 6 && ColorInfo.isTransferHdr(colorInfo) && ((i = colorInfo2.colorTransfer) == 10 || i == 3);
    }

    private static boolean isUltraHdr(ColorInfo colorInfo, ColorInfo colorInfo2) {
        return colorInfo.equals(ColorInfo.SRGB_BT709_FULL) && colorInfo2.colorSpace == 6 && ColorInfo.isTransferHdr(colorInfo2);
    }

    public void lambda$configure$5(InputStreamInfo inputStreamInfo) {
        this.listener.onInputStreamRegistered(inputStreamInfo.inputType, inputStreamInfo.format, inputStreamInfo.effects);
    }

    public void lambda$configure$6(InputStreamInfo inputStreamInfo) {
        this.listener.onOutputFrameRateChanged(inputStreamInfo.format.frameRate);
    }

    public void lambda$new$0(Executor executor, final VideoFrameProcessor.Listener listener) {
        if (!this.inputStreamEnded) {
            submitPendingInputStream();
            return;
        }
        Objects.requireNonNull(listener);
        executor.execute(new Runnable() {
            @Override
            public final void run() {
                listener.onEnded();
            }
        });
        DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_VFP, DebugTraceUtil.EVENT_SIGNAL_ENDED, Long.MIN_VALUE);
    }

    public void lambda$registerInputStream$1(InterruptedException interruptedException) {
        this.listener.onError(VideoFrameProcessingException.from(interruptedException));
    }

    public void lambda$registerInputStream$2(InputStreamInfo inputStreamInfo) throws VideoFrameProcessingException, GlUtil.GlException {
        configure(inputStreamInfo, true);
    }

    public void lambda$renderOutputFrame$3(long j) throws VideoFrameProcessingException, GlUtil.GlException {
        this.finalShaderProgramWrapper.renderOutputFrame(this.glObjectsProvider, j);
    }

    public void lambda$submitPendingInputStream$4(InputStreamInfo inputStreamInfo) throws VideoFrameProcessingException, GlUtil.GlException {
        configure(inputStreamInfo, false);
    }

    public void releaseGlObjects() {
        try {
            try {
                this.inputSwitcher.release();
                for (int i = 0; i < this.intermediateGlShaderPrograms.size(); i++) {
                    this.intermediateGlShaderPrograms.get(i).release();
                }
                this.finalShaderProgramWrapper.release();
            } finally {
                if (this.shouldReleaseGlObjectsProvider) {
                    try {
                        this.glObjectsProvider.release(this.eglDisplay);
                    } catch (GlUtil.GlException e) {
                        Log.e(TAG, "Error releasing GL objects", e);
                    }
                }
            }
        } catch (Exception e2) {
            Log.e(TAG, "Error releasing shader program", e2);
        }
    }

    private void submitPendingInputStream() {
        synchronized (this.lock) {
            try {
                final InputStreamInfo inputStreamInfo = this.pendingInputStreamInfo;
                if (inputStreamInfo != null) {
                    this.videoFrameProcessingTaskExecutor.submit(new VideoFrameProcessingTaskExecutor.Task() {
                        @Override
                        public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
                            this.a.lambda$submitPendingInputStream$4(inputStreamInfo);
                        }
                    });
                    this.pendingInputStreamInfo = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void flush() {
        if (this.inputSwitcher.hasActiveInput()) {
            this.inputStreamEnded = false;
            try {
                TextureManager textureManagerActiveTextureManager = this.inputSwitcher.activeTextureManager();
                textureManagerActiveTextureManager.dropIncomingRegisteredFrames();
                this.videoFrameProcessingTaskExecutor.flush();
                textureManagerActiveTextureManager.releaseAllRegisteredFrames();
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                textureManagerActiveTextureManager.setOnFlushCompleteListener(new VideoFrameProcessingTaskExecutor.Task() {
                    @Override
                    public final void run() {
                        countDownLatch.countDown();
                    }
                });
                VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor = this.videoFrameProcessingTaskExecutor;
                final FinalShaderProgramWrapper finalShaderProgramWrapper = this.finalShaderProgramWrapper;
                Objects.requireNonNull(finalShaderProgramWrapper);
                videoFrameProcessingTaskExecutor.submit(new VideoFrameProcessingTaskExecutor.Task() {
                    @Override
                    public final void run() {
                        finalShaderProgramWrapper.flush();
                    }
                });
                countDownLatch.await();
                textureManagerActiveTextureManager.setOnFlushCompleteListener(null);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
            submitPendingInputStream();
        }
    }

    @Override
    public Surface getInputSurface() {
        return this.inputSwitcher.getInputSurface();
    }

    @Override
    public int getPendingInputFrameCount() {
        if (this.inputSwitcher.hasActiveInput()) {
            return this.inputSwitcher.activeTextureManager().getPendingFrameCount();
        }
        return 0;
    }

    @VisibleForTesting
    public VideoFrameProcessingTaskExecutor getTaskExecutor() {
        return this.videoFrameProcessingTaskExecutor;
    }

    @Override
    public boolean queueInputBitmap(Bitmap bitmap, TimestampIterator timestampIterator) {
        Assertions.checkState(!this.inputStreamEnded);
        boolean z = false;
        if (!this.inputStreamRegisteredCondition.isOpen()) {
            return false;
        }
        if (ColorInfo.isTransferHdr(this.outputColorInfo)) {
            if (Util.SDK_INT >= 34 && bitmap.hasGainmap()) {
                z = true;
            }
            Assertions.checkArgument(z, "VideoFrameProcessor configured for HDR output, but either received SDR input, or is on an API level that doesn't support gainmaps. SDR to HDR tonemapping is not supported.");
        }
        this.inputSwitcher.activeTextureManager().queueInputBitmap(bitmap, (FrameInfo) Assertions.checkNotNull(this.nextInputFrameInfo), timestampIterator);
        return true;
    }

    @Override
    public boolean queueInputTexture(int i, long j) {
        Assertions.checkState(!this.inputStreamEnded);
        if (!this.inputStreamRegisteredCondition.isOpen()) {
            return false;
        }
        this.inputSwitcher.activeTextureManager().queueInputTexture(i, j);
        return true;
    }

    @Override
    public boolean registerInputFrame() {
        Assertions.checkState(!this.inputStreamEnded);
        Assertions.checkStateNotNull(this.nextInputFrameInfo, "registerInputStream must be called before registering input frames");
        if (!this.inputStreamRegisteredCondition.isOpen()) {
            return false;
        }
        this.inputSwitcher.activeTextureManager().registerInputFrame(this.nextInputFrameInfo);
        return true;
    }

    @Override
    public void registerInputStream(int i, Format format, List<Effect> list, long j) {
        DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_VFP, DebugTraceUtil.EVENT_REGISTER_NEW_INPUT_STREAM, j, "InputType %s - %dx%d", getInputTypeString(i), Integer.valueOf(format.width), Integer.valueOf(format.height));
        this.nextInputFrameInfo = new FrameInfo(adjustForPixelWidthHeightRatio(format), j);
        try {
            this.inputStreamRegisteredCondition.block();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            this.listenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$registerInputStream$1(e);
                }
            });
        }
        synchronized (this.lock) {
            try {
                final InputStreamInfo inputStreamInfo = new InputStreamInfo(i, format, list, j);
                if (this.registeredFirstInputStream) {
                    this.pendingInputStreamInfo = inputStreamInfo;
                    this.inputStreamRegisteredCondition.close();
                    this.inputSwitcher.signalEndOfCurrentInputStream();
                } else {
                    this.registeredFirstInputStream = true;
                    this.inputStreamRegisteredCondition.close();
                    this.videoFrameProcessingTaskExecutor.submit(new VideoFrameProcessingTaskExecutor.Task() {
                        @Override
                        public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
                            this.a.lambda$registerInputStream$2(inputStreamInfo);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void release() {
        try {
            this.videoFrameProcessingTaskExecutor.release(new VideoFrameProcessingTaskExecutor.Task() {
                @Override
                public final void run() {
                    this.a.releaseGlObjects();
                }
            });
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new IllegalStateException(e);
        }
    }

    @Override
    public void renderOutputFrame(final long j) {
        Assertions.checkState(!this.renderFramesAutomatically, "Calling this method is not allowed when renderFramesAutomatically is enabled");
        this.videoFrameProcessingTaskExecutor.submitWithHighPriority(new VideoFrameProcessingTaskExecutor.Task() {
            @Override
            public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
                this.a.lambda$renderOutputFrame$3(j);
            }
        });
    }

    @Deprecated
    public void setInputDefaultBufferSize(int i, int i2) {
        this.inputSwitcher.setInputDefaultBufferSize(i, i2);
    }

    @Override
    public void setOnInputFrameProcessedListener(OnInputFrameProcessedListener onInputFrameProcessedListener) {
        this.inputSwitcher.setOnInputFrameProcessedListener(onInputFrameProcessedListener);
    }

    @Override
    public void setOnInputSurfaceReadyListener(Runnable runnable) {
        synchronized (this.lock) {
            try {
                if (this.inputStreamRegisteredCondition.isOpen()) {
                    runnable.run();
                } else {
                    this.onInputSurfaceReadyListener = runnable;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void setOutputSurfaceInfo(@Nullable SurfaceInfo surfaceInfo) {
        this.finalShaderProgramWrapper.setOutputSurfaceInfo(surfaceInfo);
    }

    @Override
    public void signalEndOfInput() {
        DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_VFP, DebugTraceUtil.EVENT_RECEIVE_END_OF_ALL_INPUT, Long.MIN_VALUE);
        Assertions.checkState(!this.inputStreamEnded);
        this.inputStreamEnded = true;
        this.inputSwitcher.signalEndOfCurrentInputStream();
    }
}
