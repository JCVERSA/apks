package androidx.media3.effect;

import androidx.media3.common.Format;
import androidx.media3.common.FrameInfo;
import androidx.media3.common.GlObjectsProvider;
import androidx.media3.common.GlTextureInfo;
import androidx.media3.common.OnInputFrameProcessedListener;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.GlUtil;
import java.util.Objects;

final class TexIdTextureManager extends TextureManager {
    private FrameConsumptionManager frameConsumptionManager;
    private OnInputFrameProcessedListener frameProcessedListener;
    private final GlObjectsProvider glObjectsProvider;
    private FrameInfo inputFrameInfo;

    public TexIdTextureManager(GlObjectsProvider glObjectsProvider, VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor) {
        super(videoFrameProcessingTaskExecutor);
        this.glObjectsProvider = glObjectsProvider;
    }

    public void lambda$onInputFrameProcessed$0(GlTextureInfo glTextureInfo) throws VideoFrameProcessingException, GlUtil.GlException {
        ((OnInputFrameProcessedListener) Assertions.checkNotNull(this.frameProcessedListener)).onInputFrameProcessed(glTextureInfo.texId, GlUtil.createGlSyncFence());
    }

    public void lambda$queueInputTexture$1(int i, FrameInfo frameInfo, long j) throws VideoFrameProcessingException, GlUtil.GlException {
        Format format = frameInfo.format;
        ((FrameConsumptionManager) Assertions.checkNotNull(this.frameConsumptionManager)).queueInputFrame(new GlTextureInfo(i, -1, -1, format.width, format.height), j);
        DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_VFP, DebugTraceUtil.EVENT_QUEUE_TEXTURE, j, "%dx%d", Integer.valueOf(frameInfo.format.width), Integer.valueOf(frameInfo.format.height));
    }

    public void lambda$signalEndOfCurrentInputStream$2() throws VideoFrameProcessingException, GlUtil.GlException {
        ((FrameConsumptionManager) Assertions.checkNotNull(this.frameConsumptionManager)).signalEndOfCurrentStream();
        DebugTraceUtil.logEvent(DebugTraceUtil.COMPONENT_TEX_ID_TEXTURE_MANAGER, DebugTraceUtil.EVENT_SIGNAL_EOS, Long.MIN_VALUE);
    }

    @Override
    public synchronized void flush() throws VideoFrameProcessingException {
        ((FrameConsumptionManager) Assertions.checkNotNull(this.frameConsumptionManager)).onFlush();
        super.flush();
    }

    @Override
    public int getPendingFrameCount() {
        return ((FrameConsumptionManager) Assertions.checkNotNull(this.frameConsumptionManager)).getPendingFrameCount();
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
    public void onReadyToAcceptInputFrame() {
        Assertions.checkNotNull(this.frameConsumptionManager);
        VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor = this.videoFrameProcessingTaskExecutor;
        final FrameConsumptionManager frameConsumptionManager = this.frameConsumptionManager;
        Objects.requireNonNull(frameConsumptionManager);
        videoFrameProcessingTaskExecutor.submit(new VideoFrameProcessingTaskExecutor.Task() {
            @Override
            public final void run() {
                frameConsumptionManager.onReadyToAcceptInputFrame();
            }
        });
    }

    @Override
    public void queueInputTexture(final int i, final long j) {
        final FrameInfo frameInfo = (FrameInfo) Assertions.checkNotNull(this.inputFrameInfo);
        Assertions.checkNotNull(this.frameProcessedListener);
        this.videoFrameProcessingTaskExecutor.submit(new VideoFrameProcessingTaskExecutor.Task() {
            @Override
            public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
                this.a.lambda$queueInputTexture$1(i, frameInfo, j);
            }
        });
    }

    @Override
    public void release() {
    }

    @Override
    public void setInputFrameInfo(FrameInfo frameInfo, boolean z) {
        this.inputFrameInfo = frameInfo;
    }

    @Override
    public void setOnInputFrameProcessedListener(OnInputFrameProcessedListener onInputFrameProcessedListener) {
        this.frameProcessedListener = onInputFrameProcessedListener;
    }

    @Override
    public void setSamplingGlShaderProgram(GlShaderProgram glShaderProgram) {
        this.frameConsumptionManager = new FrameConsumptionManager(this.glObjectsProvider, glShaderProgram, this.videoFrameProcessingTaskExecutor);
    }

    @Override
    public void signalEndOfCurrentInputStream() {
        this.videoFrameProcessingTaskExecutor.submit(new VideoFrameProcessingTaskExecutor.Task() {
            @Override
            public final void run() throws VideoFrameProcessingException, GlUtil.GlException {
                this.a.lambda$signalEndOfCurrentInputStream$2();
            }
        });
    }
}
