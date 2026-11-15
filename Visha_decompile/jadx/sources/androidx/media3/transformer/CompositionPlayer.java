package androidx.media3.transformer;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseBooleanArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.C;
import androidx.media3.common.Effect;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.PreviewingVideoGraph;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.Timeline;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.VideoSize;
import androidx.media3.common.audio.SpeedProvider;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.effect.PreviewingSingleInputVideoGraph;
import androidx.media3.effect.TimestampAdjustment;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.image.ImageDecoder;
import androidx.media3.exoplayer.source.ClippingMediaSource;
import androidx.media3.exoplayer.source.ConcatenatingMediaSource2;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.FilteringMediaSource;
import androidx.media3.exoplayer.source.ForwardingTimeline;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MergingMediaSource;
import androidx.media3.exoplayer.source.SilenceMediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.source.WrappingMediaSource;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.util.EventLogger;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import androidx.media3.exoplayer.video.VideoFrameReleaseControl;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.util.concurrent.Futures;
import defpackage.dgb;
import defpackage.im5;
import defpackage.qd1;
import defpackage.rd1;
import defpackage.sd1;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@UnstableApi
public final class CompositionPlayer extends SimpleBasePlayer implements CompositionPlayerInternal.Listener, PlaybackVideoGraphWrapper.Listener, SurfaceHolder.Callback {
    private static final Player.Commands AVAILABLE_COMMANDS = new Player.Commands.Builder().addAll(1, 2, 3, 5, 8, 4, 11, 12, 16, 17, 15, 27, 22, 24, 32).build();
    private static final int[] SUPPORTED_LISTENER_EVENTS = {4, 5, 10, 11, 1};
    private static final String TAG = "CompositionPlayer";
    private final HandlerWrapper applicationHandler;
    private SimpleBasePlayer.LivePositionSupplier bufferedPositionSupplier;
    private final Clock clock;
    private Composition composition;
    private long compositionDurationUs;
    private final HandlerWrapper compositionInternalListenerHandler;
    private CompositionPlayerInternal compositionPlayerInternal;
    private final Context context;

    @Nullable
    private Surface displaySurface;
    private final AudioSink finalAudioSink;
    private final ImageDecoder.Factory imageDecoderFactory;
    private boolean isSeeking;
    private final MediaSource.Factory mediaSourceFactory;
    private boolean playWhenReady;
    private int playWhenReadyChangeReason;

    @Nullable
    private PlaybackException playbackException;
    private int playbackState;
    private HandlerThread playbackThread;
    private PlaybackVideoGraphWrapper playbackVideoGraphWrapper;
    private final List<ExoPlayer> players;
    private ImmutableList<SimpleBasePlayer.MediaItemData> playlist;
    private SimpleBasePlayer.LivePositionSupplier positionSupplier;
    private final PreviewingVideoGraph.Factory previewingVideoGraphFactory;
    private boolean renderedFirstFrame;
    private int repeatMode;
    private boolean repeatingCompositionSeekInProgress;

    @Nullable
    private SurfaceHolder surfaceHolder;
    private SimpleBasePlayer.LivePositionSupplier totalBufferedDurationSupplier;

    @Nullable
    private Object videoOutput;
    private Size videoOutputSize;
    private final boolean videoPrewarmingEnabled;
    private final SparseBooleanArray videoTracksSelected;
    private float volume;

    public static final class Builder {
        private AudioSink audioSink;
        private boolean built;
        private final Context context;
        private Looper looper;
        private MediaSource.Factory mediaSourceFactory;
        private PreviewingVideoGraph.Factory previewingVideoGraphFactory;
        private ImageDecoder.Factory imageDecoderFactory = ImageDecoder.Factory.DEFAULT;
        private boolean videoPrewarmingEnabled = true;
        private Clock clock = Clock.DEFAULT;

        public Builder(Context context) {
            this.context = context.getApplicationContext();
            this.mediaSourceFactory = new DefaultMediaSourceFactory(context);
        }

        public CompositionPlayer build() {
            Assertions.checkState(!this.built);
            if (this.looper == null) {
                this.looper = (Looper) Assertions.checkStateNotNull(Looper.myLooper());
            }
            if (this.audioSink == null) {
                this.audioSink = new DefaultAudioSink.Builder(this.context).build();
            }
            if (this.previewingVideoGraphFactory == null) {
                this.previewingVideoGraphFactory = new PreviewingSingleInputVideoGraph.Factory();
            }
            CompositionPlayer compositionPlayer = new CompositionPlayer(this);
            this.built = true;
            return compositionPlayer;
        }

        public Builder setAudioSink(AudioSink audioSink) {
            this.audioSink = audioSink;
            return this;
        }

        @VisibleForTesting
        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setImageDecoderFactory(ImageDecoder.Factory factory) {
            this.imageDecoderFactory = factory;
            return this;
        }

        public Builder setLooper(Looper looper) {
            this.looper = looper;
            return this;
        }

        public Builder setMediaSourceFactory(MediaSource.Factory factory) {
            this.mediaSourceFactory = factory;
            return this;
        }

        @VisibleForTesting
        public Builder setPreviewingVideoGraphFactory(PreviewingVideoGraph.Factory factory) {
            this.previewingVideoGraphFactory = factory;
            return this;
        }

        @VisibleForTesting
        public Builder setVideoPrewarmingEnabled(boolean z) {
            this.videoPrewarmingEnabled = z;
            return this;
        }
    }

    public static final class CompositionFrameTimingEvaluator implements VideoFrameReleaseControl.FrameTimingEvaluator {
        private static final long FRAME_LATE_THRESHOLD_US = -30000;
        private static final long FRAME_RELEASE_THRESHOLD_US = 100000;

        private CompositionFrameTimingEvaluator() {
        }

        @Override
        public boolean shouldDropFrame(long j, long j2, boolean z) {
            return j < FRAME_LATE_THRESHOLD_US && !z;
        }

        @Override
        public boolean shouldForceReleaseFrame(long j, long j2) {
            return j < FRAME_LATE_THRESHOLD_US && j2 > 100000;
        }

        @Override
        public boolean shouldIgnoreFrame(long j, long j2, long j3, boolean z, boolean z2) {
            return false;
        }
    }

    public final class CompositionTrackSelector extends DefaultTrackSelector {
        private static final String SILENCE_AUDIO_TRACK_GROUP_ID = "1:";
        private final boolean disableVideoPlayback;
        private final int sequenceIndex;

        public CompositionTrackSelector(Context context, int i, boolean z) {
            super(context);
            this.sequenceIndex = i;
            this.disableVideoPlayback = z;
        }

        @Override
        @Nullable
        public Pair<ExoTrackSelection.Definition, Integer> selectAudioTrack(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, DefaultTrackSelector.Parameters parameters) throws ExoPlaybackException {
            int i = 0;
            while (true) {
                if (i >= mappedTrackInfo.getRendererCount()) {
                    i = -1;
                    break;
                }
                if (mappedTrackInfo.getRendererType(i) == 1) {
                    break;
                }
                i++;
            }
            Assertions.checkState(i != -1);
            TrackGroupArray trackGroups = mappedTrackInfo.getTrackGroups(i);
            if (trackGroups.length > 1) {
                boolean z = false;
                int i2 = -1;
                for (int i3 = 0; i3 < trackGroups.length; i3++) {
                    if (trackGroups.get(i3).id.startsWith(SILENCE_AUDIO_TRACK_GROUP_ID)) {
                        i2 = i3;
                    } else {
                        for (int i4 = 0; i4 < trackGroups.get(i3).length; i4++) {
                            z |= RendererCapabilities.getFormatSupport(iArr[i][i3][i4]) == 4;
                        }
                    }
                }
                Assertions.checkState(i2 != -1);
                if (z) {
                    iArr[i][trackGroups.length - 1][0] = RendererCapabilities.create(0);
                }
            }
            return super.selectAudioTrack(mappedTrackInfo, iArr, iArr2, parameters);
        }

        @Override
        @Nullable
        public Pair<ExoTrackSelection.Definition, Integer> selectImageTrack(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, DefaultTrackSelector.Parameters parameters) throws ExoPlaybackException {
            Pair<ExoTrackSelection.Definition, Integer> pairSelectImageTrack = super.selectImageTrack(mappedTrackInfo, iArr, parameters);
            if (this.disableVideoPlayback) {
                pairSelectImageTrack = null;
            }
            CompositionPlayer.this.onVideoTrackSelection(pairSelectImageTrack != null, this.sequenceIndex);
            return pairSelectImageTrack;
        }

        @Override
        @Nullable
        public Pair<ExoTrackSelection.Definition, Integer> selectVideoTrack(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, DefaultTrackSelector.Parameters parameters, @Nullable String str) throws ExoPlaybackException {
            Pair<ExoTrackSelection.Definition, Integer> pairSelectVideoTrack = super.selectVideoTrack(mappedTrackInfo, iArr, iArr2, parameters, str);
            if (this.disableVideoPlayback) {
                pairSelectVideoTrack = null;
            }
            CompositionPlayer.this.onVideoTrackSelection(pairSelectVideoTrack != null, this.sequenceIndex);
            return pairSelectVideoTrack;
        }
    }

    public final class PlayerListener implements Player.Listener {
        private final int playerIndex;

        public PlayerListener(int i) {
            this.playerIndex = i;
        }

        @Override
        public void onEvents(Player player, Player.Events events) {
            if (events.containsAny(CompositionPlayer.SUPPORTED_LISTENER_EVENTS)) {
                CompositionPlayer.this.invalidateState();
            }
        }

        @Override
        public void onPlayWhenReadyChanged(boolean z, int i) {
            CompositionPlayer.this.playWhenReadyChangeReason = i;
            if (i == 5 && CompositionPlayer.this.repeatMode != 0 && this.playerIndex == 0) {
                CompositionPlayer.this.repeatCompositionPlayback();
            }
        }

        @Override
        public void onPlaybackStateChanged(int i) {
            CompositionPlayer.this.updatePlaybackState();
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            CompositionPlayer.this.maybeUpdatePlaybackError("error from player " + this.playerIndex, playbackException, playbackException.errorCode);
        }
    }

    private void clearVideoSurfaceInternal() {
        this.displaySurface = null;
        CompositionPlayerInternal compositionPlayerInternal = this.compositionPlayerInternal;
        if (compositionPlayerInternal != null) {
            compositionPlayerInternal.clearOutputSurface();
        }
    }

    private static EditedMediaItem clipToDuration(EditedMediaItem editedMediaItem, long j) {
        MediaItem.ClippingConfiguration clippingConfiguration = editedMediaItem.mediaItem.clippingConfiguration;
        return editedMediaItem.buildUpon().setMediaItem(editedMediaItem.mediaItem.buildUpon().setClippingConfiguration(clippingConfiguration.buildUpon().setEndPositionUs(clippingConfiguration.startPositionUs + j).build()).build()).build();
    }

    private static MediaSource createMediaSourceWithSilence(MediaSource.Factory factory, EditedMediaItem editedMediaItem) {
        MediaSource mediaSourceCreateMediaSource = factory.createMediaSource(editedMediaItem.mediaItem);
        if (editedMediaItem.removeAudio) {
            mediaSourceCreateMediaSource = new FilteringMediaSource(mediaSourceCreateMediaSource, ImmutableSet.of(2, 4));
        }
        return new MergingMediaSource(mediaSourceCreateMediaSource, new ClippingMediaSource.Builder(new SilenceMediaSource(editedMediaItem.durationUs)).setStartPositionUs(editedMediaItem.mediaItem.clippingConfiguration.startPositionUs).setEndPositionUs(editedMediaItem.mediaItem.clippingConfiguration.endPositionUs).build());
    }

    private ImmutableList<SimpleBasePlayer.MediaItemData> createPlaylist() {
        Assertions.checkNotNull(Boolean.valueOf(this.compositionDurationUs != C.TIME_UNSET));
        return ImmutableList.of(new SimpleBasePlayer.MediaItemData.Builder("CompositionTimeline").setMediaItem(MediaItem.EMPTY).setDurationUs(this.compositionDurationUs).build());
    }

    private static Composition deactivateSpeedAdjustingVideoEffects(Composition composition) {
        ArrayList arrayList = new ArrayList();
        dgb it = composition.sequences.iterator();
        while (it.hasNext()) {
            EditedMediaItemSequence editedMediaItemSequence = (EditedMediaItemSequence) it.next();
            ArrayList arrayList2 = new ArrayList();
            dgb it2 = editedMediaItemSequence.editedMediaItems.iterator();
            while (it2.hasNext()) {
                EditedMediaItem editedMediaItem = (EditedMediaItem) it2.next();
                ImmutableList<Effect> immutableList = editedMediaItem.effects.videoEffects;
                ArrayList arrayList3 = new ArrayList();
                dgb it3 = immutableList.iterator();
                while (it3.hasNext()) {
                    Effect effect = (Effect) it3.next();
                    if (effect instanceof TimestampAdjustment) {
                        arrayList3.add(new InactiveTimestampAdjustment(((TimestampAdjustment) effect).speedProvider));
                    } else {
                        arrayList3.add(effect);
                    }
                }
                arrayList2.add(editedMediaItem.buildUpon().setEffects(new Effects(editedMediaItem.effects.audioProcessors, arrayList3)).build());
            }
            arrayList.add(new EditedMediaItemSequence.Builder(arrayList2).setIsLooping(editedMediaItemSequence.isLooping).build());
        }
        return composition.buildUpon().setSequences(arrayList).build();
    }

    public long getBufferedPositionMs() {
        if (this.players.isEmpty()) {
            return 0L;
        }
        long jMin = 2147483647L;
        for (int i = 0; i < this.players.size(); i++) {
            int playbackState = this.players.get(i).getPlaybackState();
            if (playbackState == 3 || playbackState == 2) {
                jMin = Math.min(jMin, this.players.get(i).getBufferedPosition());
            }
        }
        if (jMin == 2147483647L) {
            return 0L;
        }
        return jMin;
    }

    private static long getCompositionDurationUs(Composition composition) {
        Assertions.checkState(!composition.sequences.isEmpty());
        long jMax = -2147483648L;
        for (int i = 0; i < composition.sequences.size(); i++) {
            jMax = Math.max(jMax, getSequenceDurationUs(composition.sequences.get(i)));
        }
        return jMax;
    }

    public long getContentPositionMs() {
        long jMax = 0;
        if (this.players.isEmpty()) {
            return 0L;
        }
        for (int i = 0; i < this.players.size(); i++) {
            jMax = Math.max(jMax, this.players.get(i).getContentPosition());
        }
        return jMax;
    }

    private boolean getRenderedFirstFrameAndReset() {
        boolean z = this.renderedFirstFrame;
        this.renderedFirstFrame = false;
        return z;
    }

    private static long getSequenceDurationUs(EditedMediaItemSequence editedMediaItemSequence) {
        long presentationDurationUs = 0;
        for (int i = 0; i < editedMediaItemSequence.editedMediaItems.size(); i++) {
            presentationDurationUs += editedMediaItemSequence.editedMediaItems.get(i).getPresentationDurationUs();
        }
        Assertions.checkState(presentationDurationUs > 0, String.valueOf(presentationDurationUs));
        return presentationDurationUs;
    }

    public long getTotalBufferedDurationMs() {
        if (this.players.isEmpty()) {
            return 0L;
        }
        long jMin = 2147483647L;
        for (int i = 0; i < this.players.size(); i++) {
            int playbackState = this.players.get(i).getPlaybackState();
            if (playbackState == 3 || playbackState == 2) {
                jMin = Math.min(jMin, this.players.get(i).getTotalBufferedDuration());
            }
        }
        if (jMin == 2147483647L) {
            return 0L;
        }
        return jMin;
    }

    public void lambda$onError$1(VideoFrameProcessingException videoFrameProcessingException) {
        maybeUpdatePlaybackError("Error processing video frames", videoFrameProcessingException, 7001);
    }

    public void lambda$onFirstFrameRendered$0() {
        this.renderedFirstFrame = true;
        invalidateState();
    }

    private void maybeSetOutputSurfaceInfo(int i, int i2) {
        CompositionPlayerInternal compositionPlayerInternal;
        Surface surface = this.displaySurface;
        if (i == 0 || i2 == 0 || surface == null || (compositionPlayerInternal = this.compositionPlayerInternal) == null) {
            return;
        }
        compositionPlayerInternal.setOutputSurfaceInfo(surface, new Size(i, i2));
    }

    public void maybeUpdatePlaybackError(String str, Exception exc, int i) {
        if (this.playbackException != null) {
            Log.w(TAG, str, exc);
            return;
        }
        this.playbackException = new PlaybackException(str, exc, i);
        for (int i2 = 0; i2 < this.players.size(); i2++) {
            this.players.get(i2).stop();
        }
        updatePlaybackState();
        invalidateState();
    }

    public void onVideoTrackSelection(boolean z, int i) {
        this.videoTracksSelected.put(i, z);
        if (this.videoTracksSelected.size() == ((Composition) Assertions.checkNotNull(this.composition)).sequences.size()) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.videoTracksSelected.size(); i3++) {
                SparseBooleanArray sparseBooleanArray = this.videoTracksSelected;
                if (sparseBooleanArray.get(sparseBooleanArray.keyAt(i3))) {
                    i2++;
                }
            }
            ((PlaybackVideoGraphWrapper) Assertions.checkNotNull(this.playbackVideoGraphWrapper)).setTotalVideoInputCount(i2);
        }
    }

    private void removeSurfaceCallbacks() {
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this);
            this.surfaceHolder = null;
        }
    }

    public void repeatCompositionPlayback() {
        this.repeatingCompositionSeekInProgress = true;
        seekToDefaultPosition();
    }

    private void resetLivePositionSuppliers() {
        this.positionSupplier.disconnect(getContentPositionMs());
        this.bufferedPositionSupplier.disconnect(getBufferedPositionMs());
        this.totalBufferedDurationSupplier.disconnect(getTotalBufferedDurationMs());
        this.positionSupplier = new SimpleBasePlayer.LivePositionSupplier(new qd1(this));
        this.bufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new rd1(this));
        this.totalBufferedDurationSupplier = new SimpleBasePlayer.LivePositionSupplier(new sd1(this));
    }

    private void setCompositionInternal(Composition composition) {
        boolean z;
        this.compositionDurationUs = getCompositionDurationUs(composition);
        HandlerThread handlerThread = new HandlerThread("CompositionPlaybackThread", -16);
        this.playbackThread = handlerThread;
        handlerThread.start();
        PlaybackAudioGraphWrapper playbackAudioGraphWrapper = new PlaybackAudioGraphWrapper(new DefaultAudioMixer.Factory(), composition.effects.audioProcessors, (AudioSink) Assertions.checkNotNull(this.finalAudioSink));
        boolean z2 = false;
        PlaybackVideoGraphWrapper playbackVideoGraphWrapperBuild = new PlaybackVideoGraphWrapper.Builder(this.context, new VideoFrameReleaseControl(this.context, new CompositionFrameTimingEvaluator(), 0L)).setPreviewingVideoGraphFactory((PreviewingVideoGraph.Factory) Assertions.checkNotNull(this.previewingVideoGraphFactory)).setCompositorSettings(composition.videoCompositorSettings).setCompositionEffects(composition.effects.videoEffects).setClock(this.clock).setRequestOpenGlToneMapping(composition.hdrMode == 2).build();
        this.playbackVideoGraphWrapper = playbackVideoGraphWrapperBuild;
        playbackVideoGraphWrapperBuild.addListener(this);
        long sequenceDurationUs = getSequenceDurationUs((EditedMediaItemSequence) Assertions.checkNotNull(composition.sequences.get(0)));
        int i = 0;
        while (i < composition.sequences.size()) {
            EditedMediaItemSequence editedMediaItemSequence = composition.sequences.get(i);
            ExoPlayer.Builder builderExperimentalSetDynamicSchedulingEnabled = new ExoPlayer.Builder(this.context).setLooper(getApplicationLooper()).setPlaybackLooper(this.playbackThread.getLooper()).setRenderersFactory(SequenceRenderersFactory.create(this.context, editedMediaItemSequence, playbackAudioGraphWrapper, this.playbackVideoGraphWrapper.getSink(i), this.imageDecoderFactory, i, composition.hdrMode == 1 ? true : z2, this.videoPrewarmingEnabled)).setHandleAudioBecomingNoisy(true).setClock(this.clock).experimentalSetDynamicSchedulingEnabled(true);
            int i2 = 0;
            while (true) {
                if (i2 >= editedMediaItemSequence.editedMediaItems.size()) {
                    z = false;
                    break;
                } else {
                    if (editedMediaItemSequence.editedMediaItems.get(i2).removeVideo) {
                        z = true;
                        break;
                    }
                    i2++;
                }
            }
            builderExperimentalSetDynamicSchedulingEnabled.setTrackSelector(new CompositionTrackSelector(this.context, i, z));
            ExoPlayer exoPlayerBuild = builderExperimentalSetDynamicSchedulingEnabled.build();
            exoPlayerBuild.addListener(new PlayerListener(i));
            exoPlayerBuild.addAnalyticsListener(new EventLogger());
            exoPlayerBuild.setPauseAtEndOfMediaItems(true);
            if (i == 0) {
                setPrimaryPlayerSequence(exoPlayerBuild, editedMediaItemSequence);
            } else {
                setSecondaryPlayerSequence(exoPlayerBuild, editedMediaItemSequence, sequenceDurationUs);
            }
            this.players.add(exoPlayerBuild);
            if (i == 0) {
                invalidateState();
                this.playlist = createPlaylist();
            }
            i++;
            z2 = false;
        }
        this.compositionPlayerInternal = new CompositionPlayerInternal(this.playbackThread.getLooper(), this.clock, playbackAudioGraphWrapper, this.playbackVideoGraphWrapper, this, this.compositionInternalListenerHandler);
    }

    private void setPrimaryPlayerSequence(ExoPlayer exoPlayer, EditedMediaItemSequence editedMediaItemSequence) {
        ConcatenatingMediaSource2.Builder builder = new ConcatenatingMediaSource2.Builder();
        for (int i = 0; i < editedMediaItemSequence.editedMediaItems.size(); i++) {
            EditedMediaItem editedMediaItem = editedMediaItemSequence.editedMediaItems.get(i);
            Assertions.checkArgument(editedMediaItem.durationUs != C.TIME_UNSET);
            long presentationDurationUs = editedMediaItem.getPresentationDurationUs();
            builder.add(wrapWithVideoEffectsBasedMediaSources(createMediaSourceWithSilence(this.mediaSourceFactory, editedMediaItem), editedMediaItem.effects.videoEffects, presentationDurationUs), Util.usToMs(presentationDurationUs));
        }
        exoPlayer.setMediaSource(builder.build());
    }

    private void setSecondaryPlayerSequence(ExoPlayer exoPlayer, EditedMediaItemSequence editedMediaItemSequence, long j) {
        ConcatenatingMediaSource2.Builder builder = new ConcatenatingMediaSource2.Builder();
        int size = 0;
        if (!editedMediaItemSequence.isLooping) {
            while (size < editedMediaItemSequence.editedMediaItems.size()) {
                EditedMediaItem editedMediaItem = editedMediaItemSequence.editedMediaItems.get(size);
                builder.add(createMediaSourceWithSilence(this.mediaSourceFactory, editedMediaItem), Util.usToMs(editedMediaItem.getPresentationDurationUs()));
                size++;
            }
            exoPlayer.setMediaSource(builder.build());
            return;
        }
        long j2 = 0;
        while (j2 < j) {
            EditedMediaItem editedMediaItem2 = editedMediaItemSequence.editedMediaItems.get(size);
            long presentationDurationUs = editedMediaItem2.getPresentationDurationUs();
            long j3 = j2 + presentationDurationUs;
            if (j3 > j) {
                builder.add(createMediaSourceWithSilence(this.mediaSourceFactory, clipToDuration(editedMediaItem2, j - j2)));
                break;
            } else {
                builder.add(createMediaSourceWithSilence(this.mediaSourceFactory, editedMediaItem2), Util.usToMs(presentationDurationUs));
                size = (size + 1) % editedMediaItemSequence.editedMediaItems.size();
                j2 = j3;
            }
        }
        exoPlayer.setMediaSource(builder.build());
    }

    private void setVideoSurfaceHolderInternal(SurfaceHolder surfaceHolder) {
        removeSurfaceCallbacks();
        this.surfaceHolder = surfaceHolder;
        surfaceHolder.addCallback(this);
        Surface surface = surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            clearVideoSurfaceInternal();
            return;
        }
        Size size = new Size(surfaceHolder.getSurfaceFrame().width(), surfaceHolder.getSurfaceFrame().height());
        this.videoOutputSize = size;
        setVideoSurfaceInternal(surface, size);
    }

    private void setVideoSurfaceInternal(Surface surface, Size size) {
        this.displaySurface = surface;
        maybeSetOutputSurfaceInfo(size.getWidth(), size.getHeight());
    }

    public void updatePlaybackState() {
        if (this.players.isEmpty() || this.playbackException != null) {
            this.playbackState = 1;
            return;
        }
        int i = this.playbackState;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < this.players.size(); i5++) {
            int playbackState = this.players.get(i5).getPlaybackState();
            if (playbackState == 1) {
                i2++;
            } else if (playbackState == 2) {
                i3++;
            } else if (playbackState == 3) {
                continue;
            } else {
                if (playbackState != 4) {
                    throw new IllegalStateException(String.valueOf(playbackState));
                }
                i4++;
            }
        }
        if (i2 > 0) {
            this.playbackState = 1;
            return;
        }
        if (i3 > 0) {
            this.playbackState = 2;
            if (i == 3 && this.playWhenReady) {
                for (int i6 = 0; i6 < this.players.size(); i6++) {
                    this.players.get(i6).setPlayWhenReady(false);
                }
                if (this.isSeeking) {
                    return;
                }
                this.finalAudioSink.pause();
                return;
            }
            return;
        }
        if (i4 == this.players.size()) {
            this.playbackState = 4;
            return;
        }
        this.playbackState = 3;
        this.isSeeking = false;
        if (i == 3 || !this.playWhenReady) {
            return;
        }
        for (int i7 = 0; i7 < this.players.size(); i7++) {
            this.players.get(i7).setPlayWhenReady(true);
        }
        this.finalAudioSink.play();
    }

    private MediaSource wrapWithSpeedChangingMediaSource(MediaSource mediaSource, final SpeedProvider speedProvider, final long j) {
        return new WrappingMediaSource(mediaSource) {
            @Override
            public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j2) {
                return new SpeedProviderMediaPeriod(super.createPeriod(mediaPeriodId, allocator, j2), speedProvider);
            }

            @Override
            public void onChildSourceInfoRefreshed(final Timeline timeline) {
                super.onChildSourceInfoRefreshed(new ForwardingTimeline(timeline) {
                    @Override
                    public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
                        Timeline.Period period2 = timeline.getPeriod(i, period, z);
                        period2.durationUs = j;
                        return period2;
                    }

                    @Override
                    public Timeline.Window getWindow(int i, Timeline.Window window, long j2) {
                        Timeline.Window window2 = timeline.getWindow(i, window, j2);
                        window2.durationUs = j;
                        return window2;
                    }
                });
            }

            @Override
            public void releasePeriod(MediaPeriod mediaPeriod) {
                super.releasePeriod(((SpeedProviderMediaPeriod) mediaPeriod).mediaPeriod);
            }
        };
    }

    private MediaSource wrapWithVideoEffectsBasedMediaSources(MediaSource mediaSource, ImmutableList<Effect> immutableList, long j) {
        dgb it = immutableList.iterator();
        while (it.hasNext()) {
            Effect effect = (Effect) it.next();
            if (effect instanceof InactiveTimestampAdjustment) {
                mediaSource = wrapWithSpeedChangingMediaSource(mediaSource, ((InactiveTimestampAdjustment) effect).speedProvider, j);
            }
        }
        return mediaSource;
    }

    @Override
    public SimpleBasePlayer.State getState() {
        SimpleBasePlayer.State.Builder newlyRenderedFirstFrame = new SimpleBasePlayer.State.Builder().setAvailableCommands(AVAILABLE_COMMANDS).setPlaybackState(this.playbackState).setPlayerError(this.playbackException).setPlayWhenReady(this.playWhenReady, this.playWhenReadyChangeReason).setRepeatMode(this.repeatMode).setVolume(this.volume).setContentPositionMs(this.positionSupplier).setContentBufferedPositionMs(this.bufferedPositionSupplier).setTotalBufferedDurationMs(this.totalBufferedDurationSupplier).setNewlyRenderedFirstFrame(getRenderedFirstFrameAndReset());
        if (this.repeatingCompositionSeekInProgress) {
            newlyRenderedFirstFrame.setPositionDiscontinuity(0, C.TIME_UNSET);
            this.repeatingCompositionSeekInProgress = false;
        }
        ImmutableList<SimpleBasePlayer.MediaItemData> immutableList = this.playlist;
        if (immutableList != null) {
            newlyRenderedFirstFrame.setPlaylist(immutableList);
        }
        return newlyRenderedFirstFrame.build();
    }

    @Override
    public im5 handleClearVideoOutput(@Nullable Object obj) {
        Assertions.checkArgument(Objects.equals(obj, this.videoOutput));
        this.videoOutput = null;
        if (this.composition == null) {
            return Futures.h();
        }
        removeSurfaceCallbacks();
        clearVideoSurfaceInternal();
        return Futures.h();
    }

    @Override
    public im5 handlePrepare() {
        Assertions.checkStateNotNull(this.composition, "No composition set");
        if (this.playbackState != 1) {
            return Futures.h();
        }
        for (int i = 0; i < this.players.size(); i++) {
            this.players.get(i).prepare();
        }
        return Futures.h();
    }

    @Override
    public im5 handleRelease() {
        if (this.composition == null) {
            return Futures.h();
        }
        Assertions.checkState(((HandlerThread) Assertions.checkStateNotNull(this.playbackThread)).isAlive());
        for (int i = 0; i < this.players.size(); i++) {
            this.players.get(i).release();
        }
        ((CompositionPlayerInternal) Assertions.checkStateNotNull(this.compositionPlayerInternal)).release();
        removeSurfaceCallbacks();
        this.compositionInternalListenerHandler.removeCallbacksAndMessages(null);
        this.displaySurface = null;
        ((HandlerThread) Assertions.checkStateNotNull(this.playbackThread)).quitSafely();
        this.applicationHandler.removeCallbacksAndMessages(null);
        return Futures.h();
    }

    @Override
    public im5 handleSeek(int i, long j, int i2) {
        resetLivePositionSuppliers();
        CompositionPlayerInternal compositionPlayerInternal = (CompositionPlayerInternal) Assertions.checkStateNotNull(this.compositionPlayerInternal);
        this.isSeeking = true;
        compositionPlayerInternal.startSeek(j);
        for (int i3 = 0; i3 < this.players.size(); i3++) {
            this.players.get(i3).seekTo(j);
        }
        compositionPlayerInternal.endSeek();
        return Futures.h();
    }

    @Override
    public im5 handleSetPlayWhenReady(boolean z) {
        this.playWhenReady = z;
        this.playWhenReadyChangeReason = 1;
        if (this.playbackState == 3) {
            if (z) {
                this.finalAudioSink.play();
            } else {
                this.finalAudioSink.pause();
            }
            for (int i = 0; i < this.players.size(); i++) {
                this.players.get(i).setPlayWhenReady(z);
            }
        }
        return Futures.h();
    }

    @Override
    public im5 handleSetRepeatMode(int i) {
        Assertions.checkArgument(i != 1);
        this.repeatMode = i;
        return Futures.h();
    }

    @Override
    public im5 handleSetVideoOutput(Object obj) {
        boolean z = obj instanceof SurfaceHolder;
        if (!z && !(obj instanceof SurfaceView)) {
            throw new UnsupportedOperationException(obj.getClass().toString());
        }
        this.videoOutput = obj;
        if (this.composition == null) {
            return Futures.h();
        }
        if (z) {
            setVideoSurfaceHolderInternal((SurfaceHolder) obj);
        } else {
            setVideoSurfaceHolderInternal(((SurfaceView) obj).getHolder());
        }
        return Futures.h();
    }

    @Override
    public im5 handleSetVolume(float f) {
        float fConstrainValue = Util.constrainValue(f, 0.0f, 1.0f);
        this.volume = fConstrainValue;
        this.finalAudioSink.setVolume(fConstrainValue);
        return Futures.h();
    }

    @Override
    public im5 handleStop() {
        for (int i = 0; i < this.players.size(); i++) {
            this.players.get(i).stop();
        }
        return Futures.h();
    }

    @Override
    public void onError(PlaybackVideoGraphWrapper playbackVideoGraphWrapper, final VideoFrameProcessingException videoFrameProcessingException) {
        this.applicationHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onError$1(videoFrameProcessingException);
            }
        });
    }

    @Override
    public void onFirstFrameRendered(PlaybackVideoGraphWrapper playbackVideoGraphWrapper) {
        this.applicationHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onFirstFrameRendered$0();
            }
        });
    }

    @Override
    public void onFrameDropped(PlaybackVideoGraphWrapper playbackVideoGraphWrapper) {
    }

    @Override
    public void onVideoSizeChanged(PlaybackVideoGraphWrapper playbackVideoGraphWrapper, VideoSize videoSize) {
    }

    public void setComposition(Composition composition) {
        verifyApplicationThread();
        Assertions.checkArgument(!composition.sequences.isEmpty());
        Assertions.checkArgument(!composition.hasGaps());
        Assertions.checkState(this.composition == null);
        Composition compositionDeactivateSpeedAdjustingVideoEffects = deactivateSpeedAdjustingVideoEffects(composition);
        if (compositionDeactivateSpeedAdjustingVideoEffects.sequences.size() > 1 && !this.previewingVideoGraphFactory.supportsMultipleInputs()) {
            Log.w(TAG, "Setting multi-sequence Composition with single input video graph.");
        }
        setCompositionInternal(compositionDeactivateSpeedAdjustingVideoEffects);
        Object obj = this.videoOutput;
        if (obj != null) {
            if (obj instanceof SurfaceHolder) {
                setVideoSurfaceHolderInternal((SurfaceHolder) obj);
            } else if (obj instanceof SurfaceView) {
                setVideoSurfaceHolderInternal(((SurfaceView) obj).getHolder());
            } else {
                if (!(obj instanceof Surface)) {
                    throw new IllegalStateException(this.videoOutput.getClass().toString());
                }
                setVideoSurfaceInternal((Surface) obj, (Size) Assertions.checkNotNull(this.videoOutputSize));
            }
        }
        this.composition = compositionDeactivateSpeedAdjustingVideoEffects;
    }

    @VisibleForTesting
    public void setVideoSurface(Surface surface, Size size) {
        this.videoOutput = surface;
        this.videoOutputSize = size;
        setVideoSurfaceInternal(surface, size);
    }

    @Override
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        maybeSetOutputSurfaceInfo(i2, i3);
    }

    @Override
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.videoOutputSize = new Size(surfaceHolder.getSurfaceFrame().width(), surfaceHolder.getSurfaceFrame().height());
        setVideoSurfaceInternal(surfaceHolder.getSurface(), this.videoOutputSize);
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        clearVideoSurfaceInternal();
    }

    private CompositionPlayer(Builder builder) {
        super((Looper) Assertions.checkNotNull(builder.looper), builder.clock);
        this.context = builder.context;
        Clock clock = builder.clock;
        this.clock = clock;
        this.applicationHandler = clock.createHandler(builder.looper, null);
        this.finalAudioSink = (AudioSink) Assertions.checkNotNull(builder.audioSink);
        this.mediaSourceFactory = builder.mediaSourceFactory;
        this.imageDecoderFactory = builder.imageDecoderFactory;
        this.previewingVideoGraphFactory = (PreviewingVideoGraph.Factory) Assertions.checkNotNull(builder.previewingVideoGraphFactory);
        this.videoPrewarmingEnabled = builder.videoPrewarmingEnabled;
        this.compositionInternalListenerHandler = clock.createHandler(builder.looper, null);
        this.videoTracksSelected = new SparseBooleanArray();
        this.players = new ArrayList();
        this.compositionDurationUs = C.TIME_UNSET;
        this.playbackState = 1;
        this.volume = 1.0f;
        this.positionSupplier = new SimpleBasePlayer.LivePositionSupplier(new qd1(this));
        this.bufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new rd1(this));
        this.totalBufferedDurationSupplier = new SimpleBasePlayer.LivePositionSupplier(new sd1(this));
    }

    @Override
    public void onError(String str, Exception exc, int i) {
        maybeUpdatePlaybackError(str, exc, i);
    }
}
