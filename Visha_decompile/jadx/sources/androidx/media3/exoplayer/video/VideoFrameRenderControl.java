package androidx.media3.exoplayer.video;

import androidx.media3.common.C;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.LongArrayQueue;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.exoplayer.ExoPlaybackException;

final class VideoFrameRenderControl {
    private final FrameRenderer frameRenderer;
    private long outputStreamStartPositionUs;
    private final VideoFrameReleaseControl videoFrameReleaseControl;
    private final VideoFrameReleaseControl.FrameReleaseInfo videoFrameReleaseInfo = new VideoFrameReleaseControl.FrameReleaseInfo();
    private final TimedValueQueue<VideoSize> videoSizes = new TimedValueQueue<>();
    private final TimedValueQueue<Long> streamStartPositionsUs = new TimedValueQueue<>();
    private final LongArrayQueue presentationTimestampsUs = new LongArrayQueue();
    private long latestInputPresentationTimeUs = C.TIME_UNSET;
    private VideoSize outputVideoSize = VideoSize.UNKNOWN;
    private long latestOutputPresentationTimeUs = C.TIME_UNSET;
    private long lastPresentationTimeUs = C.TIME_UNSET;

    public interface FrameRenderer {
        void dropFrame();

        void onVideoSizeChanged(VideoSize videoSize);

        void renderFrame(long j, long j2, boolean z);
    }

    public VideoFrameRenderControl(FrameRenderer frameRenderer, VideoFrameReleaseControl videoFrameReleaseControl) {
        this.frameRenderer = frameRenderer;
        this.videoFrameReleaseControl = videoFrameReleaseControl;
    }

    private void dropFrame() {
        this.presentationTimestampsUs.remove();
        this.frameRenderer.dropFrame();
    }

    private static <T> T getLastAndClear(TimedValueQueue<T> timedValueQueue) {
        Assertions.checkArgument(timedValueQueue.size() > 0);
        while (timedValueQueue.size() > 1) {
            timedValueQueue.pollFirst();
        }
        return (T) Assertions.checkNotNull(timedValueQueue.pollFirst());
    }

    private boolean maybeUpdateOutputStreamStartPosition(long j) {
        Long lPollFloor = this.streamStartPositionsUs.pollFloor(j);
        if (lPollFloor == null || lPollFloor.longValue() == this.outputStreamStartPositionUs) {
            return false;
        }
        this.outputStreamStartPositionUs = lPollFloor.longValue();
        return true;
    }

    private boolean maybeUpdateOutputVideoSize(long j) {
        VideoSize videoSizePollFloor = this.videoSizes.pollFloor(j);
        if (videoSizePollFloor == null || videoSizePollFloor.equals(VideoSize.UNKNOWN) || videoSizePollFloor.equals(this.outputVideoSize)) {
            return false;
        }
        this.outputVideoSize = videoSizePollFloor;
        return true;
    }

    private void renderFrame(boolean z) {
        long jRemove = this.presentationTimestampsUs.remove();
        if (maybeUpdateOutputVideoSize(jRemove)) {
            this.frameRenderer.onVideoSizeChanged(this.outputVideoSize);
        }
        this.frameRenderer.renderFrame(z ? -1L : this.videoFrameReleaseInfo.getReleaseTimeNs(), jRemove, this.videoFrameReleaseControl.onFrameReleasedIsFirstFrame());
    }

    public void flush() {
        this.presentationTimestampsUs.clear();
        this.latestInputPresentationTimeUs = C.TIME_UNSET;
        this.latestOutputPresentationTimeUs = C.TIME_UNSET;
        this.lastPresentationTimeUs = C.TIME_UNSET;
        if (this.streamStartPositionsUs.size() > 0) {
            Long l = (Long) getLastAndClear(this.streamStartPositionsUs);
            l.longValue();
            this.streamStartPositionsUs.add(0L, l);
        }
        if (this.videoSizes.size() > 0) {
            this.videoSizes.add(0L, (VideoSize) getLastAndClear(this.videoSizes));
        }
    }

    public boolean isEnded() {
        long j = this.lastPresentationTimeUs;
        return j != C.TIME_UNSET && this.latestOutputPresentationTimeUs == j;
    }

    public void onFrameAvailableForRendering(long j) {
        this.presentationTimestampsUs.add(j);
        this.latestInputPresentationTimeUs = j;
        this.lastPresentationTimeUs = C.TIME_UNSET;
    }

    public void onStreamStartPositionChanged(long j) {
        TimedValueQueue<Long> timedValueQueue = this.streamStartPositionsUs;
        long j2 = this.latestInputPresentationTimeUs;
        timedValueQueue.add(j2 == C.TIME_UNSET ? 0L : j2 + 1, Long.valueOf(j));
    }

    public void onVideoSizeChanged(int i, int i2) {
        TimedValueQueue<VideoSize> timedValueQueue = this.videoSizes;
        long j = this.latestInputPresentationTimeUs;
        timedValueQueue.add(j == C.TIME_UNSET ? 0L : j + 1, new VideoSize(i, i2));
    }

    public void render(long j, long j2) throws ExoPlaybackException {
        while (!this.presentationTimestampsUs.isEmpty()) {
            long jElement = this.presentationTimestampsUs.element();
            if (maybeUpdateOutputStreamStartPosition(jElement)) {
                this.videoFrameReleaseControl.onProcessedStreamChange();
            }
            int frameReleaseAction = this.videoFrameReleaseControl.getFrameReleaseAction(jElement, j, j2, this.outputStreamStartPositionUs, false, false, this.videoFrameReleaseInfo);
            if (frameReleaseAction == 0 || frameReleaseAction == 1) {
                this.latestOutputPresentationTimeUs = jElement;
                renderFrame(frameReleaseAction == 0);
            } else if (frameReleaseAction == 2 || frameReleaseAction == 3) {
                this.latestOutputPresentationTimeUs = jElement;
                dropFrame();
            } else {
                if (frameReleaseAction != 4) {
                    if (frameReleaseAction != 5) {
                        throw new IllegalStateException(String.valueOf(frameReleaseAction));
                    }
                    return;
                }
                this.latestOutputPresentationTimeUs = jElement;
            }
        }
    }

    public void signalEndOfInput() {
        this.lastPresentationTimeUs = this.latestInputPresentationTimeUs;
    }
}
