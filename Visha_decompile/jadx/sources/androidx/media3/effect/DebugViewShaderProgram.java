package androidx.media3.effect;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.GlObjectsProvider;
import androidx.media3.common.GlTextureInfo;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.effect.DebugViewShaderProgram;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.Objects;
import java.util.concurrent.Executor;

@UnstableApi
public final class DebugViewShaderProgram implements GlShaderProgram {
    private static final String TAG = "DebugViewShaderProgram";
    private final Context context;

    @Nullable
    private SurfaceView debugSurfaceView;

    @Nullable
    private SurfaceViewWrapper debugSurfaceViewWrapper;
    private final DebugViewProvider debugViewProvider;

    @Nullable
    private DefaultShaderProgram defaultShaderProgram;
    private EGLDisplay eglDisplay;
    private final ColorInfo outputColorInfo;
    private int outputWidth = -1;
    private int outputHeight = -1;
    private GlShaderProgram.InputListener inputListener = new GlShaderProgram.InputListener() {
    };
    private GlShaderProgram.OutputListener outputListener = new GlShaderProgram.OutputListener() {
    };
    private GlShaderProgram.ErrorListener errorListener = new GlShaderProgram.ErrorListener() {
        @Override
        public final void onError(VideoFrameProcessingException videoFrameProcessingException) {
            Log.e(DebugViewShaderProgram.TAG, "Exception caught by errorListener.", videoFrameProcessingException);
        }
    };
    private Executor errorListenerExecutor = MoreExecutors.a();

    public static final class SurfaceViewWrapper implements SurfaceHolder.Callback {
        private final EGLContext eglContext;
        private final EGLDisplay eglDisplay;

        @Nullable
        @GuardedBy("this")
        private EGLSurface eglSurface;
        private int height;
        public final int outputColorTransfer;

        @Nullable
        @GuardedBy("this")
        private Surface surface;
        private int width;

        public SurfaceViewWrapper(EGLDisplay eGLDisplay, EGLContext eGLContext, SurfaceView surfaceView, int i) {
            this.eglDisplay = eGLDisplay;
            this.eglContext = eGLContext;
            if (i == 7 && Util.SDK_INT < 34) {
                i = 6;
            }
            this.outputColorTransfer = i;
            surfaceView.getHolder().addCallback(this);
            this.surface = surfaceView.getHolder().getSurface();
            this.width = surfaceView.getWidth();
            this.height = surfaceView.getHeight();
        }

        public synchronized void maybeRenderToSurfaceView(VideoFrameProcessingTaskExecutor.Task task, GlObjectsProvider glObjectsProvider) throws VideoFrameProcessingException, GlUtil.GlException {
            try {
                Surface surface = this.surface;
                if (surface == null) {
                    return;
                }
                if (this.eglSurface == null) {
                    this.eglSurface = glObjectsProvider.createEglSurface(this.eglDisplay, surface, this.outputColorTransfer, false);
                }
                EGLSurface eGLSurface = this.eglSurface;
                GlUtil.focusEglSurface(this.eglDisplay, this.eglContext, eGLSurface, this.width, this.height);
                task.run();
                EGL14.eglSwapBuffers(this.eglDisplay, eGLSurface);
                GLES20.glFinish();
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override
        public synchronized void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            this.width = i2;
            this.height = i3;
            Surface surface = surfaceHolder.getSurface();
            if (!surface.equals(this.surface)) {
                this.surface = surface;
                this.eglSurface = null;
            }
        }

        @Override
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
        }

        @Override
        public synchronized void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            this.surface = null;
            this.eglSurface = null;
            this.width = -1;
            this.height = -1;
        }
    }

    public DebugViewShaderProgram(Context context, DebugViewProvider debugViewProvider, ColorInfo colorInfo) {
        this.context = context;
        this.debugViewProvider = debugViewProvider;
        this.outputColorInfo = colorInfo;
    }

    private void ensureConfigured(int i, int i2) throws VideoFrameProcessingException, GlUtil.GlException {
        if (this.eglDisplay == null) {
            this.eglDisplay = GlUtil.getDefaultEglDisplay();
        }
        EGLContext currentContext = GlUtil.getCurrentContext();
        if (this.outputWidth == -1 || this.outputHeight == -1) {
            this.outputWidth = i;
            this.outputHeight = i2;
        }
        SurfaceView debugPreviewSurfaceView = this.debugViewProvider.getDebugPreviewSurfaceView(this.outputWidth, this.outputHeight);
        if (debugPreviewSurfaceView != null && !Objects.equals(this.debugSurfaceView, debugPreviewSurfaceView)) {
            this.debugSurfaceViewWrapper = new SurfaceViewWrapper(this.eglDisplay, currentContext, debugPreviewSurfaceView, this.outputColorInfo.colorTransfer);
        }
        this.debugSurfaceView = debugPreviewSurfaceView;
        if (this.defaultShaderProgram == null) {
            ImmutableList.a aVar = new ImmutableList.a();
            aVar.a(Presentation.createForWidthAndHeight(this.outputWidth, this.outputHeight, 0));
            Context context = this.context;
            ImmutableList immutableListE = aVar.e();
            ImmutableList immutableListOf = ImmutableList.of();
            ColorInfo colorInfo = this.outputColorInfo;
            this.defaultShaderProgram = DefaultShaderProgram.createApplyingOetf(context, immutableListE, immutableListOf, colorInfo, colorInfo.colorTransfer == 1 ? 2 : 0);
        }
    }

    public static void lambda$queueInputFrame$1(DefaultShaderProgram defaultShaderProgram, GlTextureInfo glTextureInfo, long j) throws VideoFrameProcessingException, GlUtil.GlException {
        defaultShaderProgram.drawFrame(glTextureInfo.texId, j);
    }

    public void lambda$queueInputFrame$2(Exception exc, long j) {
        this.errorListener.onError(VideoFrameProcessingException.from(exc, j));
    }

    @Override
    public void flush() {
        DefaultShaderProgram defaultShaderProgram = this.defaultShaderProgram;
        if (defaultShaderProgram != null) {
            defaultShaderProgram.flush();
        }
        this.inputListener.onFlush();
        this.inputListener.onReadyToAcceptInputFrame();
    }

    @Override
    public void queueInputFrame(GlObjectsProvider glObjectsProvider, final GlTextureInfo glTextureInfo, final long j) {
        try {
            ensureConfigured(glTextureInfo.width, glTextureInfo.height);
            final DefaultShaderProgram defaultShaderProgram = (DefaultShaderProgram) Assertions.checkNotNull(this.defaultShaderProgram);
            ((SurfaceViewWrapper) Assertions.checkNotNull(this.debugSurfaceViewWrapper)).maybeRenderToSurfaceView(new VideoFrameProcessingTaskExecutor.Task() {
                @Override
                public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
                    DebugViewShaderProgram.lambda$queueInputFrame$1(defaultShaderProgram, glTextureInfo, j);
                }
            }, glObjectsProvider);
            this.outputListener.onOutputFrameAvailable(glTextureInfo, j);
        } catch (VideoFrameProcessingException | GlUtil.GlException e) {
            this.errorListenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$queueInputFrame$2(e, j);
                }
            });
        }
    }

    @Override
    public void release() throws VideoFrameProcessingException {
        DefaultShaderProgram defaultShaderProgram = this.defaultShaderProgram;
        if (defaultShaderProgram != null) {
            defaultShaderProgram.release();
        }
        try {
            GlUtil.checkGlError();
        } catch (GlUtil.GlException e) {
            throw new VideoFrameProcessingException(e);
        }
    }

    @Override
    public void releaseOutputFrame(GlTextureInfo glTextureInfo) {
        this.inputListener.onInputFrameProcessed(glTextureInfo);
        this.inputListener.onReadyToAcceptInputFrame();
    }

    @Override
    public void setErrorListener(Executor executor, GlShaderProgram.ErrorListener errorListener) {
        this.errorListener = errorListener;
        this.errorListenerExecutor = executor;
    }

    @Override
    public void setInputListener(GlShaderProgram.InputListener inputListener) {
        this.inputListener = inputListener;
        inputListener.onReadyToAcceptInputFrame();
    }

    @Override
    public void setOutputListener(GlShaderProgram.OutputListener outputListener) {
        this.outputListener = outputListener;
    }

    @Override
    public void signalEndOfCurrentInputStream() {
        this.outputListener.onCurrentOutputStreamEnded();
    }
}
