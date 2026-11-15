package androidx.media3.effect;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.GlObjectsProvider;
import androidx.media3.common.GlTextureInfo;
import androidx.media3.common.SurfaceInfo;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.LongArrayQueue;
import androidx.media3.common.util.Size;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;

final class FinalShaderProgramWrapper implements GlShaderProgram, GlTextureProducer {
    private static final int SURFACE_INPUT_CAPACITY = 1;
    private static final String TAG = "FinalShaderWrapper";
    private final Context context;

    @Nullable
    private DefaultShaderProgram defaultShaderProgram;
    private final EGLContext eglContext;
    private final EGLDisplay eglDisplay;
    private int inputHeight;
    private int inputWidth;
    private boolean isInputStreamEndedWithPendingAvailableFrames;
    private boolean matrixTransformationsChanged;

    @Nullable
    private OnInputStreamProcessedListener onInputStreamProcessedListener;
    private final ColorInfo outputColorInfo;

    @Nullable
    private EGLSurface outputEglSurface;
    private Size outputSizeBeforeSurfaceTransformation;

    @Nullable
    private SurfaceInfo outputSurfaceInfo;
    private boolean outputSurfaceInfoChanged;
    private final TexturePool outputTexturePool;
    private final LongArrayQueue outputTextureTimestamps;
    private final EGLSurface placeholderSurface;
    private final boolean renderFramesAutomatically;
    private final int sdrWorkingColorSpace;
    private final LongArrayQueue syncObjects;

    @Nullable
    private final GlTextureProducer.Listener textureOutputListener;
    private final VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor;
    private final VideoFrameProcessor.Listener videoFrameProcessorListener;
    private final Executor videoFrameProcessorListenerExecutor;
    private final List<GlMatrixTransformation> matrixTransformations = new ArrayList();
    private final List<RgbMatrix> rgbMatrices = new ArrayList();
    private GlShaderProgram.InputListener inputListener = new GlShaderProgram.InputListener() {
    };
    private final Queue<Pair<GlTextureInfo, Long>> availableFrames = new ConcurrentLinkedQueue();

    public interface OnInputStreamProcessedListener {
        void onInputStreamProcessed();
    }

    public FinalShaderProgramWrapper(Context context, EGLDisplay eGLDisplay, EGLContext eGLContext, EGLSurface eGLSurface, ColorInfo colorInfo, VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor, Executor executor, VideoFrameProcessor.Listener listener, @Nullable GlTextureProducer.Listener listener2, int i, int i2, boolean z) {
        this.context = context;
        this.eglDisplay = eGLDisplay;
        this.eglContext = eGLContext;
        this.placeholderSurface = eGLSurface;
        this.outputColorInfo = colorInfo;
        this.videoFrameProcessingTaskExecutor = videoFrameProcessingTaskExecutor;
        this.videoFrameProcessorListenerExecutor = executor;
        this.videoFrameProcessorListener = listener;
        this.textureOutputListener = listener2;
        this.sdrWorkingColorSpace = i2;
        this.renderFramesAutomatically = z;
        this.outputTexturePool = new TexturePool(ColorInfo.isTransferHdr(colorInfo), i);
        this.outputTextureTimestamps = new LongArrayQueue(i);
        this.syncObjects = new LongArrayQueue(i);
    }

    private DefaultShaderProgram createDefaultShaderProgram(int i, int i2, int i3) throws VideoFrameProcessingException {
        ImmutableList.a aVarL = new ImmutableList.a().l(this.matrixTransformations);
        if (i != 0) {
            aVarL.a(new ScaleAndRotateTransformation.Builder().setRotationDegrees(i).build());
        }
        aVarL.a(Presentation.createForWidthAndHeight(i2, i3, 0));
        DefaultShaderProgram defaultShaderProgramCreateApplyingOetf = DefaultShaderProgram.createApplyingOetf(this.context, aVarL.e(), this.rgbMatrices, this.outputColorInfo, this.sdrWorkingColorSpace);
        Size sizeConfigure = defaultShaderProgramCreateApplyingOetf.configure(this.inputWidth, this.inputHeight);
        SurfaceInfo surfaceInfo = this.outputSurfaceInfo;
        if (surfaceInfo != null) {
            SurfaceInfo surfaceInfo2 = (SurfaceInfo) Assertions.checkNotNull(surfaceInfo);
            Assertions.checkState(sizeConfigure.getWidth() == surfaceInfo2.width);
            Assertions.checkState(sizeConfigure.getHeight() == surfaceInfo2.height);
        }
        return defaultShaderProgramCreateApplyingOetf;
    }

    private void destroyOutputEglSurface() {
        if (this.outputEglSurface == null) {
            return;
        }
        try {
            try {
                GlUtil.focusEglSurface(this.eglDisplay, this.eglContext, this.placeholderSurface, 1, 1);
                GlUtil.destroyEglSurface(this.eglDisplay, this.outputEglSurface);
            } catch (GlUtil.GlException e) {
                this.videoFrameProcessorListenerExecutor.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$destroyOutputEglSurface$4(e);
                    }
                });
            }
        } finally {
            this.outputEglSurface = null;
        }
    }

    private boolean ensureConfigured(GlObjectsProvider glObjectsProvider, int i, int i2) throws VideoFrameProcessingException, GlUtil.GlException {
        boolean z = (this.inputWidth == i && this.inputHeight == i2 && this.outputSizeBeforeSurfaceTransformation != null) ? false : true;
        if (z) {
            this.inputWidth = i;
            this.inputHeight = i2;
            final Size sizeConfigureAndGetOutputSize = MatrixUtils.configureAndGetOutputSize(i, i2, this.matrixTransformations);
            if (!Objects.equals(this.outputSizeBeforeSurfaceTransformation, sizeConfigureAndGetOutputSize)) {
                this.outputSizeBeforeSurfaceTransformation = sizeConfigureAndGetOutputSize;
                this.videoFrameProcessorListenerExecutor.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$ensureConfigured$6(sizeConfigureAndGetOutputSize);
                    }
                });
            }
        }
        Assertions.checkNotNull(this.outputSizeBeforeSurfaceTransformation);
        SurfaceInfo surfaceInfo = this.outputSurfaceInfo;
        if (surfaceInfo == null && this.textureOutputListener == null) {
            Assertions.checkState(this.outputEglSurface == null);
            DefaultShaderProgram defaultShaderProgram = this.defaultShaderProgram;
            if (defaultShaderProgram != null) {
                defaultShaderProgram.release();
                this.defaultShaderProgram = null;
            }
            Log.w(TAG, "Output surface and size not set, dropping frame.");
            return false;
        }
        int width = surfaceInfo == null ? this.outputSizeBeforeSurfaceTransformation.getWidth() : surfaceInfo.width;
        SurfaceInfo surfaceInfo2 = this.outputSurfaceInfo;
        int height = surfaceInfo2 == null ? this.outputSizeBeforeSurfaceTransformation.getHeight() : surfaceInfo2.height;
        SurfaceInfo surfaceInfo3 = this.outputSurfaceInfo;
        if (surfaceInfo3 != null && this.outputEglSurface == null) {
            this.outputEglSurface = glObjectsProvider.createEglSurface(this.eglDisplay, surfaceInfo3.surface, this.outputColorInfo.colorTransfer, surfaceInfo3.isEncoderInputSurface);
        }
        if (this.textureOutputListener != null) {
            this.outputTexturePool.ensureConfigured(glObjectsProvider, width, height);
        }
        DefaultShaderProgram defaultShaderProgram2 = this.defaultShaderProgram;
        if (defaultShaderProgram2 != null && (this.outputSurfaceInfoChanged || z || this.matrixTransformationsChanged)) {
            defaultShaderProgram2.release();
            this.defaultShaderProgram = null;
            this.outputSurfaceInfoChanged = false;
            this.matrixTransformationsChanged = false;
        }
        if (this.defaultShaderProgram == null) {
            SurfaceInfo surfaceInfo4 = this.outputSurfaceInfo;
            this.defaultShaderProgram = createDefaultShaderProgram(surfaceInfo4 == null ? 0 : surfaceInfo4.orientationDegrees, width, height);
            this.outputSurfaceInfoChanged = false;
        }
        return true;
    }

    private int getInputCapacity() {
        if (this.textureOutputListener == null) {
            return 1;
        }
        return this.outputTexturePool.freeTextureCount();
    }

    public void lambda$destroyOutputEglSurface$4(GlUtil.GlException glException) {
        this.videoFrameProcessorListener.onError(VideoFrameProcessingException.from(glException));
    }

    public void lambda$ensureConfigured$6(Size size) {
        this.videoFrameProcessorListener.onOutputSizeChanged(size.getWidth(), size.getHeight());
    }

    public void lambda$queueInputFrame$1(long j) {
        this.videoFrameProcessorListener.onOutputFrameAvailableForRendering(j);
    }

    public void lambda$renderFrame$5(Exception exc, long j) {
        this.videoFrameProcessorListener.onError(VideoFrameProcessingException.from(exc, j));
    }

    public void lambda$setOutputSurfaceInfo$3(InterruptedException interruptedException) {
        this.videoFrameProcessorListener.onError(VideoFrameProcessingException.from(interruptedException));
    }

    public void lambda$releaseOutputTexture$0(long j) throws GlUtil.GlException {
        Assertions.checkState(this.textureOutputListener != null);
        while (this.outputTexturePool.freeTextureCount() < this.outputTexturePool.capacity() && this.outputTextureTimestamps.element() <= j) {
            this.outputTexturePool.freeTexture();
            this.outputTextureTimestamps.remove();
            GlUtil.deleteSyncObject(this.syncObjects.remove());
            this.inputListener.onReadyToAcceptInputFrame();
        }
    }

    private void renderFrame(GlObjectsProvider glObjectsProvider, GlTextureInfo glTextureInfo, final long j, long j2) {
        if (j2 != -2) {
            try {
                if (ensureConfigured(glObjectsProvider, glTextureInfo.width, glTextureInfo.height)) {
                    if (this.outputSurfaceInfo != null) {
                        renderFrameToOutputSurface(glTextureInfo, j, j2);
                    } else if (this.textureOutputListener != null) {
                        renderFrameToOutputTexture(glTextureInfo, j);
                    }
                    this.inputListener.onInputFrameProcessed(glTextureInfo);
                    return;
                }
            } catch (VideoFrameProcessingException | GlUtil.GlException e) {
                this.videoFrameProcessorListenerExecutor.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$renderFrame$5(e, j);
                    }
                });
            }
        }
        this.inputListener.onInputFrameProcessed(glTextureInfo);
    }

    private void renderFrameToOutputSurface(GlTextureInfo glTextureInfo, long j, long j2) throws VideoFrameProcessingException, GlUtil.GlException {
        EGLSurface eGLSurface = (EGLSurface) Assertions.checkNotNull(this.outputEglSurface);
        SurfaceInfo surfaceInfo = (SurfaceInfo) Assertions.checkNotNull(this.outputSurfaceInfo);
        DefaultShaderProgram defaultShaderProgram = (DefaultShaderProgram) Assertions.checkNotNull(this.defaultShaderProgram);
        GlUtil.focusEglSurface(this.eglDisplay, this.eglContext, eGLSurface, surfaceInfo.width, surfaceInfo.height);
        GlUtil.clearFocusedBuffers();
        defaultShaderProgram.drawFrame(glTextureInfo.texId, j);
        if (j2 == -1) {
            j2 = System.nanoTime();
        } else if (j2 == -3) {
            Assertions.checkState(j != C.TIME_UNSET);
            j2 = 1000 * j;
        }
        EGLExt.eglPresentationTimeANDROID(this.eglDisplay, eGLSurface, j2);
        EGL14.eglSwapBuffers(this.eglDisplay, eGLSurface);
        DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_VFP, DebugTraceUtil.EVENT_RENDERED_TO_OUTPUT_SURFACE, j);
    }

    private void renderFrameToOutputTexture(GlTextureInfo glTextureInfo, long j) throws VideoFrameProcessingException, GlUtil.GlException {
        GlTextureInfo glTextureInfoUseTexture = this.outputTexturePool.useTexture();
        this.outputTextureTimestamps.add(j);
        GlUtil.focusFramebufferUsingCurrentContext(glTextureInfoUseTexture.fboId, glTextureInfoUseTexture.width, glTextureInfoUseTexture.height);
        GlUtil.clearFocusedBuffers();
        ((DefaultShaderProgram) Assertions.checkNotNull(this.defaultShaderProgram)).drawFrame(glTextureInfo.texId, j);
        long jCreateGlSyncFence = GlUtil.createGlSyncFence();
        this.syncObjects.add(jCreateGlSyncFence);
        ((GlTextureProducer.Listener) Assertions.checkNotNull(this.textureOutputListener)).onTextureRendered(this, glTextureInfoUseTexture, j, jCreateGlSyncFence);
    }

    public void lambda$setOutputSurfaceInfo$2(@Nullable SurfaceInfo surfaceInfo) {
        if (this.textureOutputListener == null && !Objects.equals(this.outputSurfaceInfo, surfaceInfo)) {
            SurfaceInfo surfaceInfo2 = this.outputSurfaceInfo;
            if (surfaceInfo2 != null && (surfaceInfo == null || !surfaceInfo2.surface.equals(surfaceInfo.surface))) {
                destroyOutputEglSurface();
            }
            SurfaceInfo surfaceInfo3 = this.outputSurfaceInfo;
            this.outputSurfaceInfoChanged = (surfaceInfo3 != null && surfaceInfo != null && surfaceInfo3.width == surfaceInfo.width && surfaceInfo3.height == surfaceInfo.height && surfaceInfo3.orientationDegrees == surfaceInfo.orientationDegrees) ? false : true;
            this.outputSurfaceInfo = surfaceInfo;
        }
    }

    @Override
    public void flush() {
        this.videoFrameProcessingTaskExecutor.verifyVideoFrameProcessingThread();
        if (this.textureOutputListener != null) {
            this.outputTexturePool.freeAllTextures();
            this.outputTextureTimestamps.clear();
            this.syncObjects.clear();
        }
        this.availableFrames.clear();
        this.isInputStreamEndedWithPendingAvailableFrames = false;
        DefaultShaderProgram defaultShaderProgram = this.defaultShaderProgram;
        if (defaultShaderProgram != null) {
            defaultShaderProgram.flush();
        }
        this.inputListener.onFlush();
        for (int i = 0; i < getInputCapacity(); i++) {
            this.inputListener.onReadyToAcceptInputFrame();
        }
    }

    @Override
    public void queueInputFrame(GlObjectsProvider glObjectsProvider, GlTextureInfo glTextureInfo, final long j) {
        this.videoFrameProcessingTaskExecutor.verifyVideoFrameProcessingThread();
        this.videoFrameProcessorListenerExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$queueInputFrame$1(j);
            }
        });
        if (this.textureOutputListener != null) {
            Assertions.checkState(this.outputTexturePool.freeTextureCount() > 0);
            renderFrame(glObjectsProvider, glTextureInfo, j, j * 1000);
        } else {
            if (this.renderFramesAutomatically) {
                renderFrame(glObjectsProvider, glTextureInfo, j, j * 1000);
            } else {
                this.availableFrames.add(Pair.create(glTextureInfo, Long.valueOf(j)));
            }
            this.inputListener.onReadyToAcceptInputFrame();
        }
    }

    @Override
    public void release() throws VideoFrameProcessingException {
        this.videoFrameProcessingTaskExecutor.verifyVideoFrameProcessingThread();
        DefaultShaderProgram defaultShaderProgram = this.defaultShaderProgram;
        if (defaultShaderProgram != null) {
            defaultShaderProgram.release();
        }
        try {
            this.outputTexturePool.deleteAllTextures();
            GlUtil.destroyEglSurface(this.eglDisplay, this.outputEglSurface);
            GlUtil.checkGlError();
        } catch (GlUtil.GlException e) {
            throw new VideoFrameProcessingException(e);
        }
    }

    @Override
    public void releaseOutputFrame(GlTextureInfo glTextureInfo) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void releaseOutputTexture(final long j) {
        this.videoFrameProcessingTaskExecutor.submit(new VideoFrameProcessingTaskExecutor.Task() {
            @Override
            public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
                this.a.lambda$releaseOutputTexture$0(j);
            }
        });
    }

    public void renderOutputFrame(GlObjectsProvider glObjectsProvider, long j) {
        this.videoFrameProcessingTaskExecutor.verifyVideoFrameProcessingThread();
        if (this.textureOutputListener != null) {
            return;
        }
        Assertions.checkState(!this.renderFramesAutomatically);
        Pair<GlTextureInfo, Long> pairRemove = this.availableFrames.remove();
        renderFrame(glObjectsProvider, (GlTextureInfo) pairRemove.first, ((Long) pairRemove.second).longValue(), j);
        if (this.availableFrames.isEmpty() && this.isInputStreamEndedWithPendingAvailableFrames) {
            ((OnInputStreamProcessedListener) Assertions.checkNotNull(this.onInputStreamProcessedListener)).onInputStreamProcessed();
            this.isInputStreamEndedWithPendingAvailableFrames = false;
        }
    }

    @Override
    public void setErrorListener(Executor executor, GlShaderProgram.ErrorListener errorListener) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void setInputListener(GlShaderProgram.InputListener inputListener) {
        this.videoFrameProcessingTaskExecutor.verifyVideoFrameProcessingThread();
        this.inputListener = inputListener;
        for (int i = 0; i < getInputCapacity(); i++) {
            inputListener.onReadyToAcceptInputFrame();
        }
    }

    public void setMatrixTransformations(List<GlMatrixTransformation> list, List<RgbMatrix> list2) {
        this.videoFrameProcessingTaskExecutor.verifyVideoFrameProcessingThread();
        this.matrixTransformations.clear();
        this.matrixTransformations.addAll(list);
        this.rgbMatrices.clear();
        this.rgbMatrices.addAll(list2);
        this.matrixTransformationsChanged = true;
    }

    public void setOnInputStreamProcessedListener(@Nullable OnInputStreamProcessedListener onInputStreamProcessedListener) {
        this.videoFrameProcessingTaskExecutor.verifyVideoFrameProcessingThread();
        this.onInputStreamProcessedListener = onInputStreamProcessedListener;
    }

    @Override
    public void setOutputListener(GlShaderProgram.OutputListener outputListener) {
        throw new UnsupportedOperationException();
    }

    public void setOutputSurfaceInfo(@Nullable final SurfaceInfo surfaceInfo) {
        try {
            this.videoFrameProcessingTaskExecutor.invoke(new VideoFrameProcessingTaskExecutor.Task() {
                @Override
                public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
                    this.a.lambda$setOutputSurfaceInfo$2(surfaceInfo);
                }
            });
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            this.videoFrameProcessorListenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$setOutputSurfaceInfo$3(e);
                }
            });
        }
    }

    @Override
    public void signalEndOfCurrentInputStream() {
        this.videoFrameProcessingTaskExecutor.verifyVideoFrameProcessingThread();
        if (this.availableFrames.isEmpty()) {
            ((OnInputStreamProcessedListener) Assertions.checkNotNull(this.onInputStreamProcessedListener)).onInputStreamProcessed();
            this.isInputStreamEndedWithPendingAvailableFrames = false;
        } else {
            Assertions.checkState(!this.renderFramesAutomatically);
            this.isInputStreamEndedWithPendingAvailableFrames = true;
        }
    }
}
