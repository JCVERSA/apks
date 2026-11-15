package androidx.media3.effect;

import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.media3.common.GlObjectsProvider;
import androidx.media3.common.GlTextureInfo;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.GlUtil;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.Queue;

final class FrameConsumptionManager implements GlShaderProgram.InputListener {

    @GuardedBy("this")
    private final Queue<Pair<GlTextureInfo, Long>> availableFrames = new ArrayDeque();
    private final GlShaderProgram consumingGlShaderProgram;

    @GuardedBy("this")
    private int consumingGlShaderProgramInputCapacity;
    private final GlObjectsProvider glObjectsProvider;
    private final VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor;

    public FrameConsumptionManager(GlObjectsProvider glObjectsProvider, GlShaderProgram glShaderProgram, VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor) {
        this.glObjectsProvider = glObjectsProvider;
        this.consumingGlShaderProgram = glShaderProgram;
        this.videoFrameProcessingTaskExecutor = videoFrameProcessingTaskExecutor;
    }

    public void lambda$onReadyToAcceptInputFrame$0(Pair pair) throws VideoFrameProcessingException, GlUtil.GlException {
        this.consumingGlShaderProgram.queueInputFrame(this.glObjectsProvider, (GlTextureInfo) pair.first, ((Long) pair.second).longValue());
    }

    public void lambda$queueInputFrame$1(GlTextureInfo glTextureInfo, long j) throws VideoFrameProcessingException, GlUtil.GlException {
        this.consumingGlShaderProgram.queueInputFrame(this.glObjectsProvider, glTextureInfo, j);
    }

    public synchronized int getPendingFrameCount() {
        return this.availableFrames.size();
    }

    @Override
    public synchronized void onFlush() {
        this.consumingGlShaderProgramInputCapacity = 0;
        this.availableFrames.clear();
    }

    @Override
    public synchronized void onReadyToAcceptInputFrame() {
        final Pair<GlTextureInfo, Long> pairPoll = this.availableFrames.poll();
        if (pairPoll == null) {
            this.consumingGlShaderProgramInputCapacity++;
            return;
        }
        this.videoFrameProcessingTaskExecutor.submit(new VideoFrameProcessingTaskExecutor.Task() {
            @Override
            public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
                this.a.lambda$onReadyToAcceptInputFrame$0(pairPoll);
            }
        });
        Pair<GlTextureInfo, Long> pairPeek = this.availableFrames.peek();
        if (pairPeek != null && ((Long) pairPeek.second).longValue() == Long.MIN_VALUE) {
            VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor = this.videoFrameProcessingTaskExecutor;
            GlShaderProgram glShaderProgram = this.consumingGlShaderProgram;
            Objects.requireNonNull(glShaderProgram);
            videoFrameProcessingTaskExecutor.submit(new s0(glShaderProgram));
            this.availableFrames.remove();
        }
    }

    public synchronized void queueInputFrame(final GlTextureInfo glTextureInfo, final long j) {
        try {
            if (this.consumingGlShaderProgramInputCapacity > 0) {
                this.videoFrameProcessingTaskExecutor.submit(new VideoFrameProcessingTaskExecutor.Task() {
                    @Override
                    public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
                        this.a.lambda$queueInputFrame$1(glTextureInfo, j);
                    }
                });
                this.consumingGlShaderProgramInputCapacity--;
            } else {
                this.availableFrames.add(Pair.create(glTextureInfo, Long.valueOf(j)));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void signalEndOfCurrentStream() {
        try {
            if (this.availableFrames.isEmpty()) {
                VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor = this.videoFrameProcessingTaskExecutor;
                GlShaderProgram glShaderProgram = this.consumingGlShaderProgram;
                Objects.requireNonNull(glShaderProgram);
                videoFrameProcessingTaskExecutor.submit(new s0(glShaderProgram));
            } else {
                this.availableFrames.add(Pair.create(GlTextureInfo.UNSET, Long.MIN_VALUE));
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
