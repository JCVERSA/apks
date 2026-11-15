package androidx.media3.exoplayer;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.TrackSelectionArray;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionListener;
import androidx.media3.extractor.ExtractorsFactory;
import java.util.List;

@UnstableApi
@Deprecated
public class SimpleExoPlayer extends BasePlayer implements ExoPlayer {
    private final ConditionVariable constructorFinished;
    private final ExoPlayerImpl player;

    @Deprecated
    public SimpleExoPlayer(Context context, RenderersFactory renderersFactory, TrackSelector trackSelector, MediaSource.Factory factory, LoadControl loadControl, BandwidthMeter bandwidthMeter, AnalyticsCollector analyticsCollector, boolean z, Clock clock, Looper looper) {
        this(new ExoPlayer.Builder(context, renderersFactory, factory, trackSelector, loadControl, bandwidthMeter, analyticsCollector).setUseLazyPreparation(z).setClock(clock).setLooper(looper));
    }

    private void blockUntilConstructorFinished() {
        this.constructorFinished.blockUninterruptible();
    }

    @Override
    public void addAnalyticsListener(AnalyticsListener analyticsListener) {
        blockUntilConstructorFinished();
        this.player.addAnalyticsListener(analyticsListener);
    }

    @Override
    public void addAudioOffloadListener(ExoPlayer.AudioOffloadListener audioOffloadListener) {
        blockUntilConstructorFinished();
        this.player.addAudioOffloadListener(audioOffloadListener);
    }

    @Override
    public void addListener(Player.Listener listener) {
        blockUntilConstructorFinished();
        this.player.addListener(listener);
    }

    @Override
    public void addMediaItems(int i, List<MediaItem> list) {
        blockUntilConstructorFinished();
        this.player.addMediaItems(i, list);
    }

    @Override
    public void addMediaSource(MediaSource mediaSource) {
        blockUntilConstructorFinished();
        this.player.addMediaSource(mediaSource);
    }

    @Override
    public void addMediaSources(List<MediaSource> list) {
        blockUntilConstructorFinished();
        this.player.addMediaSources(list);
    }

    @Override
    public void clearAuxEffectInfo() {
        blockUntilConstructorFinished();
        this.player.clearAuxEffectInfo();
    }

    @Override
    public void clearCameraMotionListener(CameraMotionListener cameraMotionListener) {
        blockUntilConstructorFinished();
        this.player.clearCameraMotionListener(cameraMotionListener);
    }

    @Override
    public void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        blockUntilConstructorFinished();
        this.player.clearVideoFrameMetadataListener(videoFrameMetadataListener);
    }

    @Override
    public void clearVideoSurface() {
        blockUntilConstructorFinished();
        this.player.clearVideoSurface();
    }

    @Override
    public void clearVideoSurfaceHolder(@Nullable SurfaceHolder surfaceHolder) {
        blockUntilConstructorFinished();
        this.player.clearVideoSurfaceHolder(surfaceHolder);
    }

    @Override
    public void clearVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        blockUntilConstructorFinished();
        this.player.clearVideoSurfaceView(surfaceView);
    }

    @Override
    public void clearVideoTextureView(@Nullable TextureView textureView) {
        blockUntilConstructorFinished();
        this.player.clearVideoTextureView(textureView);
    }

    @Override
    public PlayerMessage createMessage(PlayerMessage.Target target) {
        blockUntilConstructorFinished();
        return this.player.createMessage(target);
    }

    @Override
    @Deprecated
    public void decreaseDeviceVolume() {
        blockUntilConstructorFinished();
        this.player.decreaseDeviceVolume();
    }

    @Override
    public AnalyticsCollector getAnalyticsCollector() {
        blockUntilConstructorFinished();
        return this.player.getAnalyticsCollector();
    }

    @Override
    public Looper getApplicationLooper() {
        blockUntilConstructorFinished();
        return this.player.getApplicationLooper();
    }

    @Override
    public AudioAttributes getAudioAttributes() {
        blockUntilConstructorFinished();
        return this.player.getAudioAttributes();
    }

    @Override
    @Nullable
    public DecoderCounters getAudioDecoderCounters() {
        blockUntilConstructorFinished();
        return this.player.getAudioDecoderCounters();
    }

    @Override
    @Nullable
    public Format getAudioFormat() {
        blockUntilConstructorFinished();
        return this.player.getAudioFormat();
    }

    @Override
    public int getAudioSessionId() {
        blockUntilConstructorFinished();
        return this.player.getAudioSessionId();
    }

    @Override
    public Player.Commands getAvailableCommands() {
        blockUntilConstructorFinished();
        return this.player.getAvailableCommands();
    }

    @Override
    public long getBufferedPosition() {
        blockUntilConstructorFinished();
        return this.player.getBufferedPosition();
    }

    @Override
    public Clock getClock() {
        blockUntilConstructorFinished();
        return this.player.getClock();
    }

    @Override
    public long getContentBufferedPosition() {
        blockUntilConstructorFinished();
        return this.player.getContentBufferedPosition();
    }

    @Override
    public long getContentPosition() {
        blockUntilConstructorFinished();
        return this.player.getContentPosition();
    }

    @Override
    public int getCurrentAdGroupIndex() {
        blockUntilConstructorFinished();
        return this.player.getCurrentAdGroupIndex();
    }

    @Override
    public int getCurrentAdIndexInAdGroup() {
        blockUntilConstructorFinished();
        return this.player.getCurrentAdIndexInAdGroup();
    }

    @Override
    public CueGroup getCurrentCues() {
        blockUntilConstructorFinished();
        return this.player.getCurrentCues();
    }

    @Override
    public int getCurrentMediaItemIndex() {
        blockUntilConstructorFinished();
        return this.player.getCurrentMediaItemIndex();
    }

    @Override
    public int getCurrentPeriodIndex() {
        blockUntilConstructorFinished();
        return this.player.getCurrentPeriodIndex();
    }

    @Override
    public long getCurrentPosition() {
        blockUntilConstructorFinished();
        return this.player.getCurrentPosition();
    }

    @Override
    public Timeline getCurrentTimeline() {
        blockUntilConstructorFinished();
        return this.player.getCurrentTimeline();
    }

    @Override
    @Deprecated
    public TrackGroupArray getCurrentTrackGroups() {
        blockUntilConstructorFinished();
        return this.player.getCurrentTrackGroups();
    }

    @Override
    @Deprecated
    public TrackSelectionArray getCurrentTrackSelections() {
        blockUntilConstructorFinished();
        return this.player.getCurrentTrackSelections();
    }

    @Override
    public Tracks getCurrentTracks() {
        blockUntilConstructorFinished();
        return this.player.getCurrentTracks();
    }

    @Override
    public DeviceInfo getDeviceInfo() {
        blockUntilConstructorFinished();
        return this.player.getDeviceInfo();
    }

    @Override
    public int getDeviceVolume() {
        blockUntilConstructorFinished();
        return this.player.getDeviceVolume();
    }

    @Override
    public long getDuration() {
        blockUntilConstructorFinished();
        return this.player.getDuration();
    }

    @Override
    public long getMaxSeekToPreviousPosition() {
        blockUntilConstructorFinished();
        return this.player.getMaxSeekToPreviousPosition();
    }

    @Override
    public MediaMetadata getMediaMetadata() {
        blockUntilConstructorFinished();
        return this.player.getMediaMetadata();
    }

    @Override
    public boolean getPauseAtEndOfMediaItems() {
        blockUntilConstructorFinished();
        return this.player.getPauseAtEndOfMediaItems();
    }

    @Override
    public boolean getPlayWhenReady() {
        blockUntilConstructorFinished();
        return this.player.getPlayWhenReady();
    }

    @Override
    public Looper getPlaybackLooper() {
        blockUntilConstructorFinished();
        return this.player.getPlaybackLooper();
    }

    @Override
    public PlaybackParameters getPlaybackParameters() {
        blockUntilConstructorFinished();
        return this.player.getPlaybackParameters();
    }

    @Override
    public int getPlaybackState() {
        blockUntilConstructorFinished();
        return this.player.getPlaybackState();
    }

    @Override
    public int getPlaybackSuppressionReason() {
        blockUntilConstructorFinished();
        return this.player.getPlaybackSuppressionReason();
    }

    @Override
    public MediaMetadata getPlaylistMetadata() {
        blockUntilConstructorFinished();
        return this.player.getPlaylistMetadata();
    }

    @Override
    public ExoPlayer.PreloadConfiguration getPreloadConfiguration() {
        blockUntilConstructorFinished();
        return this.player.getPreloadConfiguration();
    }

    @Override
    public Renderer getRenderer(int i) {
        blockUntilConstructorFinished();
        return this.player.getRenderer(i);
    }

    @Override
    public int getRendererCount() {
        blockUntilConstructorFinished();
        return this.player.getRendererCount();
    }

    @Override
    public int getRendererType(int i) {
        blockUntilConstructorFinished();
        return this.player.getRendererType(i);
    }

    @Override
    public int getRepeatMode() {
        blockUntilConstructorFinished();
        return this.player.getRepeatMode();
    }

    @Override
    public long getSeekBackIncrement() {
        blockUntilConstructorFinished();
        return this.player.getSeekBackIncrement();
    }

    @Override
    public long getSeekForwardIncrement() {
        blockUntilConstructorFinished();
        return this.player.getSeekForwardIncrement();
    }

    @Override
    public SeekParameters getSeekParameters() {
        blockUntilConstructorFinished();
        return this.player.getSeekParameters();
    }

    @Override
    public boolean getShuffleModeEnabled() {
        blockUntilConstructorFinished();
        return this.player.getShuffleModeEnabled();
    }

    @Override
    public boolean getSkipSilenceEnabled() {
        blockUntilConstructorFinished();
        return this.player.getSkipSilenceEnabled();
    }

    @Override
    public Size getSurfaceSize() {
        blockUntilConstructorFinished();
        return this.player.getSurfaceSize();
    }

    @Override
    public long getTotalBufferedDuration() {
        blockUntilConstructorFinished();
        return this.player.getTotalBufferedDuration();
    }

    @Override
    public TrackSelectionParameters getTrackSelectionParameters() {
        blockUntilConstructorFinished();
        return this.player.getTrackSelectionParameters();
    }

    @Override
    public TrackSelector getTrackSelector() {
        blockUntilConstructorFinished();
        return this.player.getTrackSelector();
    }

    @Override
    public int getVideoChangeFrameRateStrategy() {
        blockUntilConstructorFinished();
        return this.player.getVideoChangeFrameRateStrategy();
    }

    @Override
    @Nullable
    public DecoderCounters getVideoDecoderCounters() {
        blockUntilConstructorFinished();
        return this.player.getVideoDecoderCounters();
    }

    @Override
    @Nullable
    public Format getVideoFormat() {
        blockUntilConstructorFinished();
        return this.player.getVideoFormat();
    }

    @Override
    public int getVideoScalingMode() {
        blockUntilConstructorFinished();
        return this.player.getVideoScalingMode();
    }

    @Override
    public VideoSize getVideoSize() {
        blockUntilConstructorFinished();
        return this.player.getVideoSize();
    }

    @Override
    public float getVolume() {
        blockUntilConstructorFinished();
        return this.player.getVolume();
    }

    @Override
    @Deprecated
    public void increaseDeviceVolume() {
        blockUntilConstructorFinished();
        this.player.increaseDeviceVolume();
    }

    @Override
    public boolean isDeviceMuted() {
        blockUntilConstructorFinished();
        return this.player.isDeviceMuted();
    }

    @Override
    public boolean isLoading() {
        blockUntilConstructorFinished();
        return this.player.isLoading();
    }

    @Override
    public boolean isPlayingAd() {
        blockUntilConstructorFinished();
        return this.player.isPlayingAd();
    }

    @Override
    public boolean isReleased() {
        return this.player.isReleased();
    }

    @Override
    public boolean isSleepingForOffload() {
        blockUntilConstructorFinished();
        return this.player.isSleepingForOffload();
    }

    @Override
    public boolean isTunnelingEnabled() {
        blockUntilConstructorFinished();
        return this.player.isTunnelingEnabled();
    }

    @Override
    public void moveMediaItems(int i, int i2, int i3) {
        blockUntilConstructorFinished();
        this.player.moveMediaItems(i, i2, i3);
    }

    @Override
    public void prepare() {
        blockUntilConstructorFinished();
        this.player.prepare();
    }

    @Override
    public void release() {
        blockUntilConstructorFinished();
        this.player.release();
    }

    @Override
    public void removeAnalyticsListener(AnalyticsListener analyticsListener) {
        blockUntilConstructorFinished();
        this.player.removeAnalyticsListener(analyticsListener);
    }

    @Override
    public void removeAudioOffloadListener(ExoPlayer.AudioOffloadListener audioOffloadListener) {
        blockUntilConstructorFinished();
        this.player.removeAudioOffloadListener(audioOffloadListener);
    }

    @Override
    public void removeListener(Player.Listener listener) {
        blockUntilConstructorFinished();
        this.player.removeListener(listener);
    }

    @Override
    public void removeMediaItems(int i, int i2) {
        blockUntilConstructorFinished();
        this.player.removeMediaItems(i, i2);
    }

    @Override
    public void replaceMediaItems(int i, int i2, List<MediaItem> list) {
        blockUntilConstructorFinished();
        this.player.replaceMediaItems(i, i2, list);
    }

    @Override
    public void seekTo(int i, long j, int i2, boolean z) {
        blockUntilConstructorFinished();
        this.player.seekTo(i, j, i2, z);
    }

    @Override
    public void setAudioAttributes(AudioAttributes audioAttributes, boolean z) {
        blockUntilConstructorFinished();
        this.player.setAudioAttributes(audioAttributes, z);
    }

    @Override
    public void setAudioSessionId(int i) {
        blockUntilConstructorFinished();
        this.player.setAudioSessionId(i);
    }

    @Override
    public void setAuxEffectInfo(AuxEffectInfo auxEffectInfo) {
        blockUntilConstructorFinished();
        this.player.setAuxEffectInfo(auxEffectInfo);
    }

    @Override
    public void setCameraMotionListener(CameraMotionListener cameraMotionListener) {
        blockUntilConstructorFinished();
        this.player.setCameraMotionListener(cameraMotionListener);
    }

    @Override
    @Deprecated
    public void setDeviceMuted(boolean z) {
        blockUntilConstructorFinished();
        this.player.setDeviceMuted(z);
    }

    @Override
    @Deprecated
    public void setDeviceVolume(int i) {
        blockUntilConstructorFinished();
        this.player.setDeviceVolume(i);
    }

    @Override
    public void setForegroundMode(boolean z) {
        blockUntilConstructorFinished();
        this.player.setForegroundMode(z);
    }

    @Override
    public void setHandleAudioBecomingNoisy(boolean z) {
        blockUntilConstructorFinished();
        this.player.setHandleAudioBecomingNoisy(z);
    }

    @Override
    public void setImageOutput(@Nullable ImageOutput imageOutput) {
        blockUntilConstructorFinished();
        this.player.setImageOutput(imageOutput);
    }

    @Override
    public void setMediaItems(List<MediaItem> list, boolean z) {
        blockUntilConstructorFinished();
        this.player.setMediaItems(list, z);
    }

    @Override
    public void setMediaSource(MediaSource mediaSource) {
        blockUntilConstructorFinished();
        this.player.setMediaSource(mediaSource);
    }

    @Override
    public void setMediaSources(List<MediaSource> list) {
        blockUntilConstructorFinished();
        this.player.setMediaSources(list);
    }

    @Override
    public void setPauseAtEndOfMediaItems(boolean z) {
        blockUntilConstructorFinished();
        this.player.setPauseAtEndOfMediaItems(z);
    }

    @Override
    public void setPlayWhenReady(boolean z) {
        blockUntilConstructorFinished();
        this.player.setPlayWhenReady(z);
    }

    @Override
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        blockUntilConstructorFinished();
        this.player.setPlaybackParameters(playbackParameters);
    }

    @Override
    public void setPlaylistMetadata(MediaMetadata mediaMetadata) {
        blockUntilConstructorFinished();
        this.player.setPlaylistMetadata(mediaMetadata);
    }

    @Override
    @RequiresApi(23)
    public void setPreferredAudioDevice(@Nullable AudioDeviceInfo audioDeviceInfo) {
        blockUntilConstructorFinished();
        this.player.setPreferredAudioDevice(audioDeviceInfo);
    }

    @Override
    public void setPreloadConfiguration(ExoPlayer.PreloadConfiguration preloadConfiguration) {
        blockUntilConstructorFinished();
        this.player.setPreloadConfiguration(preloadConfiguration);
    }

    @Override
    public void setPriority(int i) {
        blockUntilConstructorFinished();
        this.player.setPriority(i);
    }

    @Override
    public void setPriorityTaskManager(@Nullable PriorityTaskManager priorityTaskManager) {
        blockUntilConstructorFinished();
        this.player.setPriorityTaskManager(priorityTaskManager);
    }

    @Override
    public void setRepeatMode(int i) {
        blockUntilConstructorFinished();
        this.player.setRepeatMode(i);
    }

    @Override
    public void setSeekParameters(@Nullable SeekParameters seekParameters) {
        blockUntilConstructorFinished();
        this.player.setSeekParameters(seekParameters);
    }

    @Override
    public void setShuffleModeEnabled(boolean z) {
        blockUntilConstructorFinished();
        this.player.setShuffleModeEnabled(z);
    }

    @Override
    public void setShuffleOrder(ShuffleOrder shuffleOrder) {
        blockUntilConstructorFinished();
        this.player.setShuffleOrder(shuffleOrder);
    }

    @Override
    public void setSkipSilenceEnabled(boolean z) {
        blockUntilConstructorFinished();
        this.player.setSkipSilenceEnabled(z);
    }

    public void setThrowsWhenUsingWrongThread(boolean z) {
        blockUntilConstructorFinished();
        this.player.setThrowsWhenUsingWrongThread(z);
    }

    @Override
    public void setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        blockUntilConstructorFinished();
        this.player.setTrackSelectionParameters(trackSelectionParameters);
    }

    @Override
    public void setVideoChangeFrameRateStrategy(int i) {
        blockUntilConstructorFinished();
        this.player.setVideoChangeFrameRateStrategy(i);
    }

    @Override
    public void setVideoEffects(List<Effect> list) {
        blockUntilConstructorFinished();
        this.player.setVideoEffects(list);
    }

    @Override
    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        blockUntilConstructorFinished();
        this.player.setVideoFrameMetadataListener(videoFrameMetadataListener);
    }

    @Override
    public void setVideoScalingMode(int i) {
        blockUntilConstructorFinished();
        this.player.setVideoScalingMode(i);
    }

    @Override
    public void setVideoSurface(@Nullable Surface surface) {
        blockUntilConstructorFinished();
        this.player.setVideoSurface(surface);
    }

    @Override
    public void setVideoSurfaceHolder(@Nullable SurfaceHolder surfaceHolder) {
        blockUntilConstructorFinished();
        this.player.setVideoSurfaceHolder(surfaceHolder);
    }

    @Override
    public void setVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        blockUntilConstructorFinished();
        this.player.setVideoSurfaceView(surfaceView);
    }

    @Override
    public void setVideoTextureView(@Nullable TextureView textureView) {
        blockUntilConstructorFinished();
        this.player.setVideoTextureView(textureView);
    }

    @Override
    public void setVolume(float f) {
        blockUntilConstructorFinished();
        this.player.setVolume(f);
    }

    @Override
    public void setWakeMode(int i) {
        blockUntilConstructorFinished();
        this.player.setWakeMode(i);
    }

    @Override
    public void stop() {
        blockUntilConstructorFinished();
        this.player.stop();
    }

    @Deprecated
    public static final class Builder {
        private final ExoPlayer.Builder wrappedBuilder;

        @Deprecated
        public Builder(Context context) {
            this.wrappedBuilder = new ExoPlayer.Builder(context);
        }

        @Deprecated
        public SimpleExoPlayer build() {
            return this.wrappedBuilder.buildSimpleExoPlayer();
        }

        @Deprecated
        public Builder experimentalSetForegroundModeTimeoutMs(long j) {
            this.wrappedBuilder.experimentalSetForegroundModeTimeoutMs(j);
            return this;
        }

        @Deprecated
        public Builder setAnalyticsCollector(AnalyticsCollector analyticsCollector) {
            this.wrappedBuilder.setAnalyticsCollector(analyticsCollector);
            return this;
        }

        @Deprecated
        public Builder setAudioAttributes(AudioAttributes audioAttributes, boolean z) {
            this.wrappedBuilder.setAudioAttributes(audioAttributes, z);
            return this;
        }

        @Deprecated
        public Builder setBandwidthMeter(BandwidthMeter bandwidthMeter) {
            this.wrappedBuilder.setBandwidthMeter(bandwidthMeter);
            return this;
        }

        @VisibleForTesting
        @Deprecated
        public Builder setClock(Clock clock) {
            this.wrappedBuilder.setClock(clock);
            return this;
        }

        @Deprecated
        public Builder setDetachSurfaceTimeoutMs(long j) {
            this.wrappedBuilder.setDetachSurfaceTimeoutMs(j);
            return this;
        }

        @Deprecated
        public Builder setHandleAudioBecomingNoisy(boolean z) {
            this.wrappedBuilder.setHandleAudioBecomingNoisy(z);
            return this;
        }

        @Deprecated
        public Builder setLivePlaybackSpeedControl(LivePlaybackSpeedControl livePlaybackSpeedControl) {
            this.wrappedBuilder.setLivePlaybackSpeedControl(livePlaybackSpeedControl);
            return this;
        }

        @Deprecated
        public Builder setLoadControl(LoadControl loadControl) {
            this.wrappedBuilder.setLoadControl(loadControl);
            return this;
        }

        @Deprecated
        public Builder setLooper(Looper looper) {
            this.wrappedBuilder.setLooper(looper);
            return this;
        }

        @Deprecated
        public Builder setMediaSourceFactory(MediaSource.Factory factory) {
            this.wrappedBuilder.setMediaSourceFactory(factory);
            return this;
        }

        @Deprecated
        public Builder setPauseAtEndOfMediaItems(boolean z) {
            this.wrappedBuilder.setPauseAtEndOfMediaItems(z);
            return this;
        }

        @Deprecated
        public Builder setPriorityTaskManager(@Nullable PriorityTaskManager priorityTaskManager) {
            this.wrappedBuilder.setPriorityTaskManager(priorityTaskManager);
            return this;
        }

        @Deprecated
        public Builder setReleaseTimeoutMs(long j) {
            this.wrappedBuilder.setReleaseTimeoutMs(j);
            return this;
        }

        @Deprecated
        public Builder setSeekBackIncrementMs(@IntRange(from = 1) long j) {
            this.wrappedBuilder.setSeekBackIncrementMs(j);
            return this;
        }

        @Deprecated
        public Builder setSeekForwardIncrementMs(@IntRange(from = 1) long j) {
            this.wrappedBuilder.setSeekForwardIncrementMs(j);
            return this;
        }

        @Deprecated
        public Builder setSeekParameters(SeekParameters seekParameters) {
            this.wrappedBuilder.setSeekParameters(seekParameters);
            return this;
        }

        @Deprecated
        public Builder setSkipSilenceEnabled(boolean z) {
            this.wrappedBuilder.setSkipSilenceEnabled(z);
            return this;
        }

        @Deprecated
        public Builder setTrackSelector(TrackSelector trackSelector) {
            this.wrappedBuilder.setTrackSelector(trackSelector);
            return this;
        }

        @Deprecated
        public Builder setUseLazyPreparation(boolean z) {
            this.wrappedBuilder.setUseLazyPreparation(z);
            return this;
        }

        @Deprecated
        public Builder setVideoChangeFrameRateStrategy(int i) {
            this.wrappedBuilder.setVideoChangeFrameRateStrategy(i);
            return this;
        }

        @Deprecated
        public Builder setVideoScalingMode(int i) {
            this.wrappedBuilder.setVideoScalingMode(i);
            return this;
        }

        @Deprecated
        public Builder setWakeMode(int i) {
            this.wrappedBuilder.setWakeMode(i);
            return this;
        }

        @Deprecated
        public Builder(Context context, RenderersFactory renderersFactory) {
            this.wrappedBuilder = new ExoPlayer.Builder(context, renderersFactory);
        }

        @Deprecated
        public Builder(Context context, ExtractorsFactory extractorsFactory) {
            this.wrappedBuilder = new ExoPlayer.Builder(context, new DefaultMediaSourceFactory(context, extractorsFactory));
        }

        @Deprecated
        public Builder(Context context, RenderersFactory renderersFactory, ExtractorsFactory extractorsFactory) {
            this.wrappedBuilder = new ExoPlayer.Builder(context, renderersFactory, new DefaultMediaSourceFactory(context, extractorsFactory));
        }

        @Deprecated
        public Builder(Context context, RenderersFactory renderersFactory, TrackSelector trackSelector, MediaSource.Factory factory, LoadControl loadControl, BandwidthMeter bandwidthMeter, AnalyticsCollector analyticsCollector) {
            this.wrappedBuilder = new ExoPlayer.Builder(context, renderersFactory, factory, trackSelector, loadControl, bandwidthMeter, analyticsCollector);
        }
    }

    @Override
    @Nullable
    public ExoPlaybackException getPlayerError() {
        blockUntilConstructorFinished();
        return this.player.getPlayerError();
    }

    @Override
    public void addMediaSource(int i, MediaSource mediaSource) {
        blockUntilConstructorFinished();
        this.player.addMediaSource(i, mediaSource);
    }

    @Override
    public void addMediaSources(int i, List<MediaSource> list) {
        blockUntilConstructorFinished();
        this.player.addMediaSources(i, list);
    }

    @Override
    public void clearVideoSurface(@Nullable Surface surface) {
        blockUntilConstructorFinished();
        this.player.clearVideoSurface(surface);
    }

    @Override
    public void decreaseDeviceVolume(int i) {
        blockUntilConstructorFinished();
        this.player.decreaseDeviceVolume(i);
    }

    @Override
    public void increaseDeviceVolume(int i) {
        blockUntilConstructorFinished();
        this.player.increaseDeviceVolume(i);
    }

    @Override
    @Deprecated
    public void prepare(MediaSource mediaSource) {
        blockUntilConstructorFinished();
        this.player.prepare(mediaSource);
    }

    @Override
    public void setDeviceMuted(boolean z, int i) {
        blockUntilConstructorFinished();
        this.player.setDeviceMuted(z, i);
    }

    @Override
    public void setDeviceVolume(int i, int i2) {
        blockUntilConstructorFinished();
        this.player.setDeviceVolume(i, i2);
    }

    @Override
    public void setMediaItems(List<MediaItem> list, int i, long j) {
        blockUntilConstructorFinished();
        this.player.setMediaItems(list, i, j);
    }

    @Override
    public void setMediaSource(MediaSource mediaSource, boolean z) {
        blockUntilConstructorFinished();
        this.player.setMediaSource(mediaSource, z);
    }

    @Override
    public void setMediaSources(List<MediaSource> list, boolean z) {
        blockUntilConstructorFinished();
        this.player.setMediaSources(list, z);
    }

    @Override
    @Deprecated
    public void prepare(MediaSource mediaSource, boolean z, boolean z2) {
        blockUntilConstructorFinished();
        this.player.prepare(mediaSource, z, z2);
    }

    @Override
    public void setMediaSource(MediaSource mediaSource, long j) {
        blockUntilConstructorFinished();
        this.player.setMediaSource(mediaSource, j);
    }

    @Override
    public void setMediaSources(List<MediaSource> list, int i, long j) {
        blockUntilConstructorFinished();
        this.player.setMediaSources(list, i, j);
    }

    public SimpleExoPlayer(Builder builder) {
        this(builder.wrappedBuilder);
    }

    public SimpleExoPlayer(ExoPlayer.Builder builder) {
        ConditionVariable conditionVariable = new ConditionVariable();
        this.constructorFinished = conditionVariable;
        try {
            this.player = new ExoPlayerImpl(builder, this);
            conditionVariable.open();
        } catch (Throwable th) {
            this.constructorFinished.open();
            throw th;
        }
    }
}
