package com.mbridge.msdk.playercommon.exoplayer2;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.media.PlaybackParams;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsCollector;
import com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener;
import com.mbridge.msdk.playercommon.exoplayer2.audio.AudioAttributes;
import com.mbridge.msdk.playercommon.exoplayer2.audio.AudioRendererEventListener;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.DecoderCounters;
import com.mbridge.msdk.playercommon.exoplayer2.drm.DefaultDrmSessionManager;
import com.mbridge.msdk.playercommon.exoplayer2.drm.DrmSessionManager;
import com.mbridge.msdk.playercommon.exoplayer2.drm.FrameworkMediaCrypto;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.MetadataOutput;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.text.Cue;
import com.mbridge.msdk.playercommon.exoplayer2.text.TextOutput;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectionArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelector;
import com.mbridge.msdk.playercommon.exoplayer2.util.Clock;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import com.mbridge.msdk.playercommon.exoplayer2.video.VideoRendererEventListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

@TargetApi(16)
public class SimpleExoPlayer implements ExoPlayer, Player.VideoComponent, Player.TextComponent {
    private static final String TAG = "SimpleExoPlayer";
    private final AnalyticsCollector analyticsCollector;
    private AudioAttributes audioAttributes;
    private final CopyOnWriteArraySet<AudioRendererEventListener> audioDebugListeners;
    private DecoderCounters audioDecoderCounters;
    private Format audioFormat;
    private int audioSessionId;
    private float audioVolume;
    private final ComponentListener componentListener;
    private List<Cue> currentCues;
    private final Handler eventHandler;
    private MediaSource mediaSource;
    private final CopyOnWriteArraySet<MetadataOutput> metadataOutputs;
    private boolean ownsSurface;
    private final ExoPlayer player;
    protected final Renderer[] renderers;
    private Surface surface;
    private SurfaceHolder surfaceHolder;
    private final CopyOnWriteArraySet<TextOutput> textOutputs;
    private TextureView textureView;
    private final CopyOnWriteArraySet<VideoRendererEventListener> videoDebugListeners;
    private DecoderCounters videoDecoderCounters;
    private Format videoFormat;
    private final CopyOnWriteArraySet<com.mbridge.msdk.playercommon.exoplayer2.video.VideoListener> videoListeners;
    private int videoScalingMode;

    private final class ComponentListener implements VideoRendererEventListener, AudioRendererEventListener, TextOutput, MetadataOutput, SurfaceHolder.Callback, TextureView.SurfaceTextureListener {
        private ComponentListener() {
        }

        @Override
        public void onAudioDecoderInitialized(String str, long j10, long j11) {
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AudioRendererEventListener) it.next()).onAudioDecoderInitialized(str, j10, j11);
            }
        }

        @Override
        public void onAudioDisabled(DecoderCounters decoderCounters) {
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AudioRendererEventListener) it.next()).onAudioDisabled(decoderCounters);
            }
            SimpleExoPlayer.this.audioFormat = null;
            SimpleExoPlayer.this.audioDecoderCounters = null;
            SimpleExoPlayer.this.audioSessionId = 0;
        }

        @Override
        public void onAudioEnabled(DecoderCounters decoderCounters) {
            SimpleExoPlayer.this.audioDecoderCounters = decoderCounters;
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AudioRendererEventListener) it.next()).onAudioEnabled(decoderCounters);
            }
        }

        @Override
        public void onAudioInputFormatChanged(Format format) {
            SimpleExoPlayer.this.audioFormat = format;
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AudioRendererEventListener) it.next()).onAudioInputFormatChanged(format);
            }
        }

        @Override
        public void onAudioSessionId(int i10) {
            SimpleExoPlayer.this.audioSessionId = i10;
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AudioRendererEventListener) it.next()).onAudioSessionId(i10);
            }
        }

        @Override
        public void onAudioSinkUnderrun(int i10, long j10, long j11) {
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AudioRendererEventListener) it.next()).onAudioSinkUnderrun(i10, j10, j11);
            }
        }

        @Override
        public void onCues(List<Cue> list) {
            SimpleExoPlayer.this.currentCues = list;
            Iterator it = SimpleExoPlayer.this.textOutputs.iterator();
            while (it.hasNext()) {
                ((TextOutput) it.next()).onCues(list);
            }
        }

        @Override
        public void onDroppedFrames(int i10, long j10) {
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((VideoRendererEventListener) it.next()).onDroppedFrames(i10, j10);
            }
        }

        @Override
        public void onMetadata(Metadata metadata) {
            Iterator it = SimpleExoPlayer.this.metadataOutputs.iterator();
            while (it.hasNext()) {
                ((MetadataOutput) it.next()).onMetadata(metadata);
            }
        }

        @Override
        public void onRenderedFirstFrame(Surface surface) {
            if (SimpleExoPlayer.this.surface == surface) {
                Iterator it = SimpleExoPlayer.this.videoListeners.iterator();
                while (it.hasNext()) {
                    ((com.mbridge.msdk.playercommon.exoplayer2.video.VideoListener) it.next()).onRenderedFirstFrame();
                }
            }
            Iterator it2 = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it2.hasNext()) {
                ((VideoRendererEventListener) it2.next()).onRenderedFirstFrame(surface);
            }
        }

        @Override
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            SimpleExoPlayer.this.setVideoSurfaceInternal(new Surface(surfaceTexture), true);
        }

        @Override
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            SimpleExoPlayer.this.setVideoSurfaceInternal(null, true);
            return true;
        }

        @Override
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
        }

        @Override
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override
        public void onVideoDecoderInitialized(String str, long j10, long j11) {
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((VideoRendererEventListener) it.next()).onVideoDecoderInitialized(str, j10, j11);
            }
        }

        @Override
        public void onVideoDisabled(DecoderCounters decoderCounters) {
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((VideoRendererEventListener) it.next()).onVideoDisabled(decoderCounters);
            }
            SimpleExoPlayer.this.videoFormat = null;
            SimpleExoPlayer.this.videoDecoderCounters = null;
        }

        @Override
        public void onVideoEnabled(DecoderCounters decoderCounters) {
            SimpleExoPlayer.this.videoDecoderCounters = decoderCounters;
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((VideoRendererEventListener) it.next()).onVideoEnabled(decoderCounters);
            }
        }

        @Override
        public void onVideoInputFormatChanged(Format format) {
            SimpleExoPlayer.this.videoFormat = format;
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((VideoRendererEventListener) it.next()).onVideoInputFormatChanged(format);
            }
        }

        @Override
        public void onVideoSizeChanged(int i10, int i11, int i12, float f10) {
            Iterator it = SimpleExoPlayer.this.videoListeners.iterator();
            while (it.hasNext()) {
                ((com.mbridge.msdk.playercommon.exoplayer2.video.VideoListener) it.next()).onVideoSizeChanged(i10, i11, i12, f10);
            }
            Iterator it2 = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it2.hasNext()) {
                ((VideoRendererEventListener) it2.next()).onVideoSizeChanged(i10, i11, i12, f10);
            }
        }

        @Override
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        }

        @Override
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            SimpleExoPlayer.this.setVideoSurfaceInternal(surfaceHolder.getSurface(), false);
        }

        @Override
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            SimpleExoPlayer.this.setVideoSurfaceInternal(null, false);
        }
    }

    @Deprecated
    public interface VideoListener extends com.mbridge.msdk.playercommon.exoplayer2.video.VideoListener {
    }

    protected SimpleExoPlayer(RenderersFactory renderersFactory, TrackSelector trackSelector, LoadControl loadControl, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager) {
        this(renderersFactory, trackSelector, loadControl, drmSessionManager, new AnalyticsCollector.Factory());
    }

    private void removeSurfaceCallbacks() {
        TextureView textureView = this.textureView;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.componentListener) {
                Log.w(TAG, "SurfaceTextureListener already unset or replaced.");
            } else {
                this.textureView.setSurfaceTextureListener(null);
            }
            this.textureView = null;
        }
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.componentListener);
            this.surfaceHolder = null;
        }
    }

    public void setVideoSurfaceInternal(Surface surface, boolean z10) {
        ArrayList arrayList = new ArrayList();
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == 2) {
                arrayList.add(this.player.createMessage(renderer).setType(1).setPayload(surface).send());
            }
        }
        Surface surface2 = this.surface;
        if (surface2 != null && surface2 != surface) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PlayerMessage) it.next()).blockUntilDelivered();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
                this.player.stop(false);
            }
            if (this.ownsSurface) {
                this.surface.release();
            }
        }
        this.surface = surface;
        this.ownsSurface = z10;
    }

    public void addAnalyticsListener(AnalyticsListener analyticsListener) {
        this.analyticsCollector.addListener(analyticsListener);
    }

    @Deprecated
    public void addAudioDebugListener(AudioRendererEventListener audioRendererEventListener) {
        this.audioDebugListeners.add(audioRendererEventListener);
    }

    @Override
    public void addListener(Player.EventListener eventListener) {
        this.player.addListener(eventListener);
    }

    public void addMetadataOutput(MetadataOutput metadataOutput) {
        this.metadataOutputs.add(metadataOutput);
    }

    @Override
    public void addTextOutput(TextOutput textOutput) {
        if (!this.currentCues.isEmpty()) {
            textOutput.onCues(this.currentCues);
        }
        this.textOutputs.add(textOutput);
    }

    @Deprecated
    public void addVideoDebugListener(VideoRendererEventListener videoRendererEventListener) {
        this.videoDebugListeners.add(videoRendererEventListener);
    }

    @Override
    public void addVideoListener(com.mbridge.msdk.playercommon.exoplayer2.video.VideoListener videoListener) {
        this.videoListeners.add(videoListener);
    }

    @Override
    public void blockingSendMessages(ExoPlayer.ExoPlayerMessage... exoPlayerMessageArr) {
        this.player.blockingSendMessages(exoPlayerMessageArr);
    }

    @Deprecated
    public void clearMetadataOutput(MetadataOutput metadataOutput) {
        removeMetadataOutput(metadataOutput);
    }

    @Deprecated
    public void clearTextOutput(TextOutput textOutput) {
        removeTextOutput(textOutput);
    }

    @Deprecated
    public void clearVideoListener(VideoListener videoListener) {
        removeVideoListener(videoListener);
    }

    @Override
    public void clearVideoSurface() {
        setVideoSurface(null);
    }

    @Override
    public void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == null || surfaceHolder != this.surfaceHolder) {
            return;
        }
        setVideoSurfaceHolder(null);
    }

    @Override
    public void clearVideoSurfaceView(SurfaceView surfaceView) {
        clearVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override
    public void clearVideoTextureView(TextureView textureView) {
        if (textureView == null || textureView != this.textureView) {
            return;
        }
        setVideoTextureView(null);
    }

    protected ExoPlayer createExoPlayerImpl(Renderer[] rendererArr, TrackSelector trackSelector, LoadControl loadControl, Clock clock) {
        return new ExoPlayerImpl(rendererArr, trackSelector, loadControl, clock);
    }

    @Override
    public PlayerMessage createMessage(PlayerMessage.Target target) {
        return this.player.createMessage(target);
    }

    public AnalyticsCollector getAnalyticsCollector() {
        return this.analyticsCollector;
    }

    public AudioAttributes getAudioAttributes() {
        return this.audioAttributes;
    }

    public DecoderCounters getAudioDecoderCounters() {
        return this.audioDecoderCounters;
    }

    public Format getAudioFormat() {
        return this.audioFormat;
    }

    public int getAudioSessionId() {
        return this.audioSessionId;
    }

    @Deprecated
    public int getAudioStreamType() {
        return Util.getStreamTypeForAudioUsage(this.audioAttributes.usage);
    }

    @Override
    public int getBufferedPercentage() {
        return this.player.getBufferedPercentage();
    }

    @Override
    public long getBufferedPosition() {
        return this.player.getBufferedPosition();
    }

    @Override
    public long getContentPosition() {
        return this.player.getContentPosition();
    }

    @Override
    public int getCurrentAdGroupIndex() {
        return this.player.getCurrentAdGroupIndex();
    }

    @Override
    public int getCurrentAdIndexInAdGroup() {
        return this.player.getCurrentAdIndexInAdGroup();
    }

    @Override
    public Object getCurrentManifest() {
        return this.player.getCurrentManifest();
    }

    @Override
    public int getCurrentPeriodIndex() {
        return this.player.getCurrentPeriodIndex();
    }

    @Override
    public long getCurrentPosition() {
        return this.player.getCurrentPosition();
    }

    @Override
    @Nullable
    public Object getCurrentTag() {
        return this.player.getCurrentTag();
    }

    @Override
    public Timeline getCurrentTimeline() {
        return this.player.getCurrentTimeline();
    }

    @Override
    public TrackGroupArray getCurrentTrackGroups() {
        return this.player.getCurrentTrackGroups();
    }

    @Override
    public TrackSelectionArray getCurrentTrackSelections() {
        return this.player.getCurrentTrackSelections();
    }

    @Override
    public int getCurrentWindowIndex() {
        return this.player.getCurrentWindowIndex();
    }

    @Override
    public long getDuration() {
        return this.player.getDuration();
    }

    @Override
    public int getNextWindowIndex() {
        return this.player.getNextWindowIndex();
    }

    @Override
    public boolean getPlayWhenReady() {
        return this.player.getPlayWhenReady();
    }

    @Override
    public ExoPlaybackException getPlaybackError() {
        return this.player.getPlaybackError();
    }

    @Override
    public Looper getPlaybackLooper() {
        return this.player.getPlaybackLooper();
    }

    @Override
    public PlaybackParameters getPlaybackParameters() {
        return this.player.getPlaybackParameters();
    }

    @Override
    public int getPlaybackState() {
        return this.player.getPlaybackState();
    }

    @Override
    public int getPreviousWindowIndex() {
        return this.player.getPreviousWindowIndex();
    }

    @Override
    public int getRendererCount() {
        return this.player.getRendererCount();
    }

    @Override
    public int getRendererType(int i10) {
        return this.player.getRendererType(i10);
    }

    @Override
    public int getRepeatMode() {
        return this.player.getRepeatMode();
    }

    @Override
    public boolean getShuffleModeEnabled() {
        return this.player.getShuffleModeEnabled();
    }

    @Override
    public Player.TextComponent getTextComponent() {
        return this;
    }

    @Override
    public Player.VideoComponent getVideoComponent() {
        return this;
    }

    public DecoderCounters getVideoDecoderCounters() {
        return this.videoDecoderCounters;
    }

    public Format getVideoFormat() {
        return this.videoFormat;
    }

    @Override
    public int getVideoScalingMode() {
        return this.videoScalingMode;
    }

    public float getVolume() {
        return this.audioVolume;
    }

    @Override
    public boolean isCurrentWindowDynamic() {
        return this.player.isCurrentWindowDynamic();
    }

    @Override
    public boolean isCurrentWindowSeekable() {
        return this.player.isCurrentWindowSeekable();
    }

    @Override
    public boolean isLoading() {
        return this.player.isLoading();
    }

    public final boolean isPlaying() {
        return getPlaybackState() == 3 && getPlayWhenReady();
    }

    @Override
    public boolean isPlayingAd() {
        return this.player.isPlayingAd();
    }

    @Override
    public void prepare(MediaSource mediaSource) {
        prepare(mediaSource, true, true);
    }

    @Override
    public void release() {
        this.player.release();
        removeSurfaceCallbacks();
        Surface surface = this.surface;
        if (surface != null) {
            if (this.ownsSurface) {
                surface.release();
            }
            this.surface = null;
        }
        MediaSource mediaSource = this.mediaSource;
        if (mediaSource != null) {
            mediaSource.removeEventListener(this.analyticsCollector);
        }
        this.currentCues = Collections.emptyList();
    }

    public void removeAnalyticsListener(AnalyticsListener analyticsListener) {
        this.analyticsCollector.removeListener(analyticsListener);
    }

    @Deprecated
    public void removeAudioDebugListener(AudioRendererEventListener audioRendererEventListener) {
        this.audioDebugListeners.remove(audioRendererEventListener);
    }

    @Override
    public void removeListener(Player.EventListener eventListener) {
        this.player.removeListener(eventListener);
    }

    public void removeMetadataOutput(MetadataOutput metadataOutput) {
        this.metadataOutputs.remove(metadataOutput);
    }

    @Override
    public void removeTextOutput(TextOutput textOutput) {
        this.textOutputs.remove(textOutput);
    }

    @Deprecated
    public void removeVideoDebugListener(VideoRendererEventListener videoRendererEventListener) {
        this.videoDebugListeners.remove(videoRendererEventListener);
    }

    @Override
    public void removeVideoListener(com.mbridge.msdk.playercommon.exoplayer2.video.VideoListener videoListener) {
        this.videoListeners.remove(videoListener);
    }

    @Override
    public void seekTo(long j10) {
        this.analyticsCollector.notifySeekStarted();
        this.player.seekTo(j10);
    }

    @Override
    public void seekToDefaultPosition() {
        this.analyticsCollector.notifySeekStarted();
        this.player.seekToDefaultPosition();
    }

    @Override
    public void sendMessages(ExoPlayer.ExoPlayerMessage... exoPlayerMessageArr) {
        this.player.sendMessages(exoPlayerMessageArr);
    }

    public void setAudioAttributes(AudioAttributes audioAttributes) {
        this.audioAttributes = audioAttributes;
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == 1) {
                this.player.createMessage(renderer).setType(3).setPayload(audioAttributes).send();
            }
        }
    }

    @Deprecated
    public void setAudioDebugListener(AudioRendererEventListener audioRendererEventListener) {
        this.audioDebugListeners.retainAll(Collections.singleton(this.analyticsCollector));
        if (audioRendererEventListener != null) {
            addAudioDebugListener(audioRendererEventListener);
        }
    }

    @Deprecated
    public void setAudioStreamType(int i10) {
        int audioUsageForStreamType = Util.getAudioUsageForStreamType(i10);
        setAudioAttributes(new AudioAttributes.Builder().setUsage(audioUsageForStreamType).setContentType(Util.getAudioContentTypeForStreamType(i10)).build());
    }

    @Deprecated
    public void setMetadataOutput(MetadataOutput metadataOutput) {
        this.metadataOutputs.retainAll(Collections.singleton(this.analyticsCollector));
        if (metadataOutput != null) {
            addMetadataOutput(metadataOutput);
        }
    }

    @Override
    public void setPlayWhenReady(boolean z10) {
        this.player.setPlayWhenReady(z10);
    }

    @Override
    public void setPlaybackParameters(@Nullable PlaybackParameters playbackParameters) {
        this.player.setPlaybackParameters(playbackParameters);
    }

    @TargetApi(23)
    @Deprecated
    public void setPlaybackParams(@Nullable PlaybackParams playbackParams) {
        PlaybackParameters playbackParameters;
        if (playbackParams != null) {
            playbackParams.allowDefaults();
            playbackParameters = new PlaybackParameters(playbackParams.getSpeed(), playbackParams.getPitch());
        } else {
            playbackParameters = null;
        }
        setPlaybackParameters(playbackParameters);
    }

    @Override
    public void setRepeatMode(int i10) {
        this.player.setRepeatMode(i10);
    }

    @Override
    public void setSeekParameters(@Nullable SeekParameters seekParameters) {
        this.player.setSeekParameters(seekParameters);
    }

    @Override
    public void setShuffleModeEnabled(boolean z10) {
        this.player.setShuffleModeEnabled(z10);
    }

    @Deprecated
    public void setTextOutput(TextOutput textOutput) {
        this.textOutputs.clear();
        if (textOutput != null) {
            addTextOutput(textOutput);
        }
    }

    @Deprecated
    public void setVideoDebugListener(VideoRendererEventListener videoRendererEventListener) {
        this.videoDebugListeners.retainAll(Collections.singleton(this.analyticsCollector));
        if (videoRendererEventListener != null) {
            addVideoDebugListener(videoRendererEventListener);
        }
    }

    @Deprecated
    public void setVideoListener(VideoListener videoListener) {
        this.videoListeners.clear();
        if (videoListener != null) {
            addVideoListener(videoListener);
        }
    }

    @Override
    public void setVideoScalingMode(int i10) {
        this.videoScalingMode = i10;
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == 2) {
                this.player.createMessage(renderer).setType(4).setPayload(Integer.valueOf(i10)).send();
            }
        }
    }

    @Override
    public void setVideoSurface(Surface surface) {
        removeSurfaceCallbacks();
        setVideoSurfaceInternal(surface, false);
    }

    @Override
    public void setVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        removeSurfaceCallbacks();
        this.surfaceHolder = surfaceHolder;
        Surface surface = null;
        if (surfaceHolder == null) {
            setVideoSurfaceInternal(null, false);
            return;
        }
        surfaceHolder.addCallback(this.componentListener);
        Surface surface2 = surfaceHolder.getSurface();
        if (surface2 != null && surface2.isValid()) {
            surface = surface2;
        }
        setVideoSurfaceInternal(surface, false);
    }

    @Override
    public void setVideoSurfaceView(SurfaceView surfaceView) {
        setVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override
    public void setVideoTextureView(TextureView textureView) {
        removeSurfaceCallbacks();
        this.textureView = textureView;
        if (textureView == null) {
            setVideoSurfaceInternal(null, true);
            return;
        }
        if (textureView.getSurfaceTextureListener() != null) {
            Log.w(TAG, "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.componentListener);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        setVideoSurfaceInternal(surfaceTexture != null ? new Surface(surfaceTexture) : null, true);
    }

    public void setVolume(float f10) {
        this.audioVolume = f10;
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == 1) {
                this.player.createMessage(renderer).setType(2).setPayload(Float.valueOf(f10)).send();
            }
        }
    }

    @Override
    public void stop() {
        stop(false);
    }

    protected SimpleExoPlayer(RenderersFactory renderersFactory, TrackSelector trackSelector, LoadControl loadControl, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, AnalyticsCollector.Factory factory) {
        this(renderersFactory, trackSelector, loadControl, drmSessionManager, factory, Clock.DEFAULT);
    }

    @Override
    public void clearVideoSurface(Surface surface) {
        if (surface == null || surface != this.surface) {
            return;
        }
        setVideoSurface(null);
    }

    @Override
    public void prepare(MediaSource mediaSource, boolean z10, boolean z11) {
        MediaSource mediaSource2 = this.mediaSource;
        if (mediaSource2 != mediaSource) {
            if (mediaSource2 != null) {
                mediaSource2.removeEventListener(this.analyticsCollector);
                this.analyticsCollector.resetForNewMediaSource();
            }
            mediaSource.addEventListener(this.eventHandler, this.analyticsCollector);
            this.mediaSource = mediaSource;
        }
        this.player.prepare(mediaSource, z10, z11);
    }

    @Override
    public void stop(boolean z10) {
        this.player.stop(z10);
        MediaSource mediaSource = this.mediaSource;
        if (mediaSource != null) {
            mediaSource.removeEventListener(this.analyticsCollector);
            this.mediaSource = null;
            this.analyticsCollector.resetForNewMediaSource();
        }
        this.currentCues = Collections.emptyList();
    }

    protected SimpleExoPlayer(RenderersFactory renderersFactory, TrackSelector trackSelector, LoadControl loadControl, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, AnalyticsCollector.Factory factory, Clock clock) {
        ComponentListener componentListener = new ComponentListener();
        this.componentListener = componentListener;
        this.videoListeners = new CopyOnWriteArraySet<>();
        this.textOutputs = new CopyOnWriteArraySet<>();
        this.metadataOutputs = new CopyOnWriteArraySet<>();
        CopyOnWriteArraySet<VideoRendererEventListener> copyOnWriteArraySet = new CopyOnWriteArraySet<>();
        this.videoDebugListeners = copyOnWriteArraySet;
        CopyOnWriteArraySet<AudioRendererEventListener> copyOnWriteArraySet2 = new CopyOnWriteArraySet<>();
        this.audioDebugListeners = copyOnWriteArraySet2;
        Handler handler = new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.eventHandler = handler;
        Renderer[] rendererArrCreateRenderers = renderersFactory.createRenderers(handler, componentListener, componentListener, componentListener, componentListener, drmSessionManager);
        this.renderers = rendererArrCreateRenderers;
        this.audioVolume = 1.0f;
        this.audioSessionId = 0;
        this.audioAttributes = AudioAttributes.DEFAULT;
        this.videoScalingMode = 1;
        this.currentCues = Collections.emptyList();
        ExoPlayer exoPlayerCreateExoPlayerImpl = createExoPlayerImpl(rendererArrCreateRenderers, trackSelector, loadControl, clock);
        this.player = exoPlayerCreateExoPlayerImpl;
        AnalyticsCollector analyticsCollectorCreateAnalyticsCollector = factory.createAnalyticsCollector(exoPlayerCreateExoPlayerImpl, clock);
        this.analyticsCollector = analyticsCollectorCreateAnalyticsCollector;
        addListener(analyticsCollectorCreateAnalyticsCollector);
        copyOnWriteArraySet.add(analyticsCollectorCreateAnalyticsCollector);
        copyOnWriteArraySet2.add(analyticsCollectorCreateAnalyticsCollector);
        addMetadataOutput(analyticsCollectorCreateAnalyticsCollector);
        if (drmSessionManager instanceof DefaultDrmSessionManager) {
            ((DefaultDrmSessionManager) drmSessionManager).addListener(handler, analyticsCollectorCreateAnalyticsCollector);
        }
    }

    @Override
    public void seekTo(int i10, long j10) {
        this.analyticsCollector.notifySeekStarted();
        this.player.seekTo(i10, j10);
    }

    @Override
    public void seekToDefaultPosition(int i10) {
        this.analyticsCollector.notifySeekStarted();
        this.player.seekToDefaultPosition(i10);
    }
}
