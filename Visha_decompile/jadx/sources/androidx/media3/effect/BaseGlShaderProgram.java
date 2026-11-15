package androidx.media3.effect;

import androidx.annotation.CallSuper;
import androidx.media3.common.GlObjectsProvider;
import androidx.media3.common.GlTextureInfo;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.effect.BaseGlShaderProgram;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.Executor;

@UnstableApi
public abstract class BaseGlShaderProgram implements GlShaderProgram {
    private static final String TAG = "BaseGlShaderProgram";
    protected final TexturePool outputTexturePool;
    private GlShaderProgram.InputListener inputListener = new GlShaderProgram.InputListener() {
    };
    private GlShaderProgram.OutputListener outputListener = new GlShaderProgram.OutputListener() {
    };
    private GlShaderProgram.ErrorListener errorListener = new GlShaderProgram.ErrorListener() {
        @Override
        public final void onError(VideoFrameProcessingException videoFrameProcessingException) {
            Log.e(BaseGlShaderProgram.TAG, "Exception caught by default BaseGlShaderProgram errorListener.", videoFrameProcessingException);
        }
    };
    private Executor errorListenerExecutor = MoreExecutors.a();
    private int inputWidth = -1;
    private int inputHeight = -1;

    public BaseGlShaderProgram(boolean z, int i) {
        this.outputTexturePool = new TexturePool(z, i);
    }

    public void lambda$onError$2(Exception exc) {
        this.errorListener.onError(VideoFrameProcessingException.from(exc));
    }

    public void lambda$queueInputFrame$1(Exception exc) {
        this.errorListener.onError(VideoFrameProcessingException.from(exc));
    }

    public abstract Size configure(int i, int i2) throws VideoFrameProcessingException;

    public abstract void drawFrame(int i, long j) throws VideoFrameProcessingException;

    @Override
    @CallSuper
    public void flush() {
        this.outputTexturePool.freeAllTextures();
        this.inputListener.onFlush();
        for (int i = 0; i < this.outputTexturePool.capacity(); i++) {
            this.inputListener.onReadyToAcceptInputFrame();
        }
    }

    public final GlShaderProgram.InputListener getInputListener() {
        return this.inputListener;
    }

    public final GlShaderProgram.OutputListener getOutputListener() {
        return this.outputListener;
    }

    public final void onError(final Exception exc) {
        this.errorListenerExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onError$2(exc);
            }
        });
    }

    @Override
    public void queueInputFrame(GlObjectsProvider glObjectsProvider, GlTextureInfo glTextureInfo, long j) {
        try {
            if (this.inputWidth != glTextureInfo.width || this.inputHeight != glTextureInfo.height || !this.outputTexturePool.isConfigured()) {
                int i = glTextureInfo.width;
                this.inputWidth = i;
                int i2 = glTextureInfo.height;
                this.inputHeight = i2;
                Size sizeConfigure = configure(i, i2);
                this.outputTexturePool.ensureConfigured(glObjectsProvider, sizeConfigure.getWidth(), sizeConfigure.getHeight());
            }
            GlTextureInfo glTextureInfoUseTexture = this.outputTexturePool.useTexture();
            GlUtil.focusFramebufferUsingCurrentContext(glTextureInfoUseTexture.fboId, glTextureInfoUseTexture.width, glTextureInfoUseTexture.height);
            if (shouldClearTextureBuffer()) {
                GlUtil.clearFocusedBuffers();
            }
            drawFrame(glTextureInfo.texId, j);
            this.inputListener.onInputFrameProcessed(glTextureInfo);
            this.outputListener.onOutputFrameAvailable(glTextureInfoUseTexture, j);
        } catch (VideoFrameProcessingException | GlUtil.GlException e) {
            this.errorListenerExecutor.execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$queueInputFrame$1(e);
                }
            });
        }
    }

    @Override
    @CallSuper
    public void release() throws VideoFrameProcessingException {
        try {
            this.outputTexturePool.deleteAllTextures();
        } catch (GlUtil.GlException e) {
            throw new VideoFrameProcessingException(e);
        }
    }

    @Override
    public void releaseOutputFrame(GlTextureInfo glTextureInfo) {
        if (this.outputTexturePool.isUsingTexture(glTextureInfo)) {
            this.outputTexturePool.freeTexture(glTextureInfo);
            this.inputListener.onReadyToAcceptInputFrame();
        }
    }

    @Override
    public void setErrorListener(Executor executor, GlShaderProgram.ErrorListener errorListener) {
        this.errorListenerExecutor = executor;
        this.errorListener = errorListener;
    }

    @Override
    public void setInputListener(GlShaderProgram.InputListener inputListener) {
        this.inputListener = inputListener;
        for (int i = 0; i < this.outputTexturePool.freeTextureCount(); i++) {
            inputListener.onReadyToAcceptInputFrame();
        }
    }

    @Override
    public void setOutputListener(GlShaderProgram.OutputListener outputListener) {
        this.outputListener = outputListener;
    }

    public boolean shouldClearTextureBuffer() {
        return true;
    }

    @Override
    public void signalEndOfCurrentInputStream() {
        this.outputListener.onCurrentOutputStreamEnded();
    }
}
