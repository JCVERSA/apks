package androidx.media3.effect;

import androidx.media3.common.GlObjectsProvider;
import androidx.media3.common.GlTextureInfo;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.GlUtil;
import java.util.Objects;

final class ChainingGlShaderProgramListener implements GlShaderProgram.InputListener, GlShaderProgram.OutputListener {
    private final FrameConsumptionManager frameConsumptionManager;
    private final GlShaderProgram producingGlShaderProgram;
    private final VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor;

    public ChainingGlShaderProgramListener(GlObjectsProvider glObjectsProvider, GlShaderProgram glShaderProgram, GlShaderProgram glShaderProgram2, VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor) {
        this.producingGlShaderProgram = glShaderProgram;
        this.frameConsumptionManager = new FrameConsumptionManager(glObjectsProvider, glShaderProgram2, videoFrameProcessingTaskExecutor);
        this.videoFrameProcessingTaskExecutor = videoFrameProcessingTaskExecutor;
    }

    public void lambda$onInputFrameProcessed$0(GlTextureInfo glTextureInfo) throws VideoFrameProcessingException, GlUtil.GlException {
        this.producingGlShaderProgram.releaseOutputFrame(glTextureInfo);
    }

    @Override
    public synchronized void onCurrentOutputStreamEnded() {
        this.frameConsumptionManager.signalEndOfCurrentStream();
    }

    @Override
    public synchronized void onFlush() {
        this.frameConsumptionManager.onFlush();
        VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor = this.videoFrameProcessingTaskExecutor;
        final GlShaderProgram glShaderProgram = this.producingGlShaderProgram;
        Objects.requireNonNull(glShaderProgram);
        videoFrameProcessingTaskExecutor.submit(new VideoFrameProcessingTaskExecutor.Task() {
            @Override
            public final void run() {
                glShaderProgram.flush();
            }
        });
    }

    @Override
    public void onInputFrameProcessed(final GlTextureInfo glTextureInfo) {
        this.videoFrameProcessingTaskExecutor.submit(new VideoFrameProcessingTaskExecutor.Task() {
            @Override
            public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
                this.a.lambda$onInputFrameProcessed$0(glTextureInfo);
            }
        });
    }

    @Override
    public synchronized void onOutputFrameAvailable(GlTextureInfo glTextureInfo, long j) {
        this.frameConsumptionManager.queueInputFrame(glTextureInfo, j);
    }

    @Override
    public synchronized void onReadyToAcceptInputFrame() {
        this.frameConsumptionManager.onReadyToAcceptInputFrame();
    }
}
