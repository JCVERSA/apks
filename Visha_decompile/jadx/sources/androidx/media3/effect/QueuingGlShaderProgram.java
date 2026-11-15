package androidx.media3.effect;

import androidx.annotation.CallSuper;
import androidx.annotation.IntRange;
import androidx.media3.common.GlObjectsProvider;
import androidx.media3.common.GlTextureInfo;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.GlRect;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@UnstableApi
final class QueuingGlShaderProgram<T> implements GlShaderProgram {
    private static final long PROCESSING_TIMEOUT_MS = 500000;
    private static final String TAG = "QueuingGlShaderProgram";
    private final ConcurrentEffect<T> concurrentEffect;
    private GlShaderProgram.ErrorListener errorListener;
    private Executor errorListenerExecutor;
    private final Queue<TimedTextureInfo<T>> frameQueue;
    private int inputHeight;
    private GlShaderProgram.InputListener inputListener;
    private int inputWidth;
    private GlShaderProgram.OutputListener outputListener;
    private final TexturePool outputTexturePool;

    public interface ConcurrentEffect<T> {
        void finishProcessingAndBlend(GlTextureInfo glTextureInfo, long j, T t) throws VideoFrameProcessingException;

        void flush() throws VideoFrameProcessingException;

        Future<T> queueInputFrame(GlObjectsProvider glObjectsProvider, GlTextureInfo glTextureInfo, long j);

        void release() throws VideoFrameProcessingException;

        void signalEndOfCurrentInputStream() throws VideoFrameProcessingException;
    }

    public static class TimedTextureInfo<T> {
        final long presentationTimeUs;
        final Future<T> task;
        final GlTextureInfo textureInfo;

        public TimedTextureInfo(GlTextureInfo glTextureInfo, long j, Future<T> future) {
            this.textureInfo = glTextureInfo;
            this.presentationTimeUs = j;
            this.task = future;
        }
    }

    public QueuingGlShaderProgram(boolean z, @IntRange(from = 1) int i, ConcurrentEffect<T> concurrentEffect) {
        Assertions.checkArgument(i > 0);
        this.concurrentEffect = concurrentEffect;
        this.frameQueue = new ArrayDeque(i);
        this.outputTexturePool = new TexturePool(z, i);
        this.inputListener = new GlShaderProgram.InputListener() {
        };
        this.outputListener = new GlShaderProgram.OutputListener() {
        };
        this.errorListener = new GlShaderProgram.ErrorListener() {
            @Override
            public final void onError(VideoFrameProcessingException videoFrameProcessingException) {
                Log.e(QueuingGlShaderProgram.TAG, "Exception caught by default QueuingGlShaderProgram errorListener.", videoFrameProcessingException);
            }
        };
        this.errorListenerExecutor = MoreExecutors.a();
        this.inputWidth = -1;
        this.inputHeight = -1;
    }

    private void cancelProcessingOfPendingFrames() {
        while (true) {
            TimedTextureInfo<T> timedTextureInfoPoll = this.frameQueue.poll();
            if (timedTextureInfoPoll == null) {
                return;
            } else {
                timedTextureInfoPoll.task.cancel(false);
            }
        }
    }

    public void lambda$onError$1(Exception exc) {
        this.errorListener.onError(VideoFrameProcessingException.from(exc));
    }

    private void onError(final Exception exc) {
        this.errorListenerExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onError$1(exc);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private boolean outputOneFrame() {
        TimedTextureInfo<T> timedTextureInfoPoll = this.frameQueue.poll();
        if (timedTextureInfoPoll == null) {
            return false;
        }
        try {
            Object objD = Futures.d(timedTextureInfoPoll.task, VideoFrameProcessingException.class, PROCESSING_TIMEOUT_MS, TimeUnit.MILLISECONDS);
            GlTextureInfo glTextureInfo = timedTextureInfoPoll.textureInfo;
            GlUtil.focusFramebufferUsingCurrentContext(glTextureInfo.fboId, glTextureInfo.width, glTextureInfo.height);
            this.concurrentEffect.finishProcessingAndBlend(timedTextureInfoPoll.textureInfo, timedTextureInfoPoll.presentationTimeUs, objD);
            this.outputListener.onOutputFrameAvailable(timedTextureInfoPoll.textureInfo, timedTextureInfoPoll.presentationTimeUs);
            return true;
        } catch (VideoFrameProcessingException | GlUtil.GlException e) {
            onError(e);
            return false;
        }
    }

    @Override
    @CallSuper
    public void flush() {
        try {
            this.concurrentEffect.flush();
        } catch (VideoFrameProcessingException e) {
            onError(e);
        }
        cancelProcessingOfPendingFrames();
        this.outputTexturePool.freeAllTextures();
        this.inputListener.onFlush();
        for (int i = 0; i < this.outputTexturePool.capacity(); i++) {
            this.inputListener.onReadyToAcceptInputFrame();
        }
    }

    @Override
    public void queueInputFrame(GlObjectsProvider glObjectsProvider, GlTextureInfo glTextureInfo, long j) {
        try {
            if (this.inputWidth != glTextureInfo.width || this.inputHeight != glTextureInfo.height || !this.outputTexturePool.isConfigured()) {
                while (outputOneFrame()) {
                }
                int i = glTextureInfo.width;
                this.inputWidth = i;
                int i2 = glTextureInfo.height;
                this.inputHeight = i2;
                this.outputTexturePool.ensureConfigured(glObjectsProvider, i, i2);
            }
            GlTextureInfo glTextureInfoUseTexture = this.outputTexturePool.useTexture();
            Assertions.checkState(glTextureInfo.fboId != -1);
            GlUtil.blitFrameBuffer(glTextureInfo.fboId, new GlRect(this.inputWidth, this.inputHeight), glTextureInfoUseTexture.fboId, new GlRect(this.inputWidth, this.inputHeight));
            this.frameQueue.add(new TimedTextureInfo<>(glTextureInfoUseTexture, j, this.concurrentEffect.queueInputFrame(glObjectsProvider, glTextureInfoUseTexture, j)));
            this.inputListener.onInputFrameProcessed(glTextureInfo);
            if (this.frameQueue.size() == this.outputTexturePool.capacity()) {
                Assertions.checkState(outputOneFrame());
            }
        } catch (GlUtil.GlException e) {
            onError(e);
        }
    }

    @Override
    @CallSuper
    public void release() throws VideoFrameProcessingException {
        try {
            cancelProcessingOfPendingFrames();
            this.concurrentEffect.release();
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

    @Override
    public void signalEndOfCurrentInputStream() {
        try {
            this.concurrentEffect.signalEndOfCurrentInputStream();
        } catch (VideoFrameProcessingException e) {
            onError(e);
        }
        while (outputOneFrame()) {
        }
        this.outputListener.onCurrentOutputStreamEnded();
    }
}
