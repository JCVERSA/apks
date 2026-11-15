package androidx.media3.effect;

import android.graphics.Bitmap;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.FrameInfo;
import androidx.media3.common.OnInputFrameProcessedListener;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.TimestampIterator;

abstract class TextureManager implements GlShaderProgram.InputListener {
    private final Object lock = new Object();

    @Nullable
    @GuardedBy("lock")
    private VideoFrameProcessingTaskExecutor.Task onFlushCompleteTask;
    protected final VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor;

    public TextureManager(VideoFrameProcessingTaskExecutor videoFrameProcessingTaskExecutor) {
        this.videoFrameProcessingTaskExecutor = videoFrameProcessingTaskExecutor;
    }

    public void dropIncomingRegisteredFrames() {
    }

    public void flush() throws VideoFrameProcessingException {
        synchronized (this.lock) {
            try {
                VideoFrameProcessingTaskExecutor.Task task = this.onFlushCompleteTask;
                if (task != null) {
                    this.videoFrameProcessingTaskExecutor.submitWithHighPriority(task);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Surface getInputSurface() {
        throw new UnsupportedOperationException();
    }

    public abstract int getPendingFrameCount();

    @Override
    public final void onFlush() {
        this.videoFrameProcessingTaskExecutor.submit(new VideoFrameProcessingTaskExecutor.Task() {
            @Override
            public final void run() throws VideoFrameProcessingException {
                this.a.flush();
            }
        });
    }

    public void queueInputBitmap(Bitmap bitmap, FrameInfo frameInfo, TimestampIterator timestampIterator) {
        throw new UnsupportedOperationException();
    }

    public void queueInputTexture(int i, long j) {
        throw new UnsupportedOperationException();
    }

    public void registerInputFrame(FrameInfo frameInfo) {
        throw new UnsupportedOperationException();
    }

    public abstract void release() throws VideoFrameProcessingException;

    public void releaseAllRegisteredFrames() {
    }

    public void setDefaultBufferSize(int i, int i2) {
        throw new UnsupportedOperationException();
    }

    public void setInputFrameInfo(FrameInfo frameInfo, boolean z) {
    }

    public final void setOnFlushCompleteListener(@Nullable VideoFrameProcessingTaskExecutor.Task task) {
        synchronized (this.lock) {
            this.onFlushCompleteTask = task;
        }
    }

    public void setOnInputFrameProcessedListener(OnInputFrameProcessedListener onInputFrameProcessedListener) {
        throw new UnsupportedOperationException();
    }

    public abstract void setSamplingGlShaderProgram(GlShaderProgram glShaderProgram);

    public abstract void signalEndOfCurrentInputStream();
}
