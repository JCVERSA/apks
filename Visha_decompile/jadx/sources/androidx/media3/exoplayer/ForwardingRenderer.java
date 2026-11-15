package androidx.media3.exoplayer;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import java.io.IOException;

@UnstableApi
public class ForwardingRenderer implements Renderer {
    private final Renderer renderer;

    public ForwardingRenderer(Renderer renderer) {
        this.renderer = renderer;
    }

    @Override
    public void disable() {
        this.renderer.disable();
    }

    @Override
    public void enable(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j, boolean z, boolean z2, long j2, long j3, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        this.renderer.enable(rendererConfiguration, formatArr, sampleStream, j, z, z2, j2, j3, mediaPeriodId);
    }

    @Override
    public void enableMayRenderStartOfStream() {
        this.renderer.enableMayRenderStartOfStream();
    }

    @Override
    public RendererCapabilities getCapabilities() {
        return this.renderer.getCapabilities();
    }

    @Override
    public long getDurationToProgressUs(long j, long j2) {
        return this.renderer.getDurationToProgressUs(j, j2);
    }

    @Override
    @Nullable
    public MediaClock getMediaClock() {
        return this.renderer.getMediaClock();
    }

    @Override
    public String getName() {
        return this.renderer.getName();
    }

    @Override
    public long getReadingPositionUs() {
        return this.renderer.getReadingPositionUs();
    }

    @Override
    public int getState() {
        return this.renderer.getState();
    }

    @Override
    @Nullable
    public SampleStream getStream() {
        return this.renderer.getStream();
    }

    @Override
    public int getTrackType() {
        return this.renderer.getTrackType();
    }

    @Override
    public void handleMessage(int i, @Nullable Object obj) throws ExoPlaybackException {
        this.renderer.handleMessage(i, obj);
    }

    @Override
    public boolean hasReadStreamToEnd() {
        return this.renderer.hasReadStreamToEnd();
    }

    @Override
    public void init(int i, PlayerId playerId, Clock clock) {
        this.renderer.init(i, playerId, clock);
    }

    @Override
    public boolean isCurrentStreamFinal() {
        return this.renderer.isCurrentStreamFinal();
    }

    @Override
    public boolean isEnded() {
        return this.renderer.isEnded();
    }

    @Override
    public boolean isReady() {
        return this.renderer.isReady();
    }

    @Override
    public void maybeThrowStreamError() throws IOException {
        this.renderer.maybeThrowStreamError();
    }

    @Override
    public void release() {
        this.renderer.release();
    }

    @Override
    public void render(long j, long j2) throws ExoPlaybackException {
        this.renderer.render(j, j2);
    }

    @Override
    public void replaceStream(Format[] formatArr, SampleStream sampleStream, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        this.renderer.replaceStream(formatArr, sampleStream, j, j2, mediaPeriodId);
    }

    @Override
    public void reset() {
        this.renderer.reset();
    }

    @Override
    public void resetPosition(long j) throws ExoPlaybackException {
        this.renderer.resetPosition(j);
    }

    @Override
    public void setCurrentStreamFinal() {
        this.renderer.setCurrentStreamFinal();
    }

    @Override
    public void setPlaybackSpeed(float f, float f2) throws ExoPlaybackException {
        this.renderer.setPlaybackSpeed(f, f2);
    }

    @Override
    public void setTimeline(Timeline timeline) {
        this.renderer.setTimeline(timeline);
    }

    @Override
    public void start() throws ExoPlaybackException {
        this.renderer.start();
    }

    @Override
    public void stop() {
        this.renderer.stop();
    }
}
