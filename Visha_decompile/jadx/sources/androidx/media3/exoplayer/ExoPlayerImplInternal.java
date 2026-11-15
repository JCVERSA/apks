package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import com.google.common.collect.ImmutableList;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.oi3;
import defpackage.w6a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

final class ExoPlayerImplInternal implements Handler.Callback, MediaPeriod.Callback, TrackSelector.InvalidationListener, MediaSourceList.MediaSourceListInfoRefreshListener, DefaultMediaClock.PlaybackParametersListener, PlayerMessage.Sender, AudioFocusManager.PlayerControl {
    private static final long BUFFERING_MAXIMUM_INTERVAL_MS = Util.usToMs(10000);
    private static final int MSG_ADD_MEDIA_SOURCES = 18;
    private static final int MSG_ATTEMPT_RENDERER_ERROR_RECOVERY = 25;
    private static final int MSG_AUDIO_FOCUS_PLAYER_COMMAND = 33;
    private static final int MSG_AUDIO_FOCUS_VOLUME_MULTIPLIER = 34;
    private static final int MSG_DO_SOME_WORK = 2;
    private static final int MSG_MOVE_MEDIA_SOURCES = 19;
    private static final int MSG_PERIOD_PREPARED = 8;
    private static final int MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL = 16;
    private static final int MSG_PLAYLIST_UPDATE_REQUESTED = 22;
    private static final int MSG_PREPARE = 29;
    private static final int MSG_RELEASE = 7;
    private static final int MSG_REMOVE_MEDIA_SOURCES = 20;
    private static final int MSG_RENDERER_CAPABILITIES_CHANGED = 26;
    private static final int MSG_SEEK_TO = 3;
    private static final int MSG_SEND_MESSAGE = 14;
    private static final int MSG_SEND_MESSAGE_TO_TARGET_THREAD = 15;
    private static final int MSG_SET_AUDIO_ATTRIBUTES = 31;
    private static final int MSG_SET_FOREGROUND_MODE = 13;
    private static final int MSG_SET_MEDIA_SOURCES = 17;
    private static final int MSG_SET_PAUSE_AT_END_OF_WINDOW = 23;
    private static final int MSG_SET_PLAYBACK_PARAMETERS = 4;
    private static final int MSG_SET_PLAY_WHEN_READY = 1;
    private static final int MSG_SET_PRELOAD_CONFIGURATION = 28;
    private static final int MSG_SET_REPEAT_MODE = 11;
    private static final int MSG_SET_SEEK_PARAMETERS = 5;
    private static final int MSG_SET_SHUFFLE_ENABLED = 12;
    private static final int MSG_SET_SHUFFLE_ORDER = 21;
    private static final int MSG_SET_VIDEO_OUTPUT = 30;
    private static final int MSG_SET_VOLUME = 32;
    private static final int MSG_SOURCE_CONTINUE_LOADING_REQUESTED = 9;
    private static final int MSG_STOP = 6;
    private static final int MSG_TRACK_SELECTION_INVALIDATED = 10;
    private static final int MSG_UPDATE_MEDIA_SOURCES_WITH_MEDIA_ITEMS = 27;
    private static final long PLAYBACK_BUFFER_EMPTY_THRESHOLD_US = 500000;
    private static final long PLAYBACK_STUCK_AFTER_MS = 4000;
    private static final long READY_MAXIMUM_INTERVAL_MS = 1000;
    private static final String TAG = "ExoPlayerImplInternal";
    private final AnalyticsCollector analyticsCollector;
    private final HandlerWrapper applicationLooperHandler;
    private final AudioFocusManager audioFocusManager;
    private final long backBufferDurationUs;
    private final BandwidthMeter bandwidthMeter;
    private final Clock clock;
    private boolean deliverPendingMessageAtStartPositionRequired;
    private final boolean dynamicSchedulingEnabled;
    private final TrackSelectorResult emptyTrackSelectorResult;
    private int enabledRendererCount;
    private boolean foregroundMode;
    private final HandlerWrapper handler;
    private final boolean hasSecondaryRenderers;
    private boolean isPrewarmingDisabledUntilNextTransition;
    private boolean isRebuffering;
    private final LivePlaybackSpeedControl livePlaybackSpeedControl;
    private final LoadControl loadControl;
    private final DefaultMediaClock mediaClock;
    private final MediaSourceList mediaSourceList;
    private int nextPendingMessageIndexHint;
    private boolean offloadSchedulingEnabled;
    private boolean pauseAtEndOfWindow;

    @Nullable
    private SeekPosition pendingInitialSeekPosition;
    private final ArrayList<PendingMessageInfo> pendingMessages;
    private boolean pendingPauseAtEndOfPeriod;

    @Nullable
    private ExoPlaybackException pendingRecoverableRendererError;
    private final Timeline.Period period;
    private PlaybackInfo playbackInfo;
    private PlaybackInfoUpdate playbackInfoUpdate;
    private final PlaybackInfoUpdateListener playbackInfoUpdateListener;
    private final Looper playbackLooper;
    private final PlaybackLooperProvider playbackLooperProvider;
    private final PlayerId playerId;
    private ExoPlayer.PreloadConfiguration preloadConfiguration;
    private final MediaPeriodQueue queue;
    private final long releaseTimeoutMs;
    private boolean released;
    private final RendererCapabilities[] rendererCapabilities;
    private long rendererPositionElapsedRealtimeUs;
    private long rendererPositionUs;
    private final boolean[] rendererReportedReady;
    private final RendererHolder[] renderers;
    private int repeatMode;
    private boolean requestForRendererSleep;
    private final boolean retainBackBufferFromKeyframe;
    private SeekParameters seekParameters;
    private long setForegroundModeTimeoutMs;
    private boolean shouldContinueLoading;
    private boolean shuffleModeEnabled;
    private final TrackSelector trackSelector;
    private final Timeline.Window window;
    private long prewarmingMediaPeriodDiscontinuity = C.TIME_UNSET;
    private float volume = 1.0f;
    private long playbackMaybeBecameStuckAtMs = C.TIME_UNSET;
    private long lastRebufferRealtimeMs = C.TIME_UNSET;
    private Timeline lastPreloadPoolInvalidationTimeline = Timeline.EMPTY;

    public static final class MediaSourceListUpdateMessage {
        private final List<MediaSourceList.MediaSourceHolder> mediaSourceHolders;
        private final long positionUs;
        private final ShuffleOrder shuffleOrder;
        private final int windowIndex;

        private MediaSourceListUpdateMessage(List<MediaSourceList.MediaSourceHolder> list, ShuffleOrder shuffleOrder, int i, long j) {
            this.mediaSourceHolders = list;
            this.shuffleOrder = shuffleOrder;
            this.windowIndex = i;
            this.positionUs = j;
        }
    }

    public static class MoveMediaItemsMessage {
        public final int fromIndex;
        public final int newFromIndex;
        public final ShuffleOrder shuffleOrder;
        public final int toIndex;

        public MoveMediaItemsMessage(int i, int i2, int i3, ShuffleOrder shuffleOrder) {
            this.fromIndex = i;
            this.toIndex = i2;
            this.newFromIndex = i3;
            this.shuffleOrder = shuffleOrder;
        }
    }

    public static final class PendingMessageInfo implements Comparable<PendingMessageInfo> {
        public final PlayerMessage message;
        public int resolvedPeriodIndex;
        public long resolvedPeriodTimeUs;

        @Nullable
        public Object resolvedPeriodUid;

        public PendingMessageInfo(PlayerMessage playerMessage) {
            this.message = playerMessage;
        }

        public void setResolvedPosition(int i, long j, Object obj) {
            this.resolvedPeriodIndex = i;
            this.resolvedPeriodTimeUs = j;
            this.resolvedPeriodUid = obj;
        }

        @Override
        public int compareTo(PendingMessageInfo pendingMessageInfo) {
            Object obj = this.resolvedPeriodUid;
            if ((obj == null) != (pendingMessageInfo.resolvedPeriodUid == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i = this.resolvedPeriodIndex - pendingMessageInfo.resolvedPeriodIndex;
            return i != 0 ? i : Util.compareLong(this.resolvedPeriodTimeUs, pendingMessageInfo.resolvedPeriodTimeUs);
        }
    }

    public static final class PlaybackInfoUpdate {
        public int discontinuityReason;
        private boolean hasPendingChange;
        public int operationAcks;
        public PlaybackInfo playbackInfo;
        public boolean positionDiscontinuity;

        public PlaybackInfoUpdate(PlaybackInfo playbackInfo) {
            this.playbackInfo = playbackInfo;
        }

        public void incrementPendingOperationAcks(int i) {
            this.hasPendingChange |= i > 0;
            this.operationAcks += i;
        }

        public void setPlaybackInfo(PlaybackInfo playbackInfo) {
            this.hasPendingChange |= this.playbackInfo != playbackInfo;
            this.playbackInfo = playbackInfo;
        }

        public void setPositionDiscontinuity(int i) {
            if (this.positionDiscontinuity && this.discontinuityReason != 5) {
                Assertions.checkArgument(i == 5);
                return;
            }
            this.hasPendingChange = true;
            this.positionDiscontinuity = true;
            this.discontinuityReason = i;
        }
    }

    public interface PlaybackInfoUpdateListener {
        void onPlaybackInfoUpdate(PlaybackInfoUpdate playbackInfoUpdate);
    }

    public static final class PositionUpdateForPlaylistChange {
        public final boolean endPlayback;
        public final boolean forceBufferingState;
        public final MediaSource.MediaPeriodId periodId;
        public final long periodPositionUs;
        public final long requestedContentPositionUs;
        public final boolean setTargetLiveOffset;

        public PositionUpdateForPlaylistChange(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, boolean z, boolean z2, boolean z3) {
            this.periodId = mediaPeriodId;
            this.periodPositionUs = j;
            this.requestedContentPositionUs = j2;
            this.forceBufferingState = z;
            this.endPlayback = z2;
            this.setTargetLiveOffset = z3;
        }
    }

    public static final class SeekPosition {
        public final Timeline timeline;
        public final int windowIndex;
        public final long windowPositionUs;

        public SeekPosition(Timeline timeline, int i, long j) {
            this.timeline = timeline;
            this.windowIndex = i;
            this.windowPositionUs = j;
        }
    }

    public ExoPlayerImplInternal(Context context, Renderer[] rendererArr, Renderer[] rendererArr2, TrackSelector trackSelector, TrackSelectorResult trackSelectorResult, LoadControl loadControl, BandwidthMeter bandwidthMeter, int i, boolean z, AnalyticsCollector analyticsCollector, SeekParameters seekParameters, LivePlaybackSpeedControl livePlaybackSpeedControl, long j, boolean z2, boolean z3, Looper looper, Clock clock, PlaybackInfoUpdateListener playbackInfoUpdateListener, PlayerId playerId, @Nullable PlaybackLooperProvider playbackLooperProvider, ExoPlayer.PreloadConfiguration preloadConfiguration) {
        this.playbackInfoUpdateListener = playbackInfoUpdateListener;
        this.trackSelector = trackSelector;
        this.emptyTrackSelectorResult = trackSelectorResult;
        this.loadControl = loadControl;
        this.bandwidthMeter = bandwidthMeter;
        this.repeatMode = i;
        this.shuffleModeEnabled = z;
        this.seekParameters = seekParameters;
        this.livePlaybackSpeedControl = livePlaybackSpeedControl;
        this.releaseTimeoutMs = j;
        this.setForegroundModeTimeoutMs = j;
        this.pauseAtEndOfWindow = z2;
        this.dynamicSchedulingEnabled = z3;
        this.clock = clock;
        this.playerId = playerId;
        this.preloadConfiguration = preloadConfiguration;
        this.analyticsCollector = analyticsCollector;
        this.backBufferDurationUs = loadControl.getBackBufferDurationUs(playerId);
        this.retainBackBufferFromKeyframe = loadControl.retainBackBufferFromKeyframe(playerId);
        PlaybackInfo playbackInfoCreateDummy = PlaybackInfo.createDummy(trackSelectorResult);
        this.playbackInfo = playbackInfoCreateDummy;
        this.playbackInfoUpdate = new PlaybackInfoUpdate(playbackInfoCreateDummy);
        this.rendererCapabilities = new RendererCapabilities[rendererArr.length];
        this.rendererReportedReady = new boolean[rendererArr.length];
        RendererCapabilities.Listener rendererCapabilitiesListener = trackSelector.getRendererCapabilitiesListener();
        this.renderers = new RendererHolder[rendererArr.length];
        boolean z4 = false;
        for (int i2 = 0; i2 < rendererArr.length; i2++) {
            rendererArr[i2].init(i2, playerId, clock);
            this.rendererCapabilities[i2] = rendererArr[i2].getCapabilities();
            if (rendererCapabilitiesListener != null) {
                this.rendererCapabilities[i2].setListener(rendererCapabilitiesListener);
            }
            Renderer renderer = rendererArr2[i2];
            if (renderer != null) {
                renderer.init(rendererArr.length + i2, playerId, clock);
                z4 = true;
            }
            this.renderers[i2] = new RendererHolder(rendererArr[i2], rendererArr2[i2], i2);
        }
        this.hasSecondaryRenderers = z4;
        this.mediaClock = new DefaultMediaClock(this, clock);
        this.pendingMessages = new ArrayList<>();
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        trackSelector.init(this, bandwidthMeter);
        this.deliverPendingMessageAtStartPositionRequired = true;
        HandlerWrapper handlerWrapperCreateHandler = clock.createHandler(looper, null);
        this.applicationLooperHandler = handlerWrapperCreateHandler;
        this.queue = new MediaPeriodQueue(analyticsCollector, handlerWrapperCreateHandler, new MediaPeriodHolder.Factory() {
            @Override
            public final MediaPeriodHolder create(MediaPeriodInfo mediaPeriodInfo, long j2) {
                return this.a.createMediaPeriodHolder(mediaPeriodInfo, j2);
            }
        }, preloadConfiguration);
        this.mediaSourceList = new MediaSourceList(this, analyticsCollector, handlerWrapperCreateHandler, playerId);
        PlaybackLooperProvider playbackLooperProvider2 = playbackLooperProvider == null ? new PlaybackLooperProvider() : playbackLooperProvider;
        this.playbackLooperProvider = playbackLooperProvider2;
        Looper looperObtainLooper = playbackLooperProvider2.obtainLooper();
        this.playbackLooper = looperObtainLooper;
        this.handler = clock.createHandler(looperObtainLooper, this);
        this.audioFocusManager = new AudioFocusManager(context, looperObtainLooper, this);
    }

    private void addMediaItemsInternal(MediaSourceListUpdateMessage mediaSourceListUpdateMessage, int i) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        MediaSourceList mediaSourceList = this.mediaSourceList;
        if (i == -1) {
            i = mediaSourceList.getSize();
        }
        handleMediaSourceListInfoRefreshed(mediaSourceList.addMediaSources(i, mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder), false);
    }

    private void allowRenderersToRenderStartOfStreams() {
        TrackSelectorResult trackSelectorResult = this.queue.getPlayingPeriod().getTrackSelectorResult();
        for (int i = 0; i < this.renderers.length; i++) {
            if (trackSelectorResult.isRendererEnabled(i)) {
                this.renderers[i].enableMayRenderStartOfStream();
            }
        }
    }

    private boolean areRenderersPrewarming() {
        if (!this.hasSecondaryRenderers) {
            return false;
        }
        for (RendererHolder rendererHolder : this.renderers) {
            if (rendererHolder.isPrewarming()) {
                return true;
            }
        }
        return false;
    }

    private void attemptRendererErrorRecovery() throws ExoPlaybackException {
        reselectTracksInternalAndSeek();
    }

    public MediaPeriodHolder createMediaPeriodHolder(MediaPeriodInfo mediaPeriodInfo, long j) {
        return new MediaPeriodHolder(this.rendererCapabilities, j, this.trackSelector, this.loadControl.getAllocator(), this.mediaSourceList, mediaPeriodInfo, this.emptyTrackSelectorResult, this.preloadConfiguration.targetPreloadDurationUs);
    }

    private void deliverMessage(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.isCanceled()) {
            return;
        }
        try {
            playerMessage.getTarget().handleMessage(playerMessage.getType(), playerMessage.getPayload());
        } finally {
            playerMessage.markAsProcessed(true);
        }
    }

    private void disableAndResetPrewarmingRenderers() {
        if (this.hasSecondaryRenderers && areRenderersPrewarming()) {
            for (RendererHolder rendererHolder : this.renderers) {
                int enabledRendererCount = rendererHolder.getEnabledRendererCount();
                rendererHolder.disablePrewarming(this.mediaClock);
                this.enabledRendererCount -= enabledRendererCount - rendererHolder.getEnabledRendererCount();
            }
            this.prewarmingMediaPeriodDiscontinuity = C.TIME_UNSET;
        }
    }

    private void disableRenderer(int i) throws ExoPlaybackException {
        int enabledRendererCount = this.renderers[i].getEnabledRendererCount();
        this.renderers[i].disable(this.mediaClock);
        maybeTriggerOnRendererReadyChanged(i, false);
        this.enabledRendererCount -= enabledRendererCount;
    }

    private void disableRenderers() throws ExoPlaybackException {
        for (int i = 0; i < this.renderers.length; i++) {
            disableRenderer(i);
        }
        this.prewarmingMediaPeriodDiscontinuity = C.TIME_UNSET;
    }

    /* JADX WARN: Code duplicated, block: B:97:0x0188  */
    private void doSomeWork() throws ExoPlaybackException, IOException {
        boolean z;
        boolean z2;
        int i;
        long jUptimeMillis = this.clock.uptimeMillis();
        this.handler.removeMessages(2);
        updatePeriods();
        int i2 = this.playbackInfo.playbackState;
        if (i2 == 1 || i2 == 4) {
            return;
        }
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (playingPeriod == null) {
            scheduleNextWork(jUptimeMillis);
            return;
        }
        TraceUtil.beginSection("doSomeWork");
        updatePlaybackPositions();
        if (playingPeriod.prepared) {
            this.rendererPositionElapsedRealtimeUs = Util.msToUs(this.clock.elapsedRealtime());
            playingPeriod.mediaPeriod.discardBuffer(this.playbackInfo.positionUs - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
            z = true;
            z2 = true;
            int i3 = 0;
            while (true) {
                RendererHolder[] rendererHolderArr = this.renderers;
                if (i3 >= rendererHolderArr.length) {
                    break;
                }
                RendererHolder rendererHolder = rendererHolderArr[i3];
                if (rendererHolder.getEnabledRendererCount() == 0) {
                    maybeTriggerOnRendererReadyChanged(i3, false);
                } else {
                    rendererHolder.render(this.rendererPositionUs, this.rendererPositionElapsedRealtimeUs);
                    z = z && rendererHolder.isEnded();
                    boolean zAllowsPlayback = rendererHolder.allowsPlayback(playingPeriod);
                    maybeTriggerOnRendererReadyChanged(i3, zAllowsPlayback);
                    z2 = z2 && zAllowsPlayback;
                    if (!zAllowsPlayback) {
                        maybeThrowRendererStreamError(i3);
                    }
                }
                i3++;
            }
        } else {
            playingPeriod.mediaPeriod.maybeThrowPrepareError();
            z = true;
            z2 = true;
        }
        long j = playingPeriod.info.durationUs;
        boolean z3 = z && playingPeriod.prepared && (j == C.TIME_UNSET || j <= this.playbackInfo.positionUs);
        if (z3 && this.pendingPauseAtEndOfPeriod) {
            this.pendingPauseAtEndOfPeriod = false;
            setPlayWhenReadyInternal(false, this.playbackInfo.playbackSuppressionReason, false, 5);
        }
        if (z3 && playingPeriod.info.isFinal) {
            setState(4);
            stopRenderers();
        } else if (this.playbackInfo.playbackState == 2 && shouldTransitionToReadyState(z2)) {
            setState(3);
            this.pendingRecoverableRendererError = null;
            if (shouldPlayWhenReady()) {
                updateRebufferingState(false, false);
                this.mediaClock.start();
                startRenderers();
            }
        } else if (this.playbackInfo.playbackState == 3 && (this.enabledRendererCount != 0 ? !z2 : !isTimelineReady())) {
            updateRebufferingState(shouldPlayWhenReady(), false);
            setState(2);
            if (this.isRebuffering) {
                notifyTrackSelectionRebuffer();
                this.livePlaybackSpeedControl.notifyRebuffer();
            }
            stopRenderers();
        }
        if (this.playbackInfo.playbackState == 2) {
            int i4 = 0;
            while (true) {
                RendererHolder[] rendererHolderArr2 = this.renderers;
                if (i4 >= rendererHolderArr2.length) {
                    break;
                }
                if (rendererHolderArr2[i4].isReadingFromPeriod(playingPeriod)) {
                    maybeThrowRendererStreamError(i4);
                }
                i4++;
            }
            PlaybackInfo playbackInfo = this.playbackInfo;
            if (playbackInfo.isLoading || playbackInfo.totalBufferedDurationUs >= PLAYBACK_BUFFER_EMPTY_THRESHOLD_US || !isLoadingPossible(this.queue.getLoadingPeriod()) || !shouldPlayWhenReady()) {
                this.playbackMaybeBecameStuckAtMs = C.TIME_UNSET;
            } else if (this.playbackMaybeBecameStuckAtMs == C.TIME_UNSET) {
                this.playbackMaybeBecameStuckAtMs = this.clock.elapsedRealtime();
            } else if (this.clock.elapsedRealtime() - this.playbackMaybeBecameStuckAtMs >= PLAYBACK_STUCK_AFTER_MS) {
                throw new IllegalStateException("Playback stuck buffering and not loading");
            }
        } else {
            this.playbackMaybeBecameStuckAtMs = C.TIME_UNSET;
        }
        boolean z4 = shouldPlayWhenReady() && this.playbackInfo.playbackState == 3;
        boolean z5 = this.offloadSchedulingEnabled && this.requestForRendererSleep && z4;
        PlaybackInfo playbackInfo2 = this.playbackInfo;
        if (playbackInfo2.sleepingForOffload != z5) {
            this.playbackInfo = playbackInfo2.copyWithSleepingForOffload(z5);
        }
        this.requestForRendererSleep = false;
        if (!z5 && (i = this.playbackInfo.playbackState) != 4 && (z4 || i == 2 || (i == 3 && this.enabledRendererCount != 0))) {
            scheduleNextWork(jUptimeMillis);
        }
        TraceUtil.endSection();
    }

    private void enableRenderer(MediaPeriodHolder mediaPeriodHolder, int i, boolean z, long j) throws ExoPlaybackException {
        RendererHolder rendererHolder = this.renderers[i];
        if (rendererHolder.isRendererEnabled()) {
            return;
        }
        boolean z2 = mediaPeriodHolder == this.queue.getPlayingPeriod();
        TrackSelectorResult trackSelectorResult = mediaPeriodHolder.getTrackSelectorResult();
        RendererConfiguration rendererConfiguration = trackSelectorResult.rendererConfigurations[i];
        ExoTrackSelection exoTrackSelection = trackSelectorResult.selections[i];
        boolean z3 = shouldPlayWhenReady() && this.playbackInfo.playbackState == 3;
        boolean z4 = !z && z3;
        this.enabledRendererCount++;
        rendererHolder.enable(rendererConfiguration, exoTrackSelection, mediaPeriodHolder.sampleStreams[i], this.rendererPositionUs, z4, z2, j, mediaPeriodHolder.getRendererOffset(), mediaPeriodHolder.info.id, this.mediaClock);
        rendererHolder.handleMessage(11, new Renderer.WakeupListener() {
            @Override
            public void onSleep() {
                ExoPlayerImplInternal.this.requestForRendererSleep = true;
            }

            @Override
            public void onWakeup() {
                if (ExoPlayerImplInternal.this.dynamicSchedulingEnabled || ExoPlayerImplInternal.this.offloadSchedulingEnabled) {
                    ExoPlayerImplInternal.this.handler.sendEmptyMessage(2);
                }
            }
        }, mediaPeriodHolder);
        if (z3 && z2) {
            rendererHolder.start();
        }
    }

    private void enableRenderers() throws ExoPlaybackException {
        enableRenderers(new boolean[this.renderers.length], this.queue.getReadingPeriod().getStartPositionRendererTime());
    }

    private ImmutableList<Metadata> extractMetadataFromTrackSelectionArray(ExoTrackSelection[] exoTrackSelectionArr) {
        ImmutableList.a aVar = new ImmutableList.a();
        boolean z = false;
        for (ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
            if (exoTrackSelection != null) {
                Metadata metadata = exoTrackSelection.getFormat(0).metadata;
                if (metadata == null) {
                    aVar.a(new Metadata(new Metadata.Entry[0]));
                } else {
                    aVar.a(metadata);
                    z = true;
                }
            }
        }
        return z ? aVar.e() : ImmutableList.of();
    }

    private long getCurrentLiveOffsetUs() {
        PlaybackInfo playbackInfo = this.playbackInfo;
        return getLiveOffsetUs(playbackInfo.timeline, playbackInfo.periodId.periodUid, playbackInfo.positionUs);
    }

    private long getLiveOffsetUs(Timeline timeline, Object obj, long j) {
        timeline.getWindow(timeline.getPeriodByUid(obj, this.period).windowIndex, this.window);
        Timeline.Window window = this.window;
        if (window.windowStartTimeMs != C.TIME_UNSET && window.isLive()) {
            Timeline.Window window2 = this.window;
            if (window2.isDynamic) {
                return Util.msToUs(window2.getCurrentUnixTimeMs() - this.window.windowStartTimeMs) - (j + this.period.getPositionInWindowUs());
            }
        }
        return C.TIME_UNSET;
    }

    private long getMaxRendererReadPositionUs(MediaPeriodHolder mediaPeriodHolder) {
        if (mediaPeriodHolder == null) {
            return 0L;
        }
        long rendererOffset = mediaPeriodHolder.getRendererOffset();
        if (!mediaPeriodHolder.prepared) {
            return rendererOffset;
        }
        int i = 0;
        while (true) {
            RendererHolder[] rendererHolderArr = this.renderers;
            if (i >= rendererHolderArr.length) {
                return rendererOffset;
            }
            if (rendererHolderArr[i].isReadingFromPeriod(mediaPeriodHolder)) {
                long readingPositionUs = this.renderers[i].getReadingPositionUs(mediaPeriodHolder);
                if (readingPositionUs == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                rendererOffset = Math.max(readingPositionUs, rendererOffset);
            }
            i++;
        }
    }

    private Pair<MediaSource.MediaPeriodId, Long> getPlaceholderFirstMediaPeriodPositionUs(Timeline timeline) {
        if (timeline.isEmpty()) {
            return Pair.create(PlaybackInfo.getDummyPeriodForEmptyTimeline(), 0L);
        }
        Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(this.window, this.period, timeline.getFirstWindowIndex(this.shuffleModeEnabled), C.TIME_UNSET);
        MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange = this.queue.resolveMediaPeriodIdForAdsAfterPeriodPositionChange(timeline, periodPositionUs.first, 0L);
        long jLongValue = ((Long) periodPositionUs.second).longValue();
        if (mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.isAd()) {
            timeline.getPeriodByUid(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.periodUid, this.period);
            jLongValue = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.adIndexInAdGroup == this.period.getFirstAdIndexToPlay(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.adGroupIndex) ? this.period.getAdResumePositionUs() : 0L;
        }
        return Pair.create(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange, Long.valueOf(jLongValue));
    }

    private long getTotalBufferedDurationUs() {
        return getTotalBufferedDurationUs(this.playbackInfo.bufferedPositionUs);
    }

    private void handleAudioFocusPlayerCommandInternal(int i) throws ExoPlaybackException {
        PlaybackInfo playbackInfo = this.playbackInfo;
        updatePlayWhenReadyWithAudioFocus(playbackInfo.playWhenReady, i, playbackInfo.playbackSuppressionReason, playbackInfo.playWhenReadyChangeReason);
    }

    private void handleAudioFocusVolumeMultiplierChange() throws ExoPlaybackException {
        setVolumeInternal(this.volume);
    }

    private void handleContinueLoadingRequested(MediaPeriod mediaPeriod) {
        if (this.queue.isLoading(mediaPeriod)) {
            this.queue.reevaluateBuffer(this.rendererPositionUs);
            maybeContinueLoading();
        } else if (this.queue.isPreloading(mediaPeriod)) {
            maybeContinuePreloading();
        }
    }

    private void handleIoException(IOException iOException, int i) {
        ExoPlaybackException exoPlaybackExceptionCreateForSource = ExoPlaybackException.createForSource(iOException, i);
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (playingPeriod != null) {
            exoPlaybackExceptionCreateForSource = exoPlaybackExceptionCreateForSource.copyWithMediaPeriodId(playingPeriod.info.id);
        }
        Log.e(TAG, "Playback error", exoPlaybackExceptionCreateForSource);
        stopInternal(false, false);
        this.playbackInfo = this.playbackInfo.copyWithPlaybackError(exoPlaybackExceptionCreateForSource);
    }

    private void handleLoadingMediaPeriodChanged(boolean z) {
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        MediaSource.MediaPeriodId mediaPeriodId = loadingPeriod == null ? this.playbackInfo.periodId : loadingPeriod.info.id;
        boolean zEquals = this.playbackInfo.loadingMediaPeriodId.equals(mediaPeriodId);
        if (!zEquals) {
            this.playbackInfo = this.playbackInfo.copyWithLoadingMediaPeriodId(mediaPeriodId);
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        playbackInfo.bufferedPositionUs = loadingPeriod == null ? playbackInfo.positionUs : loadingPeriod.getBufferedPositionUs();
        this.playbackInfo.totalBufferedDurationUs = getTotalBufferedDurationUs();
        if ((!zEquals || z) && loadingPeriod != null && loadingPeriod.prepared) {
            updateLoadControlTrackSelection(loadingPeriod.info.id, loadingPeriod.getTrackGroups(), loadingPeriod.getTrackSelectorResult());
        }
    }

    private void handleLoadingPeriodPrepared(MediaPeriodHolder mediaPeriodHolder) throws ExoPlaybackException {
        if (!mediaPeriodHolder.prepared) {
            float f = this.mediaClock.getPlaybackParameters().speed;
            PlaybackInfo playbackInfo = this.playbackInfo;
            mediaPeriodHolder.handlePrepared(f, playbackInfo.timeline, playbackInfo.playWhenReady);
        }
        updateLoadControlTrackSelection(mediaPeriodHolder.info.id, mediaPeriodHolder.getTrackGroups(), mediaPeriodHolder.getTrackSelectorResult());
        if (mediaPeriodHolder == this.queue.getPlayingPeriod()) {
            resetRendererPosition(mediaPeriodHolder.info.startPositionUs);
            enableRenderers();
            mediaPeriodHolder.allRenderersInCorrectState = true;
            PlaybackInfo playbackInfo2 = this.playbackInfo;
            MediaSource.MediaPeriodId mediaPeriodId = playbackInfo2.periodId;
            long j = mediaPeriodHolder.info.startPositionUs;
            this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, j, playbackInfo2.requestedContentPositionUs, j, false, 5);
        }
        maybeContinueLoading();
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:106:0x01df  */
    /* JADX WARN: Code duplicated, block: B:110:0x0207  */
    /* JADX WARN: Code duplicated, block: B:89:0x019c  */
    /* JADX WARN: Code duplicated, block: B:90:0x019e  */
    /* JADX WARN: Code duplicated, block: B:95:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:97:0x01bf A[ADDED_TO_REGION] */
    private void handleMediaSourceListInfoRefreshed(Timeline timeline, boolean z) throws Throwable {
        int i;
        SeekPosition seekPosition;
        long j;
        SeekPosition seekPosition2;
        boolean z2;
        int i2;
        boolean z3;
        long j2;
        long jSeekToPeriodPosition;
        PositionUpdateForPlaylistChange positionUpdateForPlaylistChangeResolvePositionForPlaylistChange = resolvePositionForPlaylistChange(timeline, this.playbackInfo, this.pendingInitialSeekPosition, this.queue, this.repeatMode, this.shuffleModeEnabled, this.window, this.period);
        MediaSource.MediaPeriodId mediaPeriodId = positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.periodId;
        long j3 = positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.requestedContentPositionUs;
        boolean z4 = positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.forceBufferingState;
        long j4 = positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.periodPositionUs;
        boolean z5 = (this.playbackInfo.periodId.equals(mediaPeriodId) && j4 == this.playbackInfo.positionUs) ? false : true;
        try {
            if (positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.endPlayback) {
                if (this.playbackInfo.playbackState != 1) {
                    setState(4);
                }
                resetInternal(false, false, false, true);
            }
            try {
                for (RendererHolder rendererHolder : this.renderers) {
                    rendererHolder.setTimeline(timeline);
                }
                try {
                    if (z5) {
                        z3 = false;
                        j2 = j3;
                        i2 = 4;
                        jSeekToPeriodPosition = j4;
                        if (!timeline.isEmpty()) {
                            for (MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
                                if (playingPeriod.info.id.equals(mediaPeriodId)) {
                                    playingPeriod.info = this.queue.getUpdatedMediaPeriodInfo(timeline, playingPeriod.info);
                                    playingPeriod.updateClipping();
                                }
                            }
                            jSeekToPeriodPosition = seekToPeriodPosition(mediaPeriodId, jSeekToPeriodPosition, z4);
                        }
                    } else {
                        try {
                            i2 = 4;
                            z3 = false;
                            j2 = j3;
                            jSeekToPeriodPosition = j4;
                            int iUpdateQueuedPeriods = this.queue.updateQueuedPeriods(timeline, this.rendererPositionUs, this.queue.getReadingPeriod() == null ? 0L : getMaxRendererReadPositionUs(this.queue.getReadingPeriod()), (!areRenderersPrewarming() || this.queue.getPrewarmingPeriod() == null) ? 0L : getMaxRendererReadPositionUs(this.queue.getPrewarmingPeriod()));
                            if ((iUpdateQueuedPeriods & 1) != 0) {
                                seekToCurrentPosition(false);
                            } else if ((iUpdateQueuedPeriods & 2) != 0) {
                                disableAndResetPrewarmingRenderers();
                            }
                        } catch (Throwable th) {
                            th = th;
                            j3 = j3;
                            i = 4;
                            j3 = j4;
                            seekPosition = null;
                            PlaybackInfo playbackInfo = this.playbackInfo;
                            Timeline timeline2 = playbackInfo.timeline;
                            MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo.periodId;
                            if (positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.setTargetLiveOffset) {
                                j = j3;
                            } else {
                                j = -9223372036854775807L;
                            }
                            seekPosition2 = seekPosition;
                            updatePlaybackSpeedSettingsForNewPeriod(timeline, mediaPeriodId, timeline2, mediaPeriodId2, j, false);
                            if (z5 || j3 != this.playbackInfo.requestedContentPositionUs) {
                                PlaybackInfo playbackInfo2 = this.playbackInfo;
                                Object obj = playbackInfo2.periodId.periodUid;
                                Timeline timeline3 = playbackInfo2.timeline;
                                if (z5 || !z || timeline3.isEmpty() || timeline3.getPeriodByUid(obj, this.period).isPlaceholder) {
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, j3, j3, this.playbackInfo.discontinuityStartPositionUs, z2, timeline.getIndexOfPeriod(obj) == -1 ? i : 3);
                            }
                            resetPendingPauseAtEndOfPeriod();
                            resolvePendingMessagePositions(timeline, this.playbackInfo.timeline);
                            this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline);
                            if (!timeline.isEmpty()) {
                                this.pendingInitialSeekPosition = seekPosition2;
                            }
                            handleLoadingMediaPeriodChanged(false);
                            this.handler.sendEmptyMessage(2);
                            throw th;
                        }
                    }
                    PlaybackInfo playbackInfo3 = this.playbackInfo;
                    updatePlaybackSpeedSettingsForNewPeriod(timeline, mediaPeriodId, playbackInfo3.timeline, playbackInfo3.periodId, positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.setTargetLiveOffset ? jSeekToPeriodPosition : -9223372036854775807L, false);
                    if (z5 || j2 != this.playbackInfo.requestedContentPositionUs) {
                        PlaybackInfo playbackInfo4 = this.playbackInfo;
                        Object obj2 = playbackInfo4.periodId.periodUid;
                        Timeline timeline4 = playbackInfo4.timeline;
                        this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, jSeekToPeriodPosition, j2, this.playbackInfo.discontinuityStartPositionUs, (!z5 || !z || timeline4.isEmpty() || timeline4.getPeriodByUid(obj2, this.period).isPlaceholder) ? z3 : true, timeline.getIndexOfPeriod(obj2) == -1 ? i2 : 3);
                    }
                    resetPendingPauseAtEndOfPeriod();
                    resolvePendingMessagePositions(timeline, this.playbackInfo.timeline);
                    this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline);
                    if (!timeline.isEmpty()) {
                        this.pendingInitialSeekPosition = null;
                    }
                    handleLoadingMediaPeriodChanged(z3);
                    this.handler.sendEmptyMessage(2);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                i = 4;
                j3 = j4;
                seekPosition = null;
                PlaybackInfo playbackInfo5 = this.playbackInfo;
                Timeline timeline5 = playbackInfo5.timeline;
                MediaSource.MediaPeriodId mediaPeriodId3 = playbackInfo5.periodId;
                if (positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.setTargetLiveOffset) {
                    j = j3;
                } else {
                    j = -9223372036854775807L;
                }
                seekPosition2 = seekPosition;
                updatePlaybackSpeedSettingsForNewPeriod(timeline, mediaPeriodId, timeline5, mediaPeriodId3, j, false);
                if (z5) {
                    PlaybackInfo playbackInfo6 = this.playbackInfo;
                    Object obj3 = playbackInfo6.periodId.periodUid;
                    Timeline timeline6 = playbackInfo6.timeline;
                    if (z5) {
                        z2 = false;
                    } else {
                        z2 = false;
                    }
                    this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, j3, j3, this.playbackInfo.discontinuityStartPositionUs, z2, timeline.getIndexOfPeriod(obj3) == -1 ? i : 3);
                } else {
                    PlaybackInfo playbackInfo7 = this.playbackInfo;
                    Object obj4 = playbackInfo7.periodId.periodUid;
                    Timeline timeline7 = playbackInfo7.timeline;
                    if (z5) {
                        z2 = false;
                    } else {
                        z2 = false;
                    }
                    this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, j3, j3, this.playbackInfo.discontinuityStartPositionUs, z2, timeline.getIndexOfPeriod(obj4) == -1 ? i : 3);
                }
                resetPendingPauseAtEndOfPeriod();
                resolvePendingMessagePositions(timeline, this.playbackInfo.timeline);
                this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline);
                if (!timeline.isEmpty()) {
                    this.pendingInitialSeekPosition = seekPosition2;
                }
                handleLoadingMediaPeriodChanged(false);
                this.handler.sendEmptyMessage(2);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            i = 4;
        }
    }

    private void handlePeriodPrepared(MediaPeriod mediaPeriod) throws ExoPlaybackException {
        if (this.queue.isLoading(mediaPeriod)) {
            handleLoadingPeriodPrepared((MediaPeriodHolder) Assertions.checkNotNull(this.queue.getLoadingPeriod()));
            return;
        }
        MediaPeriodHolder preloadHolderByMediaPeriod = this.queue.getPreloadHolderByMediaPeriod(mediaPeriod);
        if (preloadHolderByMediaPeriod != null) {
            Assertions.checkState(!preloadHolderByMediaPeriod.prepared);
            float f = this.mediaClock.getPlaybackParameters().speed;
            PlaybackInfo playbackInfo = this.playbackInfo;
            preloadHolderByMediaPeriod.handlePrepared(f, playbackInfo.timeline, playbackInfo.playWhenReady);
            if (this.queue.isPreloading(mediaPeriod)) {
                maybeContinuePreloading();
            }
        }
    }

    private void handlePlaybackParameters(PlaybackParameters playbackParameters, boolean z) throws ExoPlaybackException {
        handlePlaybackParameters(playbackParameters, playbackParameters.speed, true, z);
    }

    @CheckResult
    private PlaybackInfo handlePositionDiscontinuity(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, long j3, boolean z, int i) {
        List<Metadata> listOf;
        TrackGroupArray trackGroupArray;
        TrackSelectorResult trackSelectorResult;
        this.deliverPendingMessageAtStartPositionRequired = (!this.deliverPendingMessageAtStartPositionRequired && j == this.playbackInfo.positionUs && mediaPeriodId.equals(this.playbackInfo.periodId)) ? false : true;
        resetPendingPauseAtEndOfPeriod();
        PlaybackInfo playbackInfo = this.playbackInfo;
        TrackGroupArray trackGroupArray2 = playbackInfo.trackGroups;
        TrackSelectorResult trackSelectorResult2 = playbackInfo.trackSelectorResult;
        List<Metadata> list = playbackInfo.staticMetadata;
        if (this.mediaSourceList.isPrepared()) {
            MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
            TrackGroupArray trackGroups = playingPeriod == null ? TrackGroupArray.EMPTY : playingPeriod.getTrackGroups();
            TrackSelectorResult trackSelectorResult3 = playingPeriod == null ? this.emptyTrackSelectorResult : playingPeriod.getTrackSelectorResult();
            ImmutableList<Metadata> immutableListExtractMetadataFromTrackSelectionArray = extractMetadataFromTrackSelectionArray(trackSelectorResult3.selections);
            if (playingPeriod != null) {
                MediaPeriodInfo mediaPeriodInfo = playingPeriod.info;
                if (mediaPeriodInfo.requestedContentPositionUs != j2) {
                    playingPeriod.info = mediaPeriodInfo.copyWithRequestedContentPositionUs(j2);
                }
            }
            maybeUpdateOffloadScheduling();
            trackGroupArray = trackGroups;
            trackSelectorResult = trackSelectorResult3;
            listOf = immutableListExtractMetadataFromTrackSelectionArray;
        } else if (mediaPeriodId.equals(this.playbackInfo.periodId)) {
            listOf = list;
            trackGroupArray = trackGroupArray2;
            trackSelectorResult = trackSelectorResult2;
        } else {
            trackGroupArray = TrackGroupArray.EMPTY;
            trackSelectorResult = this.emptyTrackSelectorResult;
            listOf = ImmutableList.of();
        }
        if (z) {
            this.playbackInfoUpdate.setPositionDiscontinuity(i);
        }
        return this.playbackInfo.copyWithNewPosition(mediaPeriodId, j, j2, j3, getTotalBufferedDurationUs(), trackGroupArray, trackSelectorResult, listOf);
    }

    private boolean hasReadingPeriodFinishedReading() {
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        if (!readingPeriod.prepared) {
            return false;
        }
        int i = 0;
        while (true) {
            RendererHolder[] rendererHolderArr = this.renderers;
            if (i >= rendererHolderArr.length) {
                return true;
            }
            if (!rendererHolderArr[i].hasFinishedReadingFromPeriod(readingPeriod)) {
                return false;
            }
            i++;
        }
    }

    private static boolean isIgnorableServerSideAdInsertionPeriodChange(boolean z, MediaSource.MediaPeriodId mediaPeriodId, long j, MediaSource.MediaPeriodId mediaPeriodId2, Timeline.Period period, long j2) {
        if (z || j != j2 || !mediaPeriodId.periodUid.equals(mediaPeriodId2.periodUid)) {
            return false;
        }
        if (mediaPeriodId.isAd() && period.isServerSideInsertedAdGroup(mediaPeriodId.adGroupIndex)) {
            return (period.getAdState(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup) == 4 || period.getAdState(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup) == 2) ? false : true;
        }
        return mediaPeriodId2.isAd() && period.isServerSideInsertedAdGroup(mediaPeriodId2.adGroupIndex);
    }

    private boolean isLoadingPossible(@Nullable MediaPeriodHolder mediaPeriodHolder) {
        return (mediaPeriodHolder == null || mediaPeriodHolder.hasLoadingError() || mediaPeriodHolder.getNextLoadPositionUs() == Long.MIN_VALUE) ? false : true;
    }

    private boolean isTimelineReady() {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        long j = playingPeriod.info.durationUs;
        return playingPeriod.prepared && (j == C.TIME_UNSET || this.playbackInfo.positionUs < j || !shouldPlayWhenReady());
    }

    private static boolean isUsingPlaceholderPeriod(PlaybackInfo playbackInfo, Timeline.Period period) {
        MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
        Timeline timeline = playbackInfo.timeline;
        return timeline.isEmpty() || timeline.getPeriodByUid(mediaPeriodId.periodUid, period).isPlaceholder;
    }

    public void lambda$maybeTriggerOnRendererReadyChanged$1(int i, boolean z) {
        this.analyticsCollector.onRendererReadyChanged(i, this.renderers[i].getTrackType(), z);
    }

    public Boolean lambda$release$0() {
        return Boolean.valueOf(this.released);
    }

    public void lambda$sendMessageToTargetThread$2(PlayerMessage playerMessage) {
        try {
            deliverMessage(playerMessage);
        } catch (ExoPlaybackException e) {
            Log.e(TAG, "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    private void maybeContinueLoading() {
        boolean zShouldContinueLoading = shouldContinueLoading();
        this.shouldContinueLoading = zShouldContinueLoading;
        if (zShouldContinueLoading) {
            MediaPeriodHolder mediaPeriodHolder = (MediaPeriodHolder) Assertions.checkNotNull(this.queue.getLoadingPeriod());
            mediaPeriodHolder.continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(mediaPeriodHolder.toPeriodTime(this.rendererPositionUs)).setPlaybackSpeed(this.mediaClock.getPlaybackParameters().speed).setLastRebufferRealtimeMs(this.lastRebufferRealtimeMs).build());
        }
        updateIsLoading();
    }

    private void maybeContinuePreloading() {
        this.queue.maybeUpdatePreloadMediaPeriodHolder();
        MediaPeriodHolder preloadingPeriod = this.queue.getPreloadingPeriod();
        if (preloadingPeriod != null) {
            if ((!preloadingPeriod.prepareCalled || preloadingPeriod.prepared) && !preloadingPeriod.mediaPeriod.isLoading()) {
                if (this.loadControl.shouldContinuePreloading(this.playbackInfo.timeline, preloadingPeriod.info.id, preloadingPeriod.prepared ? preloadingPeriod.mediaPeriod.getBufferedPositionUs() : 0L)) {
                    if (preloadingPeriod.prepareCalled) {
                        preloadingPeriod.continueLoading(new LoadingInfo.Builder().setPlaybackPositionUs(preloadingPeriod.toPeriodTime(this.rendererPositionUs)).setPlaybackSpeed(this.mediaClock.getPlaybackParameters().speed).setLastRebufferRealtimeMs(this.lastRebufferRealtimeMs).build());
                    } else {
                        preloadingPeriod.prepare(this, preloadingPeriod.info.startPositionUs);
                    }
                }
            }
        }
    }

    private void maybeHandlePrewarmingTransition() throws ExoPlaybackException {
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.maybeHandlePrewarmingTransition();
        }
    }

    private void maybeNotifyPlaybackInfoChanged() {
        this.playbackInfoUpdate.setPlaybackInfo(this.playbackInfo);
        if (this.playbackInfoUpdate.hasPendingChange) {
            this.playbackInfoUpdateListener.onPlaybackInfoUpdate(this.playbackInfoUpdate);
            this.playbackInfoUpdate = new PlaybackInfoUpdate(this.playbackInfo);
        }
    }

    private void maybePrewarmRenderers() throws ExoPlaybackException {
        MediaPeriodHolder prewarmingPeriod = this.queue.getPrewarmingPeriod();
        if (prewarmingPeriod == null) {
            return;
        }
        TrackSelectorResult trackSelectorResult = prewarmingPeriod.getTrackSelectorResult();
        for (int i = 0; i < this.renderers.length; i++) {
            if (trackSelectorResult.isRendererEnabled(i) && this.renderers[i].hasSecondary() && !this.renderers[i].isPrewarming()) {
                this.renderers[i].startPrewarming();
                enableRenderer(prewarmingPeriod, i, false, prewarmingPeriod.getStartPositionRendererTime());
            }
        }
        if (areRenderersPrewarming()) {
            this.prewarmingMediaPeriodDiscontinuity = prewarmingPeriod.mediaPeriod.readDiscontinuity();
            if (prewarmingPeriod.isFullyBuffered()) {
                return;
            }
            this.queue.removeAfter(prewarmingPeriod);
            handleLoadingMediaPeriodChanged(false);
            maybeContinueLoading();
        }
    }

    private void maybeThrowRendererStreamError(int i) throws ExoPlaybackException, IOException {
        RendererHolder rendererHolder = this.renderers[i];
        try {
            rendererHolder.maybeThrowStreamError((MediaPeriodHolder) Assertions.checkNotNull(this.queue.getPlayingPeriod()));
        } catch (IOException | RuntimeException e) {
            int trackType = rendererHolder.getTrackType();
            if (trackType != 3 && trackType != 5) {
                throw e;
            }
            TrackSelectorResult trackSelectorResult = this.queue.getPlayingPeriod().getTrackSelectorResult();
            Log.e(TAG, "Disabling track due to error: " + Format.toLogString(trackSelectorResult.selections[i].getSelectedFormat()), e);
            TrackSelectorResult trackSelectorResult2 = new TrackSelectorResult((RendererConfiguration[]) trackSelectorResult.rendererConfigurations.clone(), (ExoTrackSelection[]) trackSelectorResult.selections.clone(), trackSelectorResult.tracks, trackSelectorResult.info);
            trackSelectorResult2.rendererConfigurations[i] = null;
            trackSelectorResult2.selections[i] = null;
            disableRenderer(i);
            this.queue.getPlayingPeriod().applyTrackSelection(trackSelectorResult2, this.playbackInfo.positionUs, false);
        }
    }

    private void maybeTriggerOnRendererReadyChanged(final int i, final boolean z) {
        boolean[] zArr = this.rendererReportedReady;
        if (zArr[i] != z) {
            zArr[i] = z;
            this.applicationLooperHandler.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$maybeTriggerOnRendererReadyChanged$1(i, z);
                }
            });
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0079, code lost:
    
        r3 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void maybeTriggerPendingMessages(long j, long j2) throws ExoPlaybackException {
        if (this.pendingMessages.isEmpty() || this.playbackInfo.periodId.isAd()) {
            return;
        }
        if (this.deliverPendingMessageAtStartPositionRequired) {
            j--;
            this.deliverPendingMessageAtStartPositionRequired = false;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        int indexOfPeriod = playbackInfo.timeline.getIndexOfPeriod(playbackInfo.periodId.periodUid);
        int iMin = Math.min(this.nextPendingMessageIndexHint, this.pendingMessages.size());
        PendingMessageInfo pendingMessageInfo = iMin > 0 ? this.pendingMessages.get(iMin - 1) : null;
        while (pendingMessageInfo != null) {
            int i = pendingMessageInfo.resolvedPeriodIndex;
            if (i <= indexOfPeriod && (i != indexOfPeriod || pendingMessageInfo.resolvedPeriodTimeUs <= j)) {
                break;
            }
            int i2 = iMin - 1;
            pendingMessageInfo = i2 > 0 ? this.pendingMessages.get(iMin - 2) : null;
            iMin = i2;
        }
        if (iMin < this.pendingMessages.size()) {
            PendingMessageInfo pendingMessageInfo2 = this.pendingMessages.get(iMin);
            while (pendingMessageInfo2 != null && pendingMessageInfo2.resolvedPeriodUid != null) {
                int i3 = pendingMessageInfo2.resolvedPeriodIndex;
                if (i3 >= indexOfPeriod && (i3 != indexOfPeriod || pendingMessageInfo2.resolvedPeriodTimeUs > j)) {
                    break;
                }
                iMin++;
                pendingMessageInfo2 = iMin < this.pendingMessages.size() ? this.pendingMessages.get(iMin) : null;
            }
            while (pendingMessageInfo2 != null && pendingMessageInfo2.resolvedPeriodUid != null && pendingMessageInfo2.resolvedPeriodIndex == indexOfPeriod) {
                long j3 = pendingMessageInfo2.resolvedPeriodTimeUs;
                if (j3 <= j || j3 > j2) {
                    break;
                }
                try {
                    sendMessageToTarget(pendingMessageInfo2.message);
                    if (pendingMessageInfo2.message.getDeleteAfterDelivery() || pendingMessageInfo2.message.isCanceled()) {
                        this.pendingMessages.remove(iMin);
                    } else {
                        iMin++;
                    }
                    pendingMessageInfo2 = iMin < this.pendingMessages.size() ? this.pendingMessages.get(iMin) : null;
                } catch (Throwable th) {
                    if (pendingMessageInfo2.message.getDeleteAfterDelivery() || pendingMessageInfo2.message.isCanceled()) {
                        this.pendingMessages.remove(iMin);
                    }
                    throw th;
                }
            }
            this.nextPendingMessageIndexHint = iMin;
        }
    }

    private boolean maybeUpdateLoadingPeriod() throws ExoPlaybackException {
        MediaPeriodInfo nextMediaPeriodInfo;
        this.queue.reevaluateBuffer(this.rendererPositionUs);
        boolean z = false;
        if (this.queue.shouldLoadNextMediaPeriod() && (nextMediaPeriodInfo = this.queue.getNextMediaPeriodInfo(this.rendererPositionUs, this.playbackInfo)) != null) {
            MediaPeriodHolder mediaPeriodHolderEnqueueNextMediaPeriodHolder = this.queue.enqueueNextMediaPeriodHolder(nextMediaPeriodInfo);
            if (!mediaPeriodHolderEnqueueNextMediaPeriodHolder.prepareCalled) {
                mediaPeriodHolderEnqueueNextMediaPeriodHolder.prepare(this, nextMediaPeriodInfo.startPositionUs);
            } else if (mediaPeriodHolderEnqueueNextMediaPeriodHolder.prepared) {
                this.handler.obtainMessage(8, mediaPeriodHolderEnqueueNextMediaPeriodHolder.mediaPeriod).sendToTarget();
            }
            if (this.queue.getPlayingPeriod() == mediaPeriodHolderEnqueueNextMediaPeriodHolder) {
                resetRendererPosition(nextMediaPeriodInfo.startPositionUs);
            }
            handleLoadingMediaPeriodChanged(false);
            z = true;
        }
        if (this.shouldContinueLoading) {
            this.shouldContinueLoading = isLoadingPossible(this.queue.getLoadingPeriod());
            updateIsLoading();
        } else {
            maybeContinueLoading();
        }
        return z;
    }

    private void maybeUpdateOffloadScheduling() {
        MediaPeriodHolder playingPeriod;
        boolean z;
        if (this.queue.getPlayingPeriod() == this.queue.getReadingPeriod() && (playingPeriod = this.queue.getPlayingPeriod()) != null) {
            TrackSelectorResult trackSelectorResult = playingPeriod.getTrackSelectorResult();
            boolean z2 = false;
            int i = 0;
            boolean z3 = false;
            while (true) {
                if (i >= this.renderers.length) {
                    z = true;
                    break;
                }
                if (trackSelectorResult.isRendererEnabled(i)) {
                    if (this.renderers[i].getTrackType() != 1) {
                        z = false;
                        break;
                    } else if (trackSelectorResult.rendererConfigurations[i].offloadModePreferred != 0) {
                        z3 = true;
                    }
                }
                i++;
            }
            if (z3 && z) {
                z2 = true;
            }
            setOffloadSchedulingEnabled(z2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0047  */
    private void maybeUpdatePlayingPeriod() throws ExoPlaybackException {
        boolean z;
        boolean z2 = false;
        while (shouldAdvancePlayingPeriod()) {
            if (z2) {
                maybeNotifyPlaybackInfoChanged();
            }
            this.isPrewarmingDisabledUntilNextTransition = false;
            MediaPeriodHolder mediaPeriodHolder = (MediaPeriodHolder) Assertions.checkNotNull(this.queue.advancePlayingPeriod());
            if (this.playbackInfo.periodId.periodUid.equals(mediaPeriodHolder.info.id.periodUid)) {
                MediaSource.MediaPeriodId mediaPeriodId = this.playbackInfo.periodId;
                if (mediaPeriodId.adGroupIndex == -1) {
                    MediaSource.MediaPeriodId mediaPeriodId2 = mediaPeriodHolder.info.id;
                    if (mediaPeriodId2.adGroupIndex != -1 || mediaPeriodId.nextAdGroupIndex == mediaPeriodId2.nextAdGroupIndex) {
                        z = false;
                    } else {
                        z = true;
                    }
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
            MediaSource.MediaPeriodId mediaPeriodId3 = mediaPeriodInfo.id;
            long j = mediaPeriodInfo.startPositionUs;
            this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId3, j, mediaPeriodInfo.requestedContentPositionUs, j, !z, 0);
            resetPendingPauseAtEndOfPeriod();
            updatePlaybackPositions();
            if (areRenderersPrewarming() && mediaPeriodHolder == this.queue.getPrewarmingPeriod()) {
                maybeHandlePrewarmingTransition();
            }
            if (this.playbackInfo.playbackState == 3) {
                startRenderers();
            }
            allowRenderersToRenderStartOfStreams();
            z2 = true;
        }
    }

    private void maybeUpdatePreloadPeriods(boolean z) {
        if (this.preloadConfiguration.targetPreloadDurationUs == C.TIME_UNSET) {
            return;
        }
        if (z || !this.playbackInfo.timeline.equals(this.lastPreloadPoolInvalidationTimeline)) {
            Timeline timeline = this.playbackInfo.timeline;
            this.lastPreloadPoolInvalidationTimeline = timeline;
            this.queue.invalidatePreloadPool(timeline);
        }
        maybeContinuePreloading();
    }

    private void maybeUpdatePrewarmingPeriod() throws ExoPlaybackException {
        MediaPeriodHolder prewarmingPeriod;
        if (this.pendingPauseAtEndOfPeriod || !this.hasSecondaryRenderers || this.isPrewarmingDisabledUntilNextTransition || areRenderersPrewarming() || (prewarmingPeriod = this.queue.getPrewarmingPeriod()) == null || prewarmingPeriod != this.queue.getReadingPeriod() || prewarmingPeriod.getNext() == null || !prewarmingPeriod.getNext().prepared) {
            return;
        }
        this.queue.advancePrewarmingPeriod();
        maybePrewarmRenderers();
    }

    private void maybeUpdateReadingPeriod() throws ExoPlaybackException {
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        if (readingPeriod == null) {
            return;
        }
        int i = 0;
        if (readingPeriod.getNext() == null || this.pendingPauseAtEndOfPeriod) {
            if (readingPeriod.info.isFinal || this.pendingPauseAtEndOfPeriod) {
                RendererHolder[] rendererHolderArr = this.renderers;
                int length = rendererHolderArr.length;
                while (i < length) {
                    RendererHolder rendererHolder = rendererHolderArr[i];
                    if (rendererHolder.isReadingFromPeriod(readingPeriod) && rendererHolder.hasReadPeriodToEnd(readingPeriod)) {
                        long j = readingPeriod.info.durationUs;
                        rendererHolder.setCurrentStreamFinal(readingPeriod, (j == C.TIME_UNSET || j == Long.MIN_VALUE) ? -9223372036854775807L : readingPeriod.getRendererOffset() + readingPeriod.info.durationUs);
                    }
                    i++;
                }
                return;
            }
            return;
        }
        if (hasReadingPeriodFinishedReading()) {
            if (areRenderersPrewarming() && this.queue.getPrewarmingPeriod() == this.queue.getReadingPeriod()) {
                return;
            }
            if (readingPeriod.getNext().prepared || this.rendererPositionUs >= readingPeriod.getNext().getStartPositionRendererTime()) {
                TrackSelectorResult trackSelectorResult = readingPeriod.getTrackSelectorResult();
                MediaPeriodHolder mediaPeriodHolderAdvanceReadingPeriod = this.queue.advanceReadingPeriod();
                TrackSelectorResult trackSelectorResult2 = mediaPeriodHolderAdvanceReadingPeriod.getTrackSelectorResult();
                Timeline timeline = this.playbackInfo.timeline;
                updatePlaybackSpeedSettingsForNewPeriod(timeline, mediaPeriodHolderAdvanceReadingPeriod.info.id, timeline, readingPeriod.info.id, C.TIME_UNSET, false);
                if (mediaPeriodHolderAdvanceReadingPeriod.prepared && ((this.hasSecondaryRenderers && this.prewarmingMediaPeriodDiscontinuity != C.TIME_UNSET) || mediaPeriodHolderAdvanceReadingPeriod.mediaPeriod.readDiscontinuity() != C.TIME_UNSET)) {
                    this.prewarmingMediaPeriodDiscontinuity = C.TIME_UNSET;
                    boolean z = this.hasSecondaryRenderers && !this.isPrewarmingDisabledUntilNextTransition;
                    if (z) {
                        for (int i2 = 0; i2 < this.renderers.length; i2++) {
                            if (trackSelectorResult2.isRendererEnabled(i2) && !MimeTypes.allSamplesAreSyncSamples(trackSelectorResult2.selections[i2].getSelectedFormat().sampleMimeType, trackSelectorResult2.selections[i2].getSelectedFormat().codecs) && !this.renderers[i2].isPrewarming()) {
                                z = false;
                                break;
                            }
                        }
                    }
                    if (!z) {
                        setAllNonPrewarmingRendererStreamsFinal(mediaPeriodHolderAdvanceReadingPeriod.getStartPositionRendererTime());
                        if (mediaPeriodHolderAdvanceReadingPeriod.isFullyBuffered()) {
                            return;
                        }
                        this.queue.removeAfter(mediaPeriodHolderAdvanceReadingPeriod);
                        handleLoadingMediaPeriodChanged(false);
                        maybeContinueLoading();
                        return;
                    }
                }
                RendererHolder[] rendererHolderArr2 = this.renderers;
                int length2 = rendererHolderArr2.length;
                while (i < length2) {
                    rendererHolderArr2[i].maybeSetOldStreamToFinal(trackSelectorResult, trackSelectorResult2, mediaPeriodHolderAdvanceReadingPeriod.getStartPositionRendererTime());
                    i++;
                }
            }
        }
    }

    private void maybeUpdateReadingRenderers() throws ExoPlaybackException {
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        if (readingPeriod == null || this.queue.getPlayingPeriod() == readingPeriod || readingPeriod.allRenderersInCorrectState || !updateRenderersForTransition()) {
            return;
        }
        this.queue.getReadingPeriod().allRenderersInCorrectState = true;
    }

    private void mediaSourceListUpdateRequestedInternal() throws Throwable {
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.createTimeline(), true);
    }

    private void moveMediaItemsInternal(MoveMediaItemsMessage moveMediaItemsMessage) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.moveMediaSourceRange(moveMediaItemsMessage.fromIndex, moveMediaItemsMessage.toIndex, moveMediaItemsMessage.newFromIndex, moveMediaItemsMessage.shuffleOrder), false);
    }

    private void notifyTrackSelectionDiscontinuity() {
        for (MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
            for (ExoTrackSelection exoTrackSelection : playingPeriod.getTrackSelectorResult().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onDiscontinuity();
                }
            }
        }
    }

    private void notifyTrackSelectionPlayWhenReadyChanged(boolean z) {
        for (MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
            for (ExoTrackSelection exoTrackSelection : playingPeriod.getTrackSelectorResult().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onPlayWhenReadyChanged(z);
                }
            }
        }
    }

    private void notifyTrackSelectionRebuffer() {
        for (MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
            for (ExoTrackSelection exoTrackSelection : playingPeriod.getTrackSelectorResult().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onRebuffer();
                }
            }
        }
    }

    private void prepareInternal() throws ExoPlaybackException {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        resetInternal(false, false, false, true);
        this.loadControl.onPrepared(this.playerId);
        setState(this.playbackInfo.timeline.isEmpty() ? 4 : 2);
        updatePlayWhenReadyWithAudioFocus();
        this.mediaSourceList.prepare(this.bandwidthMeter.getTransferListener());
        this.handler.sendEmptyMessage(2);
    }

    private void releaseInternal() {
        try {
            resetInternal(true, false, true, false);
            releaseRenderers();
            this.loadControl.onReleased(this.playerId);
            this.audioFocusManager.release();
            this.trackSelector.release();
            setState(1);
            this.playbackLooperProvider.releaseLooper();
            synchronized (this) {
                this.released = true;
                notifyAll();
            }
        } catch (Throwable th) {
            this.playbackLooperProvider.releaseLooper();
            synchronized (this) {
                this.released = true;
                notifyAll();
                throw th;
            }
        }
    }

    private void releaseRenderers() {
        for (int i = 0; i < this.renderers.length; i++) {
            this.rendererCapabilities[i].clearListener();
            this.renderers[i].release();
        }
    }

    private void removeMediaItemsInternal(int i, int i2, ShuffleOrder shuffleOrder) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.removeMediaSourceRange(i, i2, shuffleOrder), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void reselectTracksInternal() throws ExoPlaybackException {
        boolean z;
        float f = this.mediaClock.getPlaybackParameters().speed;
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        int i = 1;
        TrackSelectorResult trackSelectorResult = null;
        boolean z2 = true;
        while (playingPeriod != null && playingPeriod.prepared) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            TrackSelectorResult trackSelectorResultSelectTracks = playingPeriod.selectTracks(f, playbackInfo.timeline, playbackInfo.playWhenReady);
            if (playingPeriod == this.queue.getPlayingPeriod()) {
                trackSelectorResult = trackSelectorResultSelectTracks;
            }
            if (!trackSelectorResultSelectTracks.isEquivalent(playingPeriod.getTrackSelectorResult())) {
                if (z2) {
                    MediaPeriodHolder playingPeriod2 = this.queue.getPlayingPeriod();
                    boolean z3 = (this.queue.removeAfter(playingPeriod2) & i) != 0 ? i : false;
                    boolean[] zArr = new boolean[this.renderers.length];
                    long jApplyTrackSelection = playingPeriod2.applyTrackSelection((TrackSelectorResult) Assertions.checkNotNull(trackSelectorResult), this.playbackInfo.positionUs, z3, zArr);
                    PlaybackInfo playbackInfo2 = this.playbackInfo;
                    int i2 = (playbackInfo2.playbackState == 4 || jApplyTrackSelection == playbackInfo2.positionUs) ? 0 : i;
                    PlaybackInfo playbackInfo3 = this.playbackInfo;
                    this.playbackInfo = handlePositionDiscontinuity(playbackInfo3.periodId, jApplyTrackSelection, playbackInfo3.requestedContentPositionUs, playbackInfo3.discontinuityStartPositionUs, i2, 5);
                    if (i2 != 0) {
                        resetRendererPosition(jApplyTrackSelection);
                    }
                    disableAndResetPrewarmingRenderers();
                    boolean[] zArr2 = new boolean[this.renderers.length];
                    int i3 = 0;
                    while (true) {
                        RendererHolder[] rendererHolderArr = this.renderers;
                        if (i3 >= rendererHolderArr.length) {
                            break;
                        }
                        int enabledRendererCount = rendererHolderArr[i3].getEnabledRendererCount();
                        zArr2[i3] = this.renderers[i3].isRendererEnabled();
                        this.renderers[i3].maybeDisableOrResetPosition(playingPeriod2.sampleStreams[i3], this.mediaClock, this.rendererPositionUs, zArr[i3]);
                        if (enabledRendererCount - this.renderers[i3].getEnabledRendererCount() > 0) {
                            maybeTriggerOnRendererReadyChanged(i3, false);
                        }
                        this.enabledRendererCount -= enabledRendererCount - this.renderers[i3].getEnabledRendererCount();
                        i3++;
                    }
                    enableRenderers(zArr2, this.rendererPositionUs);
                    playingPeriod2.allRenderersInCorrectState = true;
                    z = true;
                } else {
                    this.queue.removeAfter(playingPeriod);
                    if (playingPeriod.prepared) {
                        long jMax = Math.max(playingPeriod.info.startPositionUs, playingPeriod.toPeriodTime(this.rendererPositionUs));
                        if (this.hasSecondaryRenderers && areRenderersPrewarming() && this.queue.getPrewarmingPeriod() == playingPeriod) {
                            disableAndResetPrewarmingRenderers();
                        }
                        playingPeriod.applyTrackSelection(trackSelectorResultSelectTracks, jMax, false);
                    }
                    z = true;
                }
                handleLoadingMediaPeriodChanged(z);
                if (this.playbackInfo.playbackState != 4) {
                    maybeContinueLoading();
                    updatePlaybackPositions();
                    this.handler.sendEmptyMessage(2);
                    return;
                }
                return;
            }
            int i4 = i;
            if (playingPeriod == readingPeriod) {
                z2 = false;
            }
            playingPeriod = playingPeriod.getNext();
            i = i4;
        }
    }

    private void reselectTracksInternalAndSeek() throws ExoPlaybackException {
        reselectTracksInternal();
        seekToCurrentPosition(true);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0091 A[PHI: r2 r6 r8
      0x0091: PHI (r2v2 androidx.media3.exoplayer.source.MediaSource$MediaPeriodId) = 
      (r2v1 androidx.media3.exoplayer.source.MediaSource$MediaPeriodId)
      (r2v11 androidx.media3.exoplayer.source.MediaSource$MediaPeriodId)
     binds: [B:23:0x0066, B:25:0x008b] A[DONT_GENERATE, DONT_INLINE]
      0x0091: PHI (r6v3 long) = (r6v2 long), (r6v10 long) binds: [B:23:0x0066, B:25:0x008b] A[DONT_GENERATE, DONT_INLINE]
      0x0091: PHI (r8v2 long) = (r8v1 long), (r8v5 long) binds: [B:23:0x0066, B:25:0x008b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x00d9 A[PHI: r0
      0x00d9: PHI (r0v11 androidx.media3.common.Timeline) = 
      (r0v10 androidx.media3.common.Timeline)
      (r0v10 androidx.media3.common.Timeline)
      (r0v16 androidx.media3.common.Timeline)
      (r0v16 androidx.media3.common.Timeline)
     binds: [B:29:0x009e, B:31:0x00a2, B:33:0x00b3, B:35:0x00ca] A[DONT_GENERATE, DONT_INLINE]] */
    private void resetInternal(boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        Timeline timeline;
        MediaSource.MediaPeriodId mediaPeriodId;
        this.handler.removeMessages(2);
        this.pendingRecoverableRendererError = null;
        updateRebufferingState(false, true);
        this.mediaClock.stop();
        this.rendererPositionUs = MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US;
        try {
            disableRenderers();
        } catch (ExoPlaybackException | RuntimeException e) {
            Log.e(TAG, "Disable failed.", e);
        }
        if (z) {
            for (RendererHolder rendererHolder : this.renderers) {
                try {
                    rendererHolder.reset();
                } catch (RuntimeException e2) {
                    Log.e(TAG, "Reset failed.", e2);
                }
            }
        }
        this.enabledRendererCount = 0;
        PlaybackInfo playbackInfo = this.playbackInfo;
        MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo.periodId;
        long jLongValue = playbackInfo.positionUs;
        long j = (this.playbackInfo.periodId.isAd() || isUsingPlaceholderPeriod(this.playbackInfo, this.period)) ? this.playbackInfo.requestedContentPositionUs : this.playbackInfo.positionUs;
        if (z2) {
            this.pendingInitialSeekPosition = null;
            Pair<MediaSource.MediaPeriodId, Long> placeholderFirstMediaPeriodPositionUs = getPlaceholderFirstMediaPeriodPositionUs(this.playbackInfo.timeline);
            mediaPeriodId2 = (MediaSource.MediaPeriodId) placeholderFirstMediaPeriodPositionUs.first;
            jLongValue = ((Long) placeholderFirstMediaPeriodPositionUs.second).longValue();
            boolean zEquals = mediaPeriodId2.equals(this.playbackInfo.periodId);
            j = C.TIME_UNSET;
            z5 = zEquals ? false : true;
        }
        long j2 = jLongValue;
        long j3 = j;
        this.queue.clear();
        this.shouldContinueLoading = false;
        Timeline timelineCopyWithPlaceholderTimeline = this.playbackInfo.timeline;
        if (z3 && (timelineCopyWithPlaceholderTimeline instanceof PlaylistTimeline)) {
            timelineCopyWithPlaceholderTimeline = ((PlaylistTimeline) timelineCopyWithPlaceholderTimeline).copyWithPlaceholderTimeline(this.mediaSourceList.getShuffleOrder());
            if (mediaPeriodId2.adGroupIndex != -1) {
                timelineCopyWithPlaceholderTimeline.getPeriodByUid(mediaPeriodId2.periodUid, this.period);
                if (timelineCopyWithPlaceholderTimeline.getWindow(this.period.windowIndex, this.window).isLive()) {
                    timeline = timelineCopyWithPlaceholderTimeline;
                    mediaPeriodId = new MediaSource.MediaPeriodId(mediaPeriodId2.periodUid, mediaPeriodId2.windowSequenceNumber);
                } else {
                    timeline = timelineCopyWithPlaceholderTimeline;
                    mediaPeriodId = mediaPeriodId2;
                }
            } else {
                timeline = timelineCopyWithPlaceholderTimeline;
                mediaPeriodId = mediaPeriodId2;
            }
        } else {
            timeline = timelineCopyWithPlaceholderTimeline;
            mediaPeriodId = mediaPeriodId2;
        }
        PlaybackInfo playbackInfo2 = this.playbackInfo;
        int i = playbackInfo2.playbackState;
        ExoPlaybackException exoPlaybackException = z4 ? null : playbackInfo2.playbackError;
        TrackGroupArray trackGroupArray = z5 ? TrackGroupArray.EMPTY : playbackInfo2.trackGroups;
        TrackSelectorResult trackSelectorResult = z5 ? this.emptyTrackSelectorResult : playbackInfo2.trackSelectorResult;
        List listOf = z5 ? ImmutableList.of() : playbackInfo2.staticMetadata;
        PlaybackInfo playbackInfo3 = this.playbackInfo;
        this.playbackInfo = new PlaybackInfo(timeline, mediaPeriodId, j3, j2, i, exoPlaybackException, false, trackGroupArray, trackSelectorResult, listOf, mediaPeriodId, playbackInfo3.playWhenReady, playbackInfo3.playWhenReadyChangeReason, playbackInfo3.playbackSuppressionReason, playbackInfo3.playbackParameters, j2, 0L, j2, 0L, false);
        if (z3) {
            this.queue.releasePreloadPool();
            this.mediaSourceList.release();
        }
    }

    private void resetPendingPauseAtEndOfPeriod() {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        this.pendingPauseAtEndOfPeriod = playingPeriod != null && playingPeriod.info.isLastInTimelineWindow && this.pauseAtEndOfWindow;
    }

    private void resetRendererPosition(long j) throws ExoPlaybackException {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        long rendererTime = playingPeriod == null ? j + MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US : playingPeriod.toRendererTime(j);
        this.rendererPositionUs = rendererTime;
        this.mediaClock.resetPosition(rendererTime);
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.resetPosition(playingPeriod, this.rendererPositionUs);
        }
        notifyTrackSelectionDiscontinuity();
    }

    private static void resolvePendingMessageEndOfStreamPosition(Timeline timeline, PendingMessageInfo pendingMessageInfo, Timeline.Window window, Timeline.Period period) {
        int i = timeline.getWindow(timeline.getPeriodByUid(pendingMessageInfo.resolvedPeriodUid, period).windowIndex, window).lastPeriodIndex;
        Object obj = timeline.getPeriod(i, period, true).uid;
        long j = period.durationUs;
        pendingMessageInfo.setResolvedPosition(i, j != C.TIME_UNSET ? j - 1 : Long.MAX_VALUE, obj);
    }

    private static boolean resolvePendingMessagePosition(PendingMessageInfo pendingMessageInfo, Timeline timeline, Timeline timeline2, int i, boolean z, Timeline.Window window, Timeline.Period period) {
        Object obj = pendingMessageInfo.resolvedPeriodUid;
        if (obj == null) {
            Pair<Object, Long> pairResolveSeekPositionUs = resolveSeekPositionUs(timeline, new SeekPosition(pendingMessageInfo.message.getTimeline(), pendingMessageInfo.message.getMediaItemIndex(), pendingMessageInfo.message.getPositionMs() == Long.MIN_VALUE ? C.TIME_UNSET : Util.msToUs(pendingMessageInfo.message.getPositionMs())), false, i, z, window, period);
            if (pairResolveSeekPositionUs == null) {
                return false;
            }
            pendingMessageInfo.setResolvedPosition(timeline.getIndexOfPeriod(pairResolveSeekPositionUs.first), ((Long) pairResolveSeekPositionUs.second).longValue(), pairResolveSeekPositionUs.first);
            if (pendingMessageInfo.message.getPositionMs() == Long.MIN_VALUE) {
                resolvePendingMessageEndOfStreamPosition(timeline, pendingMessageInfo, window, period);
            }
            return true;
        }
        int indexOfPeriod = timeline.getIndexOfPeriod(obj);
        if (indexOfPeriod == -1) {
            return false;
        }
        if (pendingMessageInfo.message.getPositionMs() == Long.MIN_VALUE) {
            resolvePendingMessageEndOfStreamPosition(timeline, pendingMessageInfo, window, period);
            return true;
        }
        pendingMessageInfo.resolvedPeriodIndex = indexOfPeriod;
        timeline2.getPeriodByUid(pendingMessageInfo.resolvedPeriodUid, period);
        if (period.isPlaceholder && timeline2.getWindow(period.windowIndex, window).firstPeriodIndex == timeline2.getIndexOfPeriod(pendingMessageInfo.resolvedPeriodUid)) {
            Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(window, period, timeline.getPeriodByUid(pendingMessageInfo.resolvedPeriodUid, period).windowIndex, pendingMessageInfo.resolvedPeriodTimeUs + period.getPositionInWindowUs());
            pendingMessageInfo.setResolvedPosition(timeline.getIndexOfPeriod(periodPositionUs.first), ((Long) periodPositionUs.second).longValue(), periodPositionUs.first);
        }
        return true;
    }

    private void resolvePendingMessagePositions(Timeline timeline, Timeline timeline2) {
        if (timeline.isEmpty() && timeline2.isEmpty()) {
            return;
        }
        for (int size = this.pendingMessages.size() - 1; size >= 0; size--) {
            if (!resolvePendingMessagePosition(this.pendingMessages.get(size), timeline, timeline2, this.repeatMode, this.shuffleModeEnabled, this.window, this.period)) {
                this.pendingMessages.get(size).message.markAsProcessed(false);
                this.pendingMessages.remove(size);
            }
        }
        Collections.sort(this.pendingMessages);
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0150  */
    /* JADX WARN: Code duplicated, block: B:52:0x016e  */
    /* JADX WARN: Code duplicated, block: B:60:0x0184  */
    /* JADX WARN: Code duplicated, block: B:69:0x019d  */
    /* JADX WARN: Code duplicated, block: B:73:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:76:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:78:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:80:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:83:0x01d9  */
    private static PositionUpdateForPlaylistChange resolvePositionForPlaylistChange(Timeline timeline, PlaybackInfo playbackInfo, @Nullable SeekPosition seekPosition, MediaPeriodQueue mediaPeriodQueue, int i, boolean z, Timeline.Window window, Timeline.Period period) {
        MediaSource.MediaPeriodId mediaPeriodId;
        int i2;
        MediaSource.MediaPeriodId mediaPeriodId2;
        int i3;
        long jLongValue;
        boolean z2;
        boolean z3;
        boolean z4;
        int firstWindowIndex;
        boolean z5;
        long j;
        MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange;
        int i4;
        boolean z6;
        boolean z7;
        MediaSource.MediaPeriodId mediaPeriodId3;
        int i5;
        int firstWindowIndex2;
        boolean z8;
        boolean z9;
        boolean z10;
        if (timeline.isEmpty()) {
            return new PositionUpdateForPlaylistChange(PlaybackInfo.getDummyPeriodForEmptyTimeline(), 0L, C.TIME_UNSET, false, true, false);
        }
        MediaSource.MediaPeriodId mediaPeriodId4 = playbackInfo.periodId;
        Object obj = mediaPeriodId4.periodUid;
        boolean zIsUsingPlaceholderPeriod = isUsingPlaceholderPeriod(playbackInfo, period);
        long j2 = (playbackInfo.periodId.isAd() || zIsUsingPlaceholderPeriod) ? playbackInfo.requestedContentPositionUs : playbackInfo.positionUs;
        if (seekPosition != null) {
            mediaPeriodId = mediaPeriodId4;
            i2 = -1;
            Pair<Object, Long> pairResolveSeekPositionUs = resolveSeekPositionUs(timeline, seekPosition, true, i, z, window, period);
            if (pairResolveSeekPositionUs == null) {
                firstWindowIndex2 = timeline.getFirstWindowIndex(z);
                jLongValue = j2;
                z8 = false;
                z9 = false;
                z10 = true;
            } else {
                if (seekPosition.windowPositionUs == C.TIME_UNSET) {
                    firstWindowIndex2 = timeline.getPeriodByUid(pairResolveSeekPositionUs.first, period).windowIndex;
                    jLongValue = j2;
                    z8 = false;
                } else {
                    obj = pairResolveSeekPositionUs.first;
                    jLongValue = ((Long) pairResolveSeekPositionUs.second).longValue();
                    firstWindowIndex2 = -1;
                    z8 = true;
                }
                z9 = playbackInfo.playbackState == 4;
                z10 = false;
            }
            z4 = z8;
            z2 = z9;
            z3 = z10;
            i3 = firstWindowIndex2;
        } else {
            mediaPeriodId = mediaPeriodId4;
            i2 = -1;
            if (!playbackInfo.timeline.isEmpty()) {
                if (timeline.getIndexOfPeriod(obj) == -1) {
                    int iResolveSubsequentPeriod = resolveSubsequentPeriod(window, period, i, z, obj, playbackInfo.timeline, timeline);
                    if (iResolveSubsequentPeriod == -1) {
                        iResolveSubsequentPeriod = timeline.getFirstWindowIndex(z);
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    i3 = iResolveSubsequentPeriod;
                    z3 = z5;
                    jLongValue = j2;
                    z2 = false;
                    z4 = false;
                } else if (j2 == C.TIME_UNSET) {
                    firstWindowIndex = timeline.getPeriodByUid(obj, period).windowIndex;
                } else if (zIsUsingPlaceholderPeriod) {
                    mediaPeriodId2 = mediaPeriodId;
                    playbackInfo.timeline.getPeriodByUid(mediaPeriodId2.periodUid, period);
                    if (playbackInfo.timeline.getWindow(period.windowIndex, window).firstPeriodIndex == playbackInfo.timeline.getIndexOfPeriod(mediaPeriodId2.periodUid)) {
                        Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(window, period, timeline.getPeriodByUid(obj, period).windowIndex, j2 + period.getPositionInWindowUs());
                        obj = periodPositionUs.first;
                        jLongValue = ((Long) periodPositionUs.second).longValue();
                    } else {
                        jLongValue = j2;
                    }
                    i3 = -1;
                    z2 = false;
                    z3 = false;
                    z4 = true;
                } else {
                    mediaPeriodId2 = mediaPeriodId;
                    i3 = -1;
                    jLongValue = j2;
                    z2 = false;
                    z3 = false;
                    z4 = false;
                }
                if (i3 != i2) {
                    Pair<Object, Long> periodPositionUs2 = timeline.getPeriodPositionUs(window, period, i3, C.TIME_UNSET);
                    obj = periodPositionUs2.first;
                    jLongValue = ((Long) periodPositionUs2.second).longValue();
                    j = -9223372036854775807L;
                } else {
                    j = jLongValue;
                }
                mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange = mediaPeriodQueue.resolveMediaPeriodIdForAdsAfterPeriodPositionChange(timeline, obj, jLongValue);
                i4 = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.nextAdGroupIndex;
                if (i4 != i2 || ((i5 = mediaPeriodId2.nextAdGroupIndex) != i2 && i4 >= i5)) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = (mediaPeriodId2.periodUid.equals(obj) || mediaPeriodId2.isAd() || mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.isAd() || !z6) ? false : true;
                mediaPeriodId3 = mediaPeriodId2;
                boolean zIsIgnorableServerSideAdInsertionPeriodChange = isIgnorableServerSideAdInsertionPeriodChange(zIsUsingPlaceholderPeriod, mediaPeriodId2, j2, mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange, timeline.getPeriodByUid(obj, period), j);
                if (z7 || zIsIgnorableServerSideAdInsertionPeriodChange) {
                    mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange = mediaPeriodId3;
                }
                if (mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.isAd()) {
                    if (mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.equals(mediaPeriodId3)) {
                        jLongValue = playbackInfo.positionUs;
                    } else {
                        timeline.getPeriodByUid(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.periodUid, period);
                        if (mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.adIndexInAdGroup == period.getFirstAdIndexToPlay(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.adGroupIndex)) {
                            jLongValue = period.getAdResumePositionUs();
                        } else {
                            jLongValue = 0;
                        }
                    }
                }
                return new PositionUpdateForPlaylistChange(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange, jLongValue, j, z2, z3, z4);
            }
            firstWindowIndex = timeline.getFirstWindowIndex(z);
            i3 = firstWindowIndex;
            jLongValue = j2;
            z2 = false;
            z3 = false;
            z4 = false;
        }
        mediaPeriodId2 = mediaPeriodId;
        if (i3 != i2) {
            Pair<Object, Long> periodPositionUs3 = timeline.getPeriodPositionUs(window, period, i3, C.TIME_UNSET);
            obj = periodPositionUs3.first;
            jLongValue = ((Long) periodPositionUs3.second).longValue();
            j = -9223372036854775807L;
        } else {
            j = jLongValue;
        }
        mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange = mediaPeriodQueue.resolveMediaPeriodIdForAdsAfterPeriodPositionChange(timeline, obj, jLongValue);
        i4 = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.nextAdGroupIndex;
        if (i4 != i2) {
            z6 = true;
        } else {
            z6 = true;
        }
        if (mediaPeriodId2.periodUid.equals(obj)) {
        }
        mediaPeriodId3 = mediaPeriodId2;
        boolean zIsIgnorableServerSideAdInsertionPeriodChange2 = isIgnorableServerSideAdInsertionPeriodChange(zIsUsingPlaceholderPeriod, mediaPeriodId2, j2, mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange, timeline.getPeriodByUid(obj, period), j);
        if (z7) {
            mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange = mediaPeriodId3;
        } else {
            mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange = mediaPeriodId3;
        }
        if (mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.isAd()) {
            if (mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.equals(mediaPeriodId3)) {
                jLongValue = playbackInfo.positionUs;
            } else {
                timeline.getPeriodByUid(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.periodUid, period);
                if (mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.adIndexInAdGroup == period.getFirstAdIndexToPlay(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.adGroupIndex)) {
                    jLongValue = period.getAdResumePositionUs();
                } else {
                    jLongValue = 0;
                }
            }
        }
        return new PositionUpdateForPlaylistChange(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange, jLongValue, j, z2, z3, z4);
    }

    @Nullable
    private static Pair<Object, Long> resolveSeekPositionUs(Timeline timeline, SeekPosition seekPosition, boolean z, int i, boolean z2, Timeline.Window window, Timeline.Period period) {
        int iResolveSubsequentPeriod;
        Timeline timeline2 = seekPosition.timeline;
        if (timeline.isEmpty()) {
            return null;
        }
        Timeline timeline3 = timeline2.isEmpty() ? timeline : timeline2;
        try {
            Pair<Object, Long> periodPositionUs = timeline3.getPeriodPositionUs(window, period, seekPosition.windowIndex, seekPosition.windowPositionUs);
            if (timeline.equals(timeline3)) {
                return periodPositionUs;
            }
            if (timeline.getIndexOfPeriod(periodPositionUs.first) != -1) {
                return (timeline3.getPeriodByUid(periodPositionUs.first, period).isPlaceholder && timeline3.getWindow(period.windowIndex, window).firstPeriodIndex == timeline3.getIndexOfPeriod(periodPositionUs.first)) ? timeline.getPeriodPositionUs(window, period, timeline.getPeriodByUid(periodPositionUs.first, period).windowIndex, seekPosition.windowPositionUs) : periodPositionUs;
            }
            if (z && (iResolveSubsequentPeriod = resolveSubsequentPeriod(window, period, i, z2, periodPositionUs.first, timeline3, timeline)) != -1) {
                return timeline.getPeriodPositionUs(window, period, iResolveSubsequentPeriod, C.TIME_UNSET);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    public static int resolveSubsequentPeriod(Timeline.Window window, Timeline.Period period, int i, boolean z, Object obj, Timeline timeline, Timeline timeline2) {
        Object obj2 = timeline.getWindow(timeline.getPeriodByUid(obj, period).windowIndex, window).uid;
        for (int i2 = 0; i2 < timeline2.getWindowCount(); i2++) {
            if (timeline2.getWindow(i2, window).uid.equals(obj2)) {
                return i2;
            }
        }
        int indexOfPeriod = timeline.getIndexOfPeriod(obj);
        int periodCount = timeline.getPeriodCount();
        int nextPeriodIndex = indexOfPeriod;
        int indexOfPeriod2 = -1;
        for (int i3 = 0; i3 < periodCount && indexOfPeriod2 == -1; i3++) {
            nextPeriodIndex = timeline.getNextPeriodIndex(nextPeriodIndex, period, window, i, z);
            if (nextPeriodIndex == -1) {
                break;
            }
            indexOfPeriod2 = timeline2.getIndexOfPeriod(timeline.getUidOfPeriod(nextPeriodIndex));
        }
        if (indexOfPeriod2 == -1) {
            return -1;
        }
        return timeline2.getPeriod(indexOfPeriod2, period).windowIndex;
    }

    private void scheduleNextWork(long j) {
        long jMin = (this.playbackInfo.playbackState != 3 || (!this.dynamicSchedulingEnabled && shouldPlayWhenReady())) ? BUFFERING_MAXIMUM_INTERVAL_MS : 1000L;
        if (this.dynamicSchedulingEnabled && shouldPlayWhenReady()) {
            for (RendererHolder rendererHolder : this.renderers) {
                jMin = Math.min(jMin, Util.usToMs(rendererHolder.getMinDurationToProgressUs(this.rendererPositionUs, this.rendererPositionElapsedRealtimeUs)));
            }
            MediaPeriodHolder next = this.queue.getPlayingPeriod() != null ? this.queue.getPlayingPeriod().getNext() : null;
            if (next != null && this.rendererPositionUs + (Util.msToUs(jMin) * this.playbackInfo.playbackParameters.speed) >= next.getStartPositionRendererTime()) {
                jMin = Math.min(jMin, BUFFERING_MAXIMUM_INTERVAL_MS);
            }
        }
        this.handler.sendEmptyMessageAtTime(2, j + jMin);
    }

    private void seekToCurrentPosition(boolean z) throws ExoPlaybackException {
        MediaSource.MediaPeriodId mediaPeriodId = this.queue.getPlayingPeriod().info.id;
        long jSeekToPeriodPosition = seekToPeriodPosition(mediaPeriodId, this.playbackInfo.positionUs, true, false);
        if (jSeekToPeriodPosition != this.playbackInfo.positionUs) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, jSeekToPeriodPosition, playbackInfo.requestedContentPositionUs, playbackInfo.discontinuityStartPositionUs, z, 5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00ac A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b6 A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00bc A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00c5 A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00cf A[Catch: all -> 0x00af, TryCatch #1 {all -> 0x00af, blocks: (B:22:0x00a2, B:24:0x00ac, B:29:0x00b6, B:31:0x00bc, B:32:0x00bf, B:34:0x00c5, B:36:0x00cf, B:38:0x00d7, B:42:0x00df, B:44:0x00e9, B:46:0x00f9, B:50:0x0103, B:54:0x0115, B:58:0x011e), top: B:74:0x00a2 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:53:0x0114  */
    /* JADX WARN: Code duplicated, block: B:56:0x011b  */
    /* JADX WARN: Code duplicated, block: B:57:0x011d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0127  */
    private void seekToInternal(SeekPosition seekPosition) throws Throwable {
        long jLongValue;
        long j;
        boolean z;
        MediaSource.MediaPeriodId mediaPeriodId;
        long adResumePositionUs;
        long j2;
        long j3;
        long adjustedSeekPositionUs;
        boolean z2;
        long jSeekToPeriodPosition;
        long j4;
        MediaPeriodHolder playingPeriod;
        PlaybackInfo playbackInfo;
        int i;
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        Pair<Object, Long> pairResolveSeekPositionUs = resolveSeekPositionUs(this.playbackInfo.timeline, seekPosition, true, this.repeatMode, this.shuffleModeEnabled, this.window, this.period);
        try {
            if (pairResolveSeekPositionUs != null) {
                Object obj = pairResolveSeekPositionUs.first;
                jLongValue = ((Long) pairResolveSeekPositionUs.second).longValue();
                long j5 = seekPosition.windowPositionUs == C.TIME_UNSET ? -9223372036854775807L : jLongValue;
                MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange = this.queue.resolveMediaPeriodIdForAdsAfterPeriodPositionChange(this.playbackInfo.timeline, obj, jLongValue);
                if (mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.isAd()) {
                    this.playbackInfo.timeline.getPeriodByUid(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.periodUid, this.period);
                    adResumePositionUs = this.period.getFirstAdIndexToPlay(mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.adGroupIndex) == mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange.adIndexInAdGroup ? this.period.getAdResumePositionUs() : 0L;
                    j2 = j5;
                    mediaPeriodId = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange;
                    z = true;
                } else {
                    j = j5;
                    z = seekPosition.windowPositionUs == C.TIME_UNSET;
                    mediaPeriodId = mediaPeriodIdResolveMediaPeriodIdForAdsAfterPeriodPositionChange;
                }
                if (this.playbackInfo.timeline.isEmpty()) {
                    if (pairResolveSeekPositionUs == null) {
                        if (this.playbackInfo.playbackState != 1) {
                            setState(4);
                        }
                        resetInternal(false, true, false, true);
                    } else {
                        if (mediaPeriodId.equals(this.playbackInfo.periodId)) {
                            playingPeriod = this.queue.getPlayingPeriod();
                            if (playingPeriod == null && playingPeriod.prepared && adResumePositionUs != 0) {
                                adjustedSeekPositionUs = playingPeriod.mediaPeriod.getAdjustedSeekPositionUs(adResumePositionUs, this.seekParameters);
                            } else {
                                adjustedSeekPositionUs = adResumePositionUs;
                            }
                            if (Util.usToMs(adjustedSeekPositionUs) == Util.usToMs(this.playbackInfo.positionUs) && ((i = (playbackInfo = this.playbackInfo).playbackState) == 2 || i == 3)) {
                                long j6 = playbackInfo.positionUs;
                                this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, j6, j2, j6, z, 2);
                                return;
                            }
                        } else {
                            adjustedSeekPositionUs = adResumePositionUs;
                        }
                        if (this.playbackInfo.playbackState == 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        jSeekToPeriodPosition = seekToPeriodPosition(mediaPeriodId, adjustedSeekPositionUs, z2);
                        z |= adResumePositionUs != jSeekToPeriodPosition;
                        try {
                            PlaybackInfo playbackInfo2 = this.playbackInfo;
                            Timeline timeline = playbackInfo2.timeline;
                            updatePlaybackSpeedSettingsForNewPeriod(timeline, mediaPeriodId, timeline, playbackInfo2.periodId, j2, true);
                            j4 = jSeekToPeriodPosition;
                        } catch (Throwable th) {
                            th = th;
                            j3 = jSeekToPeriodPosition;
                            this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, j3, j2, j3, z, 2);
                            throw th;
                        }
                    }
                    this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, j4, j2, j4, z, 2);
                    return;
                }
                this.pendingInitialSeekPosition = seekPosition;
                j4 = adResumePositionUs;
                this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, j4, j2, j4, z, 2);
                return;
            }
            Pair<MediaSource.MediaPeriodId, Long> placeholderFirstMediaPeriodPositionUs = getPlaceholderFirstMediaPeriodPositionUs(this.playbackInfo.timeline);
            mediaPeriodId = (MediaSource.MediaPeriodId) placeholderFirstMediaPeriodPositionUs.first;
            jLongValue = ((Long) placeholderFirstMediaPeriodPositionUs.second).longValue();
            z = !this.playbackInfo.timeline.isEmpty();
            j = -9223372036854775807L;
            if (this.playbackInfo.timeline.isEmpty()) {
                if (pairResolveSeekPositionUs == null) {
                    if (this.playbackInfo.playbackState != 1) {
                        setState(4);
                    }
                    resetInternal(false, true, false, true);
                } else {
                    if (mediaPeriodId.equals(this.playbackInfo.periodId)) {
                        playingPeriod = this.queue.getPlayingPeriod();
                        if (playingPeriod == null) {
                            adjustedSeekPositionUs = adResumePositionUs;
                        } else {
                            adjustedSeekPositionUs = adResumePositionUs;
                        }
                        if (Util.usToMs(adjustedSeekPositionUs) == Util.usToMs(this.playbackInfo.positionUs)) {
                            long j7 = playbackInfo.positionUs;
                            this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, j7, j2, j7, z, 2);
                            return;
                        }
                    } else {
                        adjustedSeekPositionUs = adResumePositionUs;
                    }
                    if (this.playbackInfo.playbackState == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    jSeekToPeriodPosition = seekToPeriodPosition(mediaPeriodId, adjustedSeekPositionUs, z2);
                    z |= adResumePositionUs != jSeekToPeriodPosition;
                    PlaybackInfo playbackInfo3 = this.playbackInfo;
                    Timeline timeline2 = playbackInfo3.timeline;
                    updatePlaybackSpeedSettingsForNewPeriod(timeline2, mediaPeriodId, timeline2, playbackInfo3.periodId, j2, true);
                    j4 = jSeekToPeriodPosition;
                }
                this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, j4, j2, j4, z, 2);
                return;
            }
            this.pendingInitialSeekPosition = seekPosition;
            j4 = adResumePositionUs;
            this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, j4, j2, j4, z, 2);
            return;
        } catch (Throwable th2) {
            th = th2;
            j3 = adResumePositionUs;
        }
        adResumePositionUs = jLongValue;
        j2 = j;
    }

    private long seekToPeriodPosition(MediaSource.MediaPeriodId mediaPeriodId, long j, boolean z) throws ExoPlaybackException {
        return seekToPeriodPosition(mediaPeriodId, j, this.queue.getPlayingPeriod() != this.queue.getReadingPeriod(), z);
    }

    private void sendMessageInternal(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.getPositionMs() == C.TIME_UNSET) {
            sendMessageToTarget(playerMessage);
            return;
        }
        if (this.playbackInfo.timeline.isEmpty()) {
            this.pendingMessages.add(new PendingMessageInfo(playerMessage));
            return;
        }
        PendingMessageInfo pendingMessageInfo = new PendingMessageInfo(playerMessage);
        Timeline timeline = this.playbackInfo.timeline;
        if (!resolvePendingMessagePosition(pendingMessageInfo, timeline, timeline, this.repeatMode, this.shuffleModeEnabled, this.window, this.period)) {
            playerMessage.markAsProcessed(false);
        } else {
            this.pendingMessages.add(pendingMessageInfo);
            Collections.sort(this.pendingMessages);
        }
    }

    private void sendMessageToTarget(PlayerMessage playerMessage) throws ExoPlaybackException {
        if (playerMessage.getLooper() != this.playbackLooper) {
            this.handler.obtainMessage(15, playerMessage).sendToTarget();
            return;
        }
        deliverMessage(playerMessage);
        int i = this.playbackInfo.playbackState;
        if (i == 3 || i == 2) {
            this.handler.sendEmptyMessage(2);
        }
    }

    private void sendMessageToTargetThread(final PlayerMessage playerMessage) {
        Looper looper = playerMessage.getLooper();
        if (looper.getThread().isAlive()) {
            this.clock.createHandler(looper, null).post(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$sendMessageToTargetThread$2(playerMessage);
                }
            });
        } else {
            Log.w(AbstractID3v1Tag.TAG, "Trying to send message on a dead thread.");
            playerMessage.markAsProcessed(false);
        }
    }

    private void setAllNonPrewarmingRendererStreamsFinal(long j) {
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.setAllNonPrewarmingRendererStreamsFinal(j);
        }
    }

    private void setAudioAttributesInternal(AudioAttributes audioAttributes, boolean z) throws ExoPlaybackException {
        this.trackSelector.setAudioAttributes(audioAttributes);
        AudioFocusManager audioFocusManager = this.audioFocusManager;
        if (!z) {
            audioAttributes = null;
        }
        audioFocusManager.setAudioAttributes(audioAttributes);
        updatePlayWhenReadyWithAudioFocus();
    }

    private void setForegroundModeInternal(boolean z, @Nullable AtomicBoolean atomicBoolean) {
        if (this.foregroundMode != z) {
            this.foregroundMode = z;
            if (!z) {
                for (RendererHolder rendererHolder : this.renderers) {
                    rendererHolder.reset();
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void setMediaClockPlaybackParameters(PlaybackParameters playbackParameters) {
        this.handler.removeMessages(16);
        this.mediaClock.setPlaybackParameters(playbackParameters);
    }

    private void setMediaItemsInternal(MediaSourceListUpdateMessage mediaSourceListUpdateMessage) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        if (mediaSourceListUpdateMessage.windowIndex != -1) {
            this.pendingInitialSeekPosition = new SeekPosition(new PlaylistTimeline(mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder), mediaSourceListUpdateMessage.windowIndex, mediaSourceListUpdateMessage.positionUs);
        }
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.setMediaSources(mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder), false);
    }

    private void setOffloadSchedulingEnabled(boolean z) {
        if (z == this.offloadSchedulingEnabled) {
            return;
        }
        this.offloadSchedulingEnabled = z;
        if (z || !this.playbackInfo.sleepingForOffload) {
            return;
        }
        this.handler.sendEmptyMessage(2);
    }

    private void setPauseAtEndOfWindowInternal(boolean z) throws ExoPlaybackException {
        this.pauseAtEndOfWindow = z;
        resetPendingPauseAtEndOfPeriod();
        if (!this.pendingPauseAtEndOfPeriod || this.queue.getReadingPeriod() == this.queue.getPlayingPeriod()) {
            return;
        }
        seekToCurrentPosition(true);
        handleLoadingMediaPeriodChanged(false);
    }

    private void setPlayWhenReadyInternal(boolean z, int i, boolean z2, int i2) throws ExoPlaybackException {
        this.playbackInfoUpdate.incrementPendingOperationAcks(z2 ? 1 : 0);
        updatePlayWhenReadyWithAudioFocus(z, i, i2);
    }

    private void setPlaybackParametersInternal(PlaybackParameters playbackParameters) throws ExoPlaybackException {
        setMediaClockPlaybackParameters(playbackParameters);
        handlePlaybackParameters(this.mediaClock.getPlaybackParameters(), true);
    }

    private void setPreloadConfigurationInternal(ExoPlayer.PreloadConfiguration preloadConfiguration) {
        this.preloadConfiguration = preloadConfiguration;
        this.queue.updatePreloadConfiguration(this.playbackInfo.timeline, preloadConfiguration);
    }

    private void setRepeatModeInternal(int i) throws ExoPlaybackException {
        this.repeatMode = i;
        int iUpdateRepeatMode = this.queue.updateRepeatMode(this.playbackInfo.timeline, i);
        if ((iUpdateRepeatMode & 1) != 0) {
            seekToCurrentPosition(true);
        } else if ((iUpdateRepeatMode & 2) != 0) {
            disableAndResetPrewarmingRenderers();
        }
        handleLoadingMediaPeriodChanged(false);
    }

    private void setSeekParametersInternal(SeekParameters seekParameters) {
        this.seekParameters = seekParameters;
    }

    private void setShuffleModeEnabledInternal(boolean z) throws ExoPlaybackException {
        this.shuffleModeEnabled = z;
        int iUpdateShuffleModeEnabled = this.queue.updateShuffleModeEnabled(this.playbackInfo.timeline, z);
        if ((iUpdateShuffleModeEnabled & 1) != 0) {
            seekToCurrentPosition(true);
        } else if ((iUpdateShuffleModeEnabled & 2) != 0) {
            disableAndResetPrewarmingRenderers();
        }
        handleLoadingMediaPeriodChanged(false);
    }

    private void setShuffleOrderInternal(ShuffleOrder shuffleOrder) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.setShuffleOrder(shuffleOrder), false);
    }

    private void setState(int i) {
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.playbackState != i) {
            if (i != 2) {
                this.playbackMaybeBecameStuckAtMs = C.TIME_UNSET;
            }
            this.playbackInfo = playbackInfo.copyWithPlaybackState(i);
        }
    }

    private void setVideoOutputInternal(@Nullable Object obj, @Nullable AtomicBoolean atomicBoolean) throws ExoPlaybackException {
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.setVideoOutput(obj);
        }
        int i = this.playbackInfo.playbackState;
        if (i == 3 || i == 2) {
            this.handler.sendEmptyMessage(2);
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void setVolumeInternal(float f) throws ExoPlaybackException {
        this.volume = f;
        float volumeMultiplier = f * this.audioFocusManager.getVolumeMultiplier();
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.setVolume(volumeMultiplier);
        }
    }

    private boolean shouldAdvancePlayingPeriod() {
        MediaPeriodHolder playingPeriod;
        MediaPeriodHolder next;
        return shouldPlayWhenReady() && !this.pendingPauseAtEndOfPeriod && (playingPeriod = this.queue.getPlayingPeriod()) != null && (next = playingPeriod.getNext()) != null && this.rendererPositionUs >= next.getStartPositionRendererTime() && next.allRenderersInCorrectState;
    }

    private boolean shouldContinueLoading() {
        if (!isLoadingPossible(this.queue.getLoadingPeriod())) {
            return false;
        }
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        long totalBufferedDurationUs = getTotalBufferedDurationUs(loadingPeriod.getNextLoadPositionUs());
        LoadControl.Parameters parameters = new LoadControl.Parameters(this.playerId, this.playbackInfo.timeline, loadingPeriod.info.id, loadingPeriod == this.queue.getPlayingPeriod() ? loadingPeriod.toPeriodTime(this.rendererPositionUs) : loadingPeriod.toPeriodTime(this.rendererPositionUs) - loadingPeriod.info.startPositionUs, totalBufferedDurationUs, this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.playWhenReady, this.isRebuffering, shouldUseLivePlaybackSpeedControl(this.playbackInfo.timeline, loadingPeriod.info.id) ? this.livePlaybackSpeedControl.getTargetLiveOffsetUs() : C.TIME_UNSET, this.lastRebufferRealtimeMs);
        boolean zShouldContinueLoading = this.loadControl.shouldContinueLoading(parameters);
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (zShouldContinueLoading || !playingPeriod.prepared || totalBufferedDurationUs >= PLAYBACK_BUFFER_EMPTY_THRESHOLD_US) {
            return zShouldContinueLoading;
        }
        if (this.backBufferDurationUs <= 0 && !this.retainBackBufferFromKeyframe) {
            return zShouldContinueLoading;
        }
        playingPeriod.mediaPeriod.discardBuffer(this.playbackInfo.positionUs, false);
        return this.loadControl.shouldContinueLoading(parameters);
    }

    private boolean shouldPlayWhenReady() {
        PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.playWhenReady && playbackInfo.playbackSuppressionReason == 0;
    }

    private boolean shouldTransitionToReadyState(boolean z) {
        if (this.enabledRendererCount == 0) {
            return isTimelineReady();
        }
        boolean z2 = false;
        if (!z) {
            return false;
        }
        if (!this.playbackInfo.isLoading) {
            return true;
        }
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        long targetLiveOffsetUs = shouldUseLivePlaybackSpeedControl(this.playbackInfo.timeline, playingPeriod.info.id) ? this.livePlaybackSpeedControl.getTargetLiveOffsetUs() : C.TIME_UNSET;
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        boolean z3 = loadingPeriod.isFullyBuffered() && loadingPeriod.info.isFinal;
        if (loadingPeriod.info.id.isAd() && !loadingPeriod.prepared) {
            z2 = true;
        }
        if (z3 || z2) {
            return true;
        }
        return this.loadControl.shouldStartPlayback(new LoadControl.Parameters(this.playerId, this.playbackInfo.timeline, playingPeriod.info.id, playingPeriod.toPeriodTime(this.rendererPositionUs), getTotalBufferedDurationUs(loadingPeriod.getBufferedPositionUs()), this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.playWhenReady, this.isRebuffering, targetLiveOffsetUs, this.lastRebufferRealtimeMs));
    }

    private boolean shouldUseLivePlaybackSpeedControl(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        if (mediaPeriodId.isAd() || timeline.isEmpty()) {
            return false;
        }
        timeline.getWindow(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, this.window);
        if (!this.window.isLive()) {
            return false;
        }
        Timeline.Window window = this.window;
        return window.isDynamic && window.windowStartTimeMs != C.TIME_UNSET;
    }

    private void startRenderers() throws ExoPlaybackException {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (playingPeriod == null) {
            return;
        }
        TrackSelectorResult trackSelectorResult = playingPeriod.getTrackSelectorResult();
        for (int i = 0; i < this.renderers.length; i++) {
            if (trackSelectorResult.isRendererEnabled(i)) {
                this.renderers[i].start();
            }
        }
    }

    private void stopInternal(boolean z, boolean z2) {
        resetInternal(z || !this.foregroundMode, false, true, false);
        this.playbackInfoUpdate.incrementPendingOperationAcks(z2 ? 1 : 0);
        this.loadControl.onStopped(this.playerId);
        this.audioFocusManager.updateAudioFocus(this.playbackInfo.playWhenReady, 1);
        setState(1);
    }

    private void stopRenderers() throws ExoPlaybackException {
        this.mediaClock.stop();
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.stop();
        }
    }

    private void updateIsLoading() {
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        boolean z = this.shouldContinueLoading || (loadingPeriod != null && loadingPeriod.mediaPeriod.isLoading());
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (z != playbackInfo.isLoading) {
            this.playbackInfo = playbackInfo.copyWithIsLoading(z);
        }
    }

    private void updateLoadControlTrackSelection(MediaSource.MediaPeriodId mediaPeriodId, TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult) {
        MediaPeriodHolder mediaPeriodHolder = (MediaPeriodHolder) Assertions.checkNotNull(this.queue.getLoadingPeriod());
        this.loadControl.onTracksSelected(new LoadControl.Parameters(this.playerId, this.playbackInfo.timeline, mediaPeriodId, mediaPeriodHolder == this.queue.getPlayingPeriod() ? mediaPeriodHolder.toPeriodTime(this.rendererPositionUs) : mediaPeriodHolder.toPeriodTime(this.rendererPositionUs) - mediaPeriodHolder.info.startPositionUs, getTotalBufferedDurationUs(mediaPeriodHolder.getBufferedPositionUs()), this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.playWhenReady, this.isRebuffering, shouldUseLivePlaybackSpeedControl(this.playbackInfo.timeline, mediaPeriodHolder.info.id) ? this.livePlaybackSpeedControl.getTargetLiveOffsetUs() : C.TIME_UNSET, this.lastRebufferRealtimeMs), trackGroupArray, trackSelectorResult.selections);
    }

    private void updateMediaSourcesWithMediaItemsInternal(int i, int i2, List<MediaItem> list) throws Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.updateMediaSourcesWithMediaItems(i, i2, list), false);
    }

    private void updatePeriods() throws ExoPlaybackException {
        if (this.playbackInfo.timeline.isEmpty() || !this.mediaSourceList.isPrepared()) {
            return;
        }
        boolean zMaybeUpdateLoadingPeriod = maybeUpdateLoadingPeriod();
        maybeUpdatePrewarmingPeriod();
        maybeUpdateReadingPeriod();
        maybeUpdateReadingRenderers();
        maybeUpdatePlayingPeriod();
        maybeUpdatePreloadPeriods(zMaybeUpdateLoadingPeriod);
    }

    private static int updatePlayWhenReadyChangeReason(int i, int i2) {
        if (i == -1) {
            return 2;
        }
        if (i2 == 2) {
            return 1;
        }
        return i2;
    }

    private void updatePlayWhenReadyWithAudioFocus() throws ExoPlaybackException {
        PlaybackInfo playbackInfo = this.playbackInfo;
        updatePlayWhenReadyWithAudioFocus(playbackInfo.playWhenReady, playbackInfo.playbackSuppressionReason, playbackInfo.playWhenReadyChangeReason);
    }

    private void updatePlaybackPositions() throws ExoPlaybackException {
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (playingPeriod == null) {
            return;
        }
        long discontinuity = playingPeriod.prepared ? playingPeriod.mediaPeriod.readDiscontinuity() : -9223372036854775807L;
        if (discontinuity != C.TIME_UNSET) {
            if (!playingPeriod.isFullyBuffered()) {
                this.queue.removeAfter(playingPeriod);
                handleLoadingMediaPeriodChanged(false);
                maybeContinueLoading();
            }
            resetRendererPosition(discontinuity);
            if (discontinuity != this.playbackInfo.positionUs) {
                PlaybackInfo playbackInfo = this.playbackInfo;
                this.playbackInfo = handlePositionDiscontinuity(playbackInfo.periodId, discontinuity, playbackInfo.requestedContentPositionUs, discontinuity, true, 5);
            }
        } else {
            long jSyncAndGetPositionUs = this.mediaClock.syncAndGetPositionUs(playingPeriod != this.queue.getReadingPeriod());
            this.rendererPositionUs = jSyncAndGetPositionUs;
            long periodTime = playingPeriod.toPeriodTime(jSyncAndGetPositionUs);
            maybeTriggerPendingMessages(this.playbackInfo.positionUs, periodTime);
            if (this.mediaClock.hasSkippedSilenceSinceLastCall()) {
                boolean z = !this.playbackInfoUpdate.positionDiscontinuity;
                PlaybackInfo playbackInfo2 = this.playbackInfo;
                this.playbackInfo = handlePositionDiscontinuity(playbackInfo2.periodId, periodTime, playbackInfo2.requestedContentPositionUs, periodTime, z, 6);
            } else {
                this.playbackInfo.updatePositionUs(periodTime);
            }
        }
        this.playbackInfo.bufferedPositionUs = this.queue.getLoadingPeriod().getBufferedPositionUs();
        this.playbackInfo.totalBufferedDurationUs = getTotalBufferedDurationUs();
        PlaybackInfo playbackInfo3 = this.playbackInfo;
        if (playbackInfo3.playWhenReady && playbackInfo3.playbackState == 3 && shouldUseLivePlaybackSpeedControl(playbackInfo3.timeline, playbackInfo3.periodId) && this.playbackInfo.playbackParameters.speed == 1.0f) {
            float adjustedPlaybackSpeed = this.livePlaybackSpeedControl.getAdjustedPlaybackSpeed(getCurrentLiveOffsetUs(), this.playbackInfo.totalBufferedDurationUs);
            if (this.mediaClock.getPlaybackParameters().speed != adjustedPlaybackSpeed) {
                setMediaClockPlaybackParameters(this.playbackInfo.playbackParameters.withSpeed(adjustedPlaybackSpeed));
                handlePlaybackParameters(this.playbackInfo.playbackParameters, this.mediaClock.getPlaybackParameters().speed, false, false);
            }
        }
    }

    private void updatePlaybackSpeedSettingsForNewPeriod(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline2, MediaSource.MediaPeriodId mediaPeriodId2, long j, boolean z) throws ExoPlaybackException {
        if (!shouldUseLivePlaybackSpeedControl(timeline, mediaPeriodId)) {
            PlaybackParameters playbackParameters = mediaPeriodId.isAd() ? PlaybackParameters.DEFAULT : this.playbackInfo.playbackParameters;
            if (this.mediaClock.getPlaybackParameters().equals(playbackParameters)) {
                return;
            }
            setMediaClockPlaybackParameters(playbackParameters);
            handlePlaybackParameters(this.playbackInfo.playbackParameters, playbackParameters.speed, false, false);
            return;
        }
        timeline.getWindow(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, this.window);
        this.livePlaybackSpeedControl.setLiveConfiguration((MediaItem.LiveConfiguration) Util.castNonNull(this.window.liveConfiguration));
        if (j != C.TIME_UNSET) {
            this.livePlaybackSpeedControl.setTargetLiveOffsetOverrideUs(getLiveOffsetUs(timeline, mediaPeriodId.periodUid, j));
            return;
        }
        if (!Objects.equals(!timeline2.isEmpty() ? timeline2.getWindow(timeline2.getPeriodByUid(mediaPeriodId2.periodUid, this.period).windowIndex, this.window).uid : null, this.window.uid) || z) {
            this.livePlaybackSpeedControl.setTargetLiveOffsetOverrideUs(C.TIME_UNSET);
        }
    }

    private static int updatePlaybackSuppressionReason(int i, int i2) {
        if (i == 0) {
            return 1;
        }
        if (i2 == 1) {
            return 0;
        }
        return i2;
    }

    private void updateRebufferingState(boolean z, boolean z2) {
        this.isRebuffering = z;
        this.lastRebufferRealtimeMs = (!z || z2) ? C.TIME_UNSET : this.clock.elapsedRealtime();
    }

    private boolean updateRenderersForTransition() throws ExoPlaybackException {
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        TrackSelectorResult trackSelectorResult = readingPeriod.getTrackSelectorResult();
        boolean z = true;
        int i = 0;
        while (true) {
            RendererHolder[] rendererHolderArr = this.renderers;
            if (i >= rendererHolderArr.length) {
                break;
            }
            int enabledRendererCount = rendererHolderArr[i].getEnabledRendererCount();
            int iReplaceStreamsOrDisableRendererForTransition = this.renderers[i].replaceStreamsOrDisableRendererForTransition(readingPeriod, trackSelectorResult, this.mediaClock);
            if ((iReplaceStreamsOrDisableRendererForTransition & 2) != 0 && this.offloadSchedulingEnabled) {
                setOffloadSchedulingEnabled(false);
            }
            this.enabledRendererCount -= enabledRendererCount - this.renderers[i].getEnabledRendererCount();
            z &= (iReplaceStreamsOrDisableRendererForTransition & 1) != 0;
            i++;
        }
        if (z) {
            for (int i2 = 0; i2 < this.renderers.length; i2++) {
                if (trackSelectorResult.isRendererEnabled(i2) && !this.renderers[i2].isReadingFromPeriod(readingPeriod)) {
                    enableRenderer(readingPeriod, i2, false, readingPeriod.getStartPositionRendererTime());
                }
            }
        }
        return z;
    }

    private void updateTrackSelectionPlaybackSpeed(float f) {
        for (MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
            for (ExoTrackSelection exoTrackSelection : playingPeriod.getTrackSelectorResult().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onPlaybackSpeed(f);
                }
            }
        }
    }

    private synchronized void waitUninterruptibly(w6a w6aVar, long j) {
        long jElapsedRealtime = this.clock.elapsedRealtime() + j;
        boolean z = false;
        while (!((Boolean) w6aVar.get()).booleanValue() && j > 0) {
            try {
                this.clock.onThreadBlocked();
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = jElapsedRealtime - this.clock.elapsedRealtime();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public void addMediaSources(int i, List<MediaSourceList.MediaSourceHolder> list, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(18, i, 0, new MediaSourceListUpdateMessage(list, shuffleOrder, -1, C.TIME_UNSET)).sendToTarget();
    }

    @Override
    public void executePlayerCommand(int i) {
        this.handler.obtainMessage(33, i, 0).sendToTarget();
    }

    public void experimentalSetForegroundModeTimeoutMs(long j) {
        this.setForegroundModeTimeoutMs = j;
    }

    public Looper getPlaybackLooper() {
        return this.playbackLooper;
    }

    /* JADX WARN: Code duplicated, block: B:121:0x0239  */
    /* JADX WARN: Code duplicated, block: B:123:0x023d  */
    /* JADX WARN: Code duplicated, block: B:132:0x0290  */
    /* JADX WARN: Code duplicated, block: B:145:0x02ba  */
    @Override
    public boolean handleMessage(Message message) throws Throwable {
        ExoPlaybackException exoPlaybackException;
        ExoPlaybackException exoPlaybackException2;
        int i;
        MediaPeriodHolder readingPeriod;
        int i2 = 1000;
        try {
            switch (message.what) {
                case 1:
                    boolean z = message.arg1 != 0;
                    int i3 = message.arg2;
                    setPlayWhenReadyInternal(z, i3 >> 4, true, i3 & 15);
                    break;
                case 2:
                    doSomeWork();
                    break;
                case 3:
                    seekToInternal((SeekPosition) message.obj);
                    break;
                case 4:
                    setPlaybackParametersInternal((PlaybackParameters) message.obj);
                    break;
                case 5:
                    setSeekParametersInternal((SeekParameters) message.obj);
                    break;
                case 6:
                    stopInternal(false, true);
                    break;
                case 7:
                    releaseInternal();
                    return true;
                case 8:
                    handlePeriodPrepared((MediaPeriod) message.obj);
                    break;
                case 9:
                    handleContinueLoadingRequested((MediaPeriod) message.obj);
                    break;
                case 10:
                    reselectTracksInternal();
                    break;
                case 11:
                    setRepeatModeInternal(message.arg1);
                    break;
                case 12:
                    setShuffleModeEnabledInternal(message.arg1 != 0);
                    break;
                case 13:
                    setForegroundModeInternal(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    sendMessageInternal((PlayerMessage) message.obj);
                    break;
                case 15:
                    sendMessageToTargetThread((PlayerMessage) message.obj);
                    break;
                case 16:
                    handlePlaybackParameters((PlaybackParameters) message.obj, false);
                    break;
                case 17:
                    setMediaItemsInternal((MediaSourceListUpdateMessage) message.obj);
                    break;
                case 18:
                    addMediaItemsInternal((MediaSourceListUpdateMessage) message.obj, message.arg1);
                    break;
                case 19:
                    moveMediaItemsInternal((MoveMediaItemsMessage) message.obj);
                    break;
                case 20:
                    removeMediaItemsInternal(message.arg1, message.arg2, (ShuffleOrder) message.obj);
                    break;
                case 21:
                    setShuffleOrderInternal((ShuffleOrder) message.obj);
                    break;
                case 22:
                    mediaSourceListUpdateRequestedInternal();
                    break;
                case 23:
                    setPauseAtEndOfWindowInternal(message.arg1 != 0);
                    break;
                case 24:
                default:
                    return false;
                case 25:
                    attemptRendererErrorRecovery();
                    break;
                case 26:
                    reselectTracksInternalAndSeek();
                    break;
                case 27:
                    updateMediaSourcesWithMediaItemsInternal(message.arg1, message.arg2, (List) message.obj);
                    break;
                case 28:
                    setPreloadConfigurationInternal((ExoPlayer.PreloadConfiguration) message.obj);
                    break;
                case 29:
                    prepareInternal();
                    break;
                case 30:
                    Pair pair = (Pair) message.obj;
                    setVideoOutputInternal(pair.first, (AtomicBoolean) pair.second);
                    break;
                case 31:
                    setAudioAttributesInternal((AudioAttributes) message.obj, message.arg1 != 0);
                    break;
                case 32:
                    setVolumeInternal(((Float) message.obj).floatValue());
                    break;
                case 33:
                    handleAudioFocusPlayerCommandInternal(message.arg1);
                    break;
                case 34:
                    handleAudioFocusVolumeMultiplierChange();
                    break;
            }
        } catch (ParserException e) {
            int i4 = e.dataType;
            if (i4 == 1) {
                i2 = e.contentIsMalformed ? 3001 : 3003;
            } else if (i4 == 4) {
                i2 = e.contentIsMalformed ? 3002 : 3004;
            }
            handleIoException(e, i2);
        } catch (DataSourceException e2) {
            handleIoException(e2, e2.reason);
        } catch (ExoPlaybackException e3) {
            ExoPlaybackException exoPlaybackExceptionCopyWithMediaPeriodId = e3;
            if (exoPlaybackExceptionCopyWithMediaPeriodId.type == 1 && (readingPeriod = this.queue.getReadingPeriod()) != null) {
                RendererHolder[] rendererHolderArr = this.renderers;
                int i5 = exoPlaybackExceptionCopyWithMediaPeriodId.rendererIndex;
                exoPlaybackExceptionCopyWithMediaPeriodId = exoPlaybackExceptionCopyWithMediaPeriodId.copyWithMediaPeriodId((!rendererHolderArr[i5 % rendererHolderArr.length].isRendererPrewarming(i5) || readingPeriod.getNext() == null) ? readingPeriod.info.id : readingPeriod.getNext().info.id);
            }
            if (exoPlaybackExceptionCopyWithMediaPeriodId.type == 1) {
                RendererHolder[] rendererHolderArr2 = this.renderers;
                int i6 = exoPlaybackExceptionCopyWithMediaPeriodId.rendererIndex;
                if (rendererHolderArr2[i6 % rendererHolderArr2.length].isRendererPrewarming(i6)) {
                    this.isPrewarmingDisabledUntilNextTransition = true;
                    disableAndResetPrewarmingRenderers();
                    MediaPeriodHolder prewarmingPeriod = this.queue.getPrewarmingPeriod();
                    MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
                    if (this.queue.getPlayingPeriod() != prewarmingPeriod) {
                        while (playingPeriod != null && playingPeriod.getNext() != prewarmingPeriod) {
                            playingPeriod = playingPeriod.getNext();
                        }
                    }
                    this.queue.removeAfter(playingPeriod);
                    if (this.playbackInfo.playbackState != 4) {
                        maybeContinueLoading();
                        this.handler.sendEmptyMessage(2);
                    }
                } else {
                    exoPlaybackException = this.pendingRecoverableRendererError;
                    if (exoPlaybackException != null) {
                        exoPlaybackException.addSuppressed(exoPlaybackExceptionCopyWithMediaPeriodId);
                        exoPlaybackExceptionCopyWithMediaPeriodId = this.pendingRecoverableRendererError;
                    }
                    exoPlaybackException2 = exoPlaybackExceptionCopyWithMediaPeriodId;
                    if (exoPlaybackException2.type != 1 && this.queue.getPlayingPeriod() != this.queue.getReadingPeriod()) {
                        while (this.queue.getPlayingPeriod() != this.queue.getReadingPeriod()) {
                            this.queue.advancePlayingPeriod();
                        }
                        MediaPeriodHolder mediaPeriodHolder = (MediaPeriodHolder) Assertions.checkNotNull(this.queue.getPlayingPeriod());
                        maybeNotifyPlaybackInfoChanged();
                        MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
                        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.id;
                        long j = mediaPeriodInfo.startPositionUs;
                        this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, j, mediaPeriodInfo.requestedContentPositionUs, j, true, 0);
                    }
                    if (exoPlaybackException2.isRecoverable || !(this.pendingRecoverableRendererError == null || (i = exoPlaybackException2.errorCode) == 5004 || i == 5003)) {
                        Log.e(TAG, "Playback error", exoPlaybackException2);
                        stopInternal(true, false);
                        this.playbackInfo = this.playbackInfo.copyWithPlaybackError(exoPlaybackException2);
                    } else {
                        Log.w(TAG, "Recoverable renderer error", exoPlaybackException2);
                        if (this.pendingRecoverableRendererError == null) {
                            this.pendingRecoverableRendererError = exoPlaybackException2;
                        }
                        HandlerWrapper handlerWrapper = this.handler;
                        handlerWrapper.sendMessageAtFrontOfQueue(handlerWrapper.obtainMessage(25, exoPlaybackException2));
                    }
                }
            } else {
                exoPlaybackException = this.pendingRecoverableRendererError;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(exoPlaybackExceptionCopyWithMediaPeriodId);
                    exoPlaybackExceptionCopyWithMediaPeriodId = this.pendingRecoverableRendererError;
                }
                exoPlaybackException2 = exoPlaybackExceptionCopyWithMediaPeriodId;
                if (exoPlaybackException2.type != 1) {
                }
                if (exoPlaybackException2.isRecoverable) {
                    Log.e(TAG, "Playback error", exoPlaybackException2);
                    stopInternal(true, false);
                    this.playbackInfo = this.playbackInfo.copyWithPlaybackError(exoPlaybackException2);
                } else {
                    Log.e(TAG, "Playback error", exoPlaybackException2);
                    stopInternal(true, false);
                    this.playbackInfo = this.playbackInfo.copyWithPlaybackError(exoPlaybackException2);
                }
            }
        } catch (DrmSession.DrmSessionException e4) {
            handleIoException(e4, e4.errorCode);
        } catch (BehindLiveWindowException e5) {
            handleIoException(e5, 1002);
        } catch (IOException e6) {
            handleIoException(e6, 2000);
        } catch (RuntimeException e7) {
            ExoPlaybackException exoPlaybackExceptionCreateForUnexpected = ExoPlaybackException.createForUnexpected(e7, ((e7 instanceof IllegalStateException) || (e7 instanceof IllegalArgumentException)) ? 1004 : 1000);
            Log.e(TAG, "Playback error", exoPlaybackExceptionCreateForUnexpected);
            stopInternal(true, false);
            this.playbackInfo = this.playbackInfo.copyWithPlaybackError(exoPlaybackExceptionCreateForUnexpected);
        }
        maybeNotifyPlaybackInfoChanged();
        return true;
    }

    public void moveMediaSources(int i, int i2, int i3, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(19, new MoveMediaItemsMessage(i, i2, i3, shuffleOrder)).sendToTarget();
    }

    @Override
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        this.handler.obtainMessage(16, playbackParameters).sendToTarget();
    }

    @Override
    public void onPlaylistUpdateRequested() {
        this.handler.removeMessages(2);
        this.handler.sendEmptyMessage(22);
    }

    @Override
    public void onPrepared(MediaPeriod mediaPeriod) {
        this.handler.obtainMessage(8, mediaPeriod).sendToTarget();
    }

    @Override
    public void onRendererCapabilitiesChanged(Renderer renderer) {
        this.handler.sendEmptyMessage(26);
    }

    @Override
    public void onTrackSelectionsInvalidated() {
        this.handler.sendEmptyMessage(10);
    }

    public void prepare() {
        this.handler.obtainMessage(29).sendToTarget();
    }

    public synchronized boolean release() {
        if (!this.released && this.playbackLooper.getThread().isAlive()) {
            this.handler.sendEmptyMessage(7);
            waitUninterruptibly(new w6a() {
                @Override
                public final Object get() {
                    return this.b.lambda$release$0();
                }
            }, this.releaseTimeoutMs);
            return this.released;
        }
        return true;
    }

    public void removeMediaSources(int i, int i2, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(20, i, i2, shuffleOrder).sendToTarget();
    }

    public void seekTo(Timeline timeline, int i, long j) {
        this.handler.obtainMessage(3, new SeekPosition(timeline, i, j)).sendToTarget();
    }

    @Override
    public synchronized void sendMessage(PlayerMessage playerMessage) {
        if (!this.released && this.playbackLooper.getThread().isAlive()) {
            this.handler.obtainMessage(14, playerMessage).sendToTarget();
            return;
        }
        Log.w(TAG, "Ignoring messages sent after release.");
        playerMessage.markAsProcessed(false);
    }

    public void setAudioAttributes(AudioAttributes audioAttributes, boolean z) {
        this.handler.obtainMessage(31, z ? 1 : 0, 0, audioAttributes).sendToTarget();
    }

    public synchronized boolean setForegroundMode(boolean z) {
        if (!this.released && this.playbackLooper.getThread().isAlive()) {
            if (z) {
                this.handler.obtainMessage(13, 1, 0).sendToTarget();
                return true;
            }
            AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.handler.obtainMessage(13, 0, 0, atomicBoolean).sendToTarget();
            waitUninterruptibly(new oi3(atomicBoolean), this.setForegroundModeTimeoutMs);
            return atomicBoolean.get();
        }
        return true;
    }

    public void setMediaSources(List<MediaSourceList.MediaSourceHolder> list, int i, long j, ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(17, new MediaSourceListUpdateMessage(list, shuffleOrder, i, j)).sendToTarget();
    }

    public void setPauseAtEndOfWindow(boolean z) {
        this.handler.obtainMessage(23, z ? 1 : 0, 0).sendToTarget();
    }

    public void setPlayWhenReady(boolean z, int i, int i2) {
        this.handler.obtainMessage(1, z ? 1 : 0, i | (i2 << 4)).sendToTarget();
    }

    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        this.handler.obtainMessage(4, playbackParameters).sendToTarget();
    }

    public void setPreloadConfiguration(ExoPlayer.PreloadConfiguration preloadConfiguration) {
        this.handler.obtainMessage(28, preloadConfiguration).sendToTarget();
    }

    public void setRepeatMode(int i) {
        this.handler.obtainMessage(11, i, 0).sendToTarget();
    }

    public void setSeekParameters(SeekParameters seekParameters) {
        this.handler.obtainMessage(5, seekParameters).sendToTarget();
    }

    public void setShuffleModeEnabled(boolean z) {
        this.handler.obtainMessage(12, z ? 1 : 0, 0).sendToTarget();
    }

    public void setShuffleOrder(ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(21, shuffleOrder).sendToTarget();
    }

    public synchronized boolean setVideoOutput(@Nullable Object obj, long j) {
        if (!this.released && this.playbackLooper.getThread().isAlive()) {
            AtomicBoolean atomicBoolean = new AtomicBoolean();
            this.handler.obtainMessage(30, new Pair(obj, atomicBoolean)).sendToTarget();
            if (j == C.TIME_UNSET) {
                return true;
            }
            waitUninterruptibly(new oi3(atomicBoolean), j);
            return atomicBoolean.get();
        }
        return true;
    }

    public void setVolume(float f) {
        this.handler.obtainMessage(32, Float.valueOf(f)).sendToTarget();
    }

    @Override
    public void setVolumeMultiplier(float f) {
        this.handler.sendEmptyMessage(34);
    }

    public void stop() {
        this.handler.obtainMessage(6).sendToTarget();
    }

    public void updateMediaSourcesWithMediaItems(int i, int i2, List<MediaItem> list) {
        this.handler.obtainMessage(27, i, i2, list).sendToTarget();
    }

    private long getTotalBufferedDurationUs(long j) {
        MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        if (loadingPeriod == null) {
            return 0L;
        }
        return Math.max(0L, j - loadingPeriod.toPeriodTime(this.rendererPositionUs));
    }

    private void handlePlaybackParameters(PlaybackParameters playbackParameters, float f, boolean z, boolean z2) throws ExoPlaybackException {
        if (z) {
            if (z2) {
                this.playbackInfoUpdate.incrementPendingOperationAcks(1);
            }
            this.playbackInfo = this.playbackInfo.copyWithPlaybackParameters(playbackParameters);
        }
        updateTrackSelectionPlaybackSpeed(playbackParameters.speed);
        for (RendererHolder rendererHolder : this.renderers) {
            rendererHolder.setPlaybackSpeed(f, playbackParameters.speed);
        }
    }

    private void updatePlayWhenReadyWithAudioFocus(boolean z, int i, int i2) throws ExoPlaybackException {
        updatePlayWhenReadyWithAudioFocus(z, this.audioFocusManager.updateAudioFocus(z, this.playbackInfo.playbackState), i, i2);
    }

    @Override
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        this.handler.obtainMessage(9, mediaPeriod).sendToTarget();
    }

    private void enableRenderers(boolean[] zArr, long j) throws ExoPlaybackException {
        MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        TrackSelectorResult trackSelectorResult = readingPeriod.getTrackSelectorResult();
        for (int i = 0; i < this.renderers.length; i++) {
            if (!trackSelectorResult.isRendererEnabled(i)) {
                this.renderers[i].reset();
            }
        }
        for (int i2 = 0; i2 < this.renderers.length; i2++) {
            if (trackSelectorResult.isRendererEnabled(i2) && !this.renderers[i2].isReadingFromPeriod(readingPeriod)) {
                enableRenderer(readingPeriod, i2, zArr[i2], j);
            }
        }
    }

    private long seekToPeriodPosition(MediaSource.MediaPeriodId mediaPeriodId, long j, boolean z, boolean z2) throws ExoPlaybackException {
        stopRenderers();
        updateRebufferingState(false, true);
        if (z2 || this.playbackInfo.playbackState == 3) {
            setState(2);
        }
        MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        MediaPeriodHolder next = playingPeriod;
        while (next != null && !mediaPeriodId.equals(next.info.id)) {
            next = next.getNext();
        }
        if (z || playingPeriod != next || (next != null && next.toRendererTime(j) < 0)) {
            disableRenderers();
            if (next != null) {
                while (this.queue.getPlayingPeriod() != next) {
                    this.queue.advancePlayingPeriod();
                }
                this.queue.removeAfter(next);
                next.setRendererOffset(MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US);
                enableRenderers();
                next.allRenderersInCorrectState = true;
            }
        }
        disableAndResetPrewarmingRenderers();
        if (next != null) {
            this.queue.removeAfter(next);
            if (!next.prepared) {
                next.info = next.info.copyWithStartPositionUs(j);
            } else if (next.hasEnabledTracks) {
                j = next.mediaPeriod.seekToUs(j);
                next.mediaPeriod.discardBuffer(j - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
            }
            resetRendererPosition(j);
            maybeContinueLoading();
        } else {
            this.queue.clear();
            resetRendererPosition(j);
        }
        handleLoadingMediaPeriodChanged(false);
        this.handler.sendEmptyMessage(2);
        return j;
    }

    private void updatePlayWhenReadyWithAudioFocus(boolean z, int i, int i2, int i3) throws ExoPlaybackException {
        boolean z2 = z && i != -1;
        int iUpdatePlayWhenReadyChangeReason = updatePlayWhenReadyChangeReason(i, i3);
        int iUpdatePlaybackSuppressionReason = updatePlaybackSuppressionReason(i, i2);
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.playWhenReady == z2 && playbackInfo.playbackSuppressionReason == iUpdatePlaybackSuppressionReason && playbackInfo.playWhenReadyChangeReason == iUpdatePlayWhenReadyChangeReason) {
            return;
        }
        this.playbackInfo = playbackInfo.copyWithPlayWhenReady(z2, iUpdatePlayWhenReadyChangeReason, iUpdatePlaybackSuppressionReason);
        updateRebufferingState(false, false);
        notifyTrackSelectionPlayWhenReadyChanged(z2);
        if (!shouldPlayWhenReady()) {
            stopRenderers();
            updatePlaybackPositions();
            this.queue.reevaluateBuffer(this.rendererPositionUs);
            return;
        }
        int i4 = this.playbackInfo.playbackState;
        if (i4 == 3) {
            this.mediaClock.start();
            startRenderers();
            this.handler.sendEmptyMessage(2);
        } else if (i4 == 2) {
            this.handler.sendEmptyMessage(2);
        }
    }
}
