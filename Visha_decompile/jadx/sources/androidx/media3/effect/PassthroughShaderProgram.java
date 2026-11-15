package androidx.media3.effect;

import androidx.media3.common.GlObjectsProvider;
import androidx.media3.common.GlTextureInfo;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.effect.PassthroughShaderProgram;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.Executor;

@UnstableApi
public class PassthroughShaderProgram implements GlShaderProgram {
    private GlShaderProgram.InputListener inputListener = new GlShaderProgram.InputListener() {
    };
    private GlShaderProgram.OutputListener outputListener = new GlShaderProgram.OutputListener() {
    };
    private GlShaderProgram.ErrorListener errorListener = new GlShaderProgram.ErrorListener() {
        @Override
        public final void onError(VideoFrameProcessingException videoFrameProcessingException) {
            PassthroughShaderProgram.lambda$new$0(videoFrameProcessingException);
        }
    };
    private Executor errorListenerExecutor = MoreExecutors.a();
    private int texIdInUse = -1;

    public static void lambda$new$0(VideoFrameProcessingException videoFrameProcessingException) {
    }

    public void lambda$onError$1(Exception exc) {
        this.errorListener.onError(VideoFrameProcessingException.from(exc));
    }

    @Override
    public void flush() {
        this.texIdInUse = -1;
        this.inputListener.onFlush();
        this.inputListener.onReadyToAcceptInputFrame();
    }

    public final GlShaderProgram.InputListener getInputListener() {
        return this.inputListener;
    }

    public final void onError(final Exception exc) {
        this.errorListenerExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onError$1(exc);
            }
        });
    }

    @Override
    public void queueInputFrame(GlObjectsProvider glObjectsProvider, GlTextureInfo glTextureInfo, long j) {
        this.texIdInUse = glTextureInfo.texId;
        this.outputListener.onOutputFrameAvailable(glTextureInfo, j);
    }

    @Override
    public void release() throws VideoFrameProcessingException {
        this.texIdInUse = -1;
    }

    @Override
    public void releaseOutputFrame(GlTextureInfo glTextureInfo) {
        Assertions.checkState(glTextureInfo.texId == this.texIdInUse);
        this.texIdInUse = -1;
        this.inputListener.onInputFrameProcessed(glTextureInfo);
        this.inputListener.onReadyToAcceptInputFrame();
    }

    @Override
    public void setErrorListener(Executor executor, GlShaderProgram.ErrorListener errorListener) {
        this.errorListenerExecutor = executor;
        this.errorListener = errorListener;
    }

    @Override
    public void setInputListener(GlShaderProgram.InputListener inputListener) {
        this.inputListener = inputListener;
        if (this.texIdInUse == -1) {
            inputListener.onReadyToAcceptInputFrame();
        }
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
