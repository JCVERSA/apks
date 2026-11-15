package androidx.media3.exoplayer;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import java.io.IOException;

@UnstableApi
public abstract class NoSampleRenderer implements Renderer, RendererCapabilities {
    private RendererConfiguration configuration;
    private int index;
    private int state;

    @Nullable
    private SampleStream stream;
    private boolean streamIsFinal;

    @Override
    public final void disable() {
        Assertions.checkState(this.state == 1);
        this.state = 0;
        this.stream = null;
        this.streamIsFinal = false;
        onDisabled();
    }

    @Override
    public final void enable(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j, boolean z, boolean z2, long j2, long j3, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        Assertions.checkState(this.state == 0);
        this.configuration = rendererConfiguration;
        this.state = 1;
        onEnabled(z);
        replaceStream(formatArr, sampleStream, j2, j3, mediaPeriodId);
        onPositionReset(j, z);
    }

    @Override
    public final RendererCapabilities getCapabilities() {
        return this;
    }

    @Nullable
    public final RendererConfiguration getConfiguration() {
        return this.configuration;
    }

    public final int getIndex() {
        return this.index;
    }

    @Override
    @Nullable
    public MediaClock getMediaClock() {
        return null;
    }

    @Override
    public long getReadingPositionUs() {
        return Long.MIN_VALUE;
    }

    @Override
    public final int getState() {
        return this.state;
    }

    @Override
    @Nullable
    public final SampleStream getStream() {
        return this.stream;
    }

    @Override
    public final int getTrackType() {
        return -2;
    }

    @Override
    public void handleMessage(int i, @Nullable Object obj) throws ExoPlaybackException {
    }

    @Override
    public final boolean hasReadStreamToEnd() {
        return true;
    }

    @Override
    public final void init(int i, PlayerId playerId, Clock clock) {
        this.index = i;
    }

    @Override
    public final boolean isCurrentStreamFinal() {
        return this.streamIsFinal;
    }

    @Override
    public boolean isEnded() {
        return true;
    }

    @Override
    public boolean isReady() {
        return true;
    }

    @Override
    public final void maybeThrowStreamError() throws IOException {
    }

    public void onDisabled() {
    }

    public void onEnabled(boolean z) throws ExoPlaybackException {
    }

    public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
    }

    public void onRendererOffsetChanged(long j) throws ExoPlaybackException {
    }

    public void onReset() {
    }

    public void onStarted() throws ExoPlaybackException {
    }

    public void onStopped() {
    }

    @Override
    public final void replaceStream(Format[] formatArr, SampleStream sampleStream, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        Assertions.checkState(!this.streamIsFinal);
        this.stream = sampleStream;
        onRendererOffsetChanged(j2);
    }

    @Override
    public final void reset() {
        Assertions.checkState(this.state == 0);
        onReset();
    }

    @Override
    public final void resetPosition(long j) throws ExoPlaybackException {
        this.streamIsFinal = false;
        onPositionReset(j, false);
    }

    @Override
    public final void setCurrentStreamFinal() {
        this.streamIsFinal = true;
    }

    @Override
    public void setTimeline(Timeline timeline) {
    }

    @Override
    public final void start() throws ExoPlaybackException {
        Assertions.checkState(this.state == 1);
        this.state = 2;
        onStarted();
    }

    @Override
    public final void stop() {
        Assertions.checkState(this.state == 2);
        this.state = 1;
        onStopped();
    }

    @Override
    public int supportsFormat(Format format) throws ExoPlaybackException {
        return RendererCapabilities.create(0);
    }

    @Override
    public int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException {
        return 0;
    }
}
