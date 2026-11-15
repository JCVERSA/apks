package androidx.media3.effect;

import androidx.annotation.Nullable;
import androidx.media3.common.GlObjectsProvider;
import androidx.media3.common.GlTextureInfo;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.TimestampConsumer;
import androidx.media3.common.util.UnstableApi;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

@UnstableApi
public class TimestampAdjustmentShaderProgram implements GlShaderProgram {

    @Nullable
    private GlTextureInfo inputTexture;
    private final TimestampAdjustment.TimestampMap timestampMap;
    private GlShaderProgram.InputListener inputListener = new GlShaderProgram.InputListener() {
    };
    private GlShaderProgram.OutputListener outputListener = new GlShaderProgram.OutputListener() {
    };
    private final AtomicInteger pendingCallbacksCount = new AtomicInteger();
    private final AtomicBoolean pendingEndOfStream = new AtomicBoolean();

    public TimestampAdjustmentShaderProgram(TimestampAdjustment.TimestampMap timestampMap) {
        this.timestampMap = timestampMap;
    }

    public void onOutputTimeAvailable(long j) {
        this.outputListener.onOutputFrameAvailable((GlTextureInfo) Assertions.checkNotNull(this.inputTexture), j);
        if (this.pendingEndOfStream.get()) {
            this.outputListener.onCurrentOutputStreamEnded();
            this.pendingEndOfStream.set(false);
        }
        this.pendingCallbacksCount.decrementAndGet();
    }

    @Override
    public void flush() {
        throw new UnsupportedOperationException("This effect is not supported for previewing.");
    }

    @Override
    public void queueInputFrame(GlObjectsProvider glObjectsProvider, GlTextureInfo glTextureInfo, long j) {
        this.inputTexture = glTextureInfo;
        this.timestampMap.calculateOutputTimeUs(j, new TimestampConsumer() {
            @Override
            public final void onTimestamp(long j2) {
                this.a.onOutputTimeAvailable(j2);
            }
        });
        this.pendingCallbacksCount.incrementAndGet();
    }

    @Override
    public void release() throws VideoFrameProcessingException {
        this.inputTexture = null;
    }

    @Override
    public void releaseOutputFrame(GlTextureInfo glTextureInfo) {
        Assertions.checkState(glTextureInfo.texId == ((GlTextureInfo) Assertions.checkNotNull(this.inputTexture)).texId);
        this.inputListener.onInputFrameProcessed(glTextureInfo);
        this.inputListener.onReadyToAcceptInputFrame();
    }

    @Override
    public void setErrorListener(Executor executor, GlShaderProgram.ErrorListener errorListener) {
    }

    @Override
    public void setInputListener(GlShaderProgram.InputListener inputListener) {
        this.inputListener = inputListener;
        if (this.inputTexture == null) {
            inputListener.onReadyToAcceptInputFrame();
        }
    }

    @Override
    public void setOutputListener(GlShaderProgram.OutputListener outputListener) {
        this.outputListener = outputListener;
    }

    @Override
    public void signalEndOfCurrentInputStream() {
        if (this.pendingCallbacksCount.get() == 0) {
            this.outputListener.onCurrentOutputStreamEnded();
        } else {
            this.pendingEndOfStream.set(true);
        }
    }
}
