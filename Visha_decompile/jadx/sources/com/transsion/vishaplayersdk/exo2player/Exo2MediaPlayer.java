package com.transsion.vishaplayersdk.exo2player;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.gsyplayer.base.MediaPlayerImpl;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.ITrackInfo;
import java.io.File;
import java.io.FileDescriptor;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@UnstableApi
public class Exo2MediaPlayer extends MediaPlayerImpl implements Player.Listener, AnalyticsListener {
    public static int ON_POSITION_DISCOUNTINUITY = 2702;
    private static final String TAG = "IjkExo2MediaPlayer";
    protected boolean isLastReportedPlayWhenReady;
    protected Context mAppContext;
    protected File mCacheDir;
    protected String mDataSource;
    protected EventLogger mEventLogger;
    protected ExoSourceManager mExoHelper;
    protected ExoPlayer mInternalPlayer;
    protected LoadControl mLoadControl;
    protected MediaSource mMediaSource;
    private String mOverrideExtension;
    protected DefaultRenderersFactory mRendererFactory;
    protected PlaybackParameters mSpeedPlaybackParameters;
    protected Surface mSurface;
    protected MappingTrackSelector mTrackSelector;
    protected int mVideoHeight;
    protected int mVideoWidth;
    private boolean mbFirstStart;
    protected Map<String, String> mHeaders = new HashMap();
    protected boolean isPreparing = true;
    protected boolean isBuffering = false;
    protected boolean isLooping = false;
    protected boolean isPreview = false;
    protected boolean isCache = false;
    protected int audioSessionId = 0;
    protected int lastReportedPlaybackState = 1;

    public Exo2MediaPlayer(Context context) {
        this.mAppContext = context.getApplicationContext();
        this.mExoHelper = ExoSourceManager.newInstance(context, this.mHeaders);
    }

    private int getVideoRendererIndex() {
        if (this.mInternalPlayer != null) {
            for (int i = 0; i < this.mInternalPlayer.getRendererCount(); i++) {
                if (this.mInternalPlayer.getRendererType(i) == 2) {
                    return i;
                }
            }
        }
        return 0;
    }

    @Override
    public int getAudioSessionId() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        return exoPlayer != null ? exoPlayer.getAudioSessionId() : this.audioSessionId;
    }

    public int getBufferedPercentage() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer == null) {
            return 0;
        }
        return exoPlayer.getBufferedPercentage();
    }

    public File getCacheDir() {
        return this.mCacheDir;
    }

    @Override
    public long getCurrentPosition() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer == null) {
            return 0L;
        }
        return exoPlayer.getCurrentPosition();
    }

    @Override
    public String getDataSource() {
        return this.mDataSource;
    }

    @Override
    public long getDuration() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer == null) {
            return 0L;
        }
        return exoPlayer.getDuration();
    }

    public ExoSourceManager getExoHelper() {
        return this.mExoHelper;
    }

    public LoadControl getLoadControl() {
        return this.mLoadControl;
    }

    public MediaSource getMediaSource() {
        return this.mMediaSource;
    }

    public String getOverrideExtension() {
        return this.mOverrideExtension;
    }

    public DefaultRenderersFactory getRendererFactory() {
        return this.mRendererFactory;
    }

    public float getSpeed() {
        return this.mInternalPlayer.getPlaybackParameters().speed;
    }

    @Override
    public ITrackInfo[] getTrackInfo() {
        return null;
    }

    public MappingTrackSelector getTrackSelector() {
        return this.mTrackSelector;
    }

    public Format getVideoFormat() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            return exoPlayer.getVideoFormat();
        }
        return null;
    }

    @Override
    public int getVideoHeight() {
        return this.mVideoHeight;
    }

    public Renderer getVideoRenderer() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            return exoPlayer.getRenderer(getVideoRendererIndex());
        }
        return null;
    }

    @Override
    public int getVideoSarDen() {
        return 1;
    }

    @Override
    public int getVideoSarNum() {
        return 1;
    }

    @Override
    public int getVideoWidth() {
        return this.mVideoWidth;
    }

    public boolean isCache() {
        return this.isCache;
    }

    @Override
    public boolean isLooping() {
        return this.isLooping;
    }

    @Override
    public boolean isPlayable() {
        return true;
    }

    @Override
    public boolean isPlaying() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer == null) {
            return false;
        }
        int playbackState = exoPlayer.getPlaybackState();
        if (playbackState == 2 || playbackState == 3) {
            return this.mInternalPlayer.getPlayWhenReady();
        }
        return false;
    }

    public boolean isPreview() {
        return this.isPreview;
    }

    @Override
    public void onAudioDisabled(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        this.audioSessionId = 0;
    }

    @Override
    public void onAudioUnderrun(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
    }

    @Override
    public void onBandwidthEstimate(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
    }

    @Override
    public void onCues(List<Cue> list) {
    }

    @Override
    public void onDrmKeysLoaded(AnalyticsListener.EventTime eventTime) {
    }

    @Override
    public void onDrmKeysRemoved(AnalyticsListener.EventTime eventTime) {
    }

    @Override
    public void onDrmKeysRestored(AnalyticsListener.EventTime eventTime) {
    }

    @Override
    public void onDrmSessionManagerError(AnalyticsListener.EventTime eventTime, Exception exc) {
    }

    @Override
    public void onDroppedVideoFrames(AnalyticsListener.EventTime eventTime, int i, long j) {
    }

    @Override
    public void onIsLoadingChanged(AnalyticsListener.EventTime eventTime, boolean z) {
    }

    @Override
    public void onMetadata(Metadata metadata) {
    }

    @Override
    public void onPlayWhenReadyChanged(AnalyticsListener.EventTime eventTime, boolean z, int i) {
    }

    @Override
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
    }

    @Override
    public void onPlaybackStateChanged(int i) {
        onPlayWhenReadyChanged(this.isLastReportedPlayWhenReady, i);
    }

    @Override
    public void onPlayerError(@NonNull PlaybackException playbackException) {
        notifyOnError(playbackException.errorCode, 1);
    }

    @Override
    public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        notifyOnInfo(ON_POSITION_DISCOUNTINUITY, i);
        if (i == 1) {
            notifyOnSeekComplete();
        }
    }

    @Override
    public void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime, Object obj, long j) {
    }

    @Override
    public void onRepeatModeChanged(int i) {
    }

    @Override
    public void onShuffleModeChanged(AnalyticsListener.EventTime eventTime, boolean z) {
    }

    @Override
    public void onShuffleModeEnabledChanged(boolean z) {
    }

    @Override
    public void onTimelineChanged(AnalyticsListener.EventTime eventTime, int i) {
    }

    @Override
    public void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        int i = videoSize.width;
        float f = videoSize.pixelWidthHeightRatio;
        this.mVideoWidth = (int) (i * f);
        int i2 = videoSize.height;
        this.mVideoHeight = i2;
        notifyOnVideoSizeChanged((int) (i * f), i2, 1, 1);
        int i3 = videoSize.unappliedRotationDegrees;
        if (i3 > 0) {
            notifyOnInfo(10001, i3);
        }
    }

    @Override
    public void pause() throws IllegalStateException {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer == null) {
            return;
        }
        exoPlayer.setPlayWhenReady(false);
    }

    @Override
    public void prepareAsync() throws IllegalStateException {
        if (this.mInternalPlayer != null) {
            throw new IllegalStateException("can't prepare a prepared player");
        }
        prepareAsyncInternal();
    }

    public void prepareAsyncInternal() {
        new Handler(Looper.myLooper()).post(new Runnable() {
            @Override
            public void run() {
                Exo2MediaPlayer exo2MediaPlayer = Exo2MediaPlayer.this;
                if (exo2MediaPlayer.mTrackSelector == null) {
                    exo2MediaPlayer.mTrackSelector = new DefaultTrackSelector(Exo2MediaPlayer.this.mAppContext);
                }
                Exo2MediaPlayer.this.mEventLogger = new EventLogger(Exo2MediaPlayer.this.mTrackSelector);
                Exo2MediaPlayer exo2MediaPlayer2 = Exo2MediaPlayer.this;
                if (exo2MediaPlayer2.mRendererFactory == null) {
                    exo2MediaPlayer2.mRendererFactory = new DefaultRenderersFactory(exo2MediaPlayer2.mAppContext);
                    Exo2MediaPlayer.this.mRendererFactory.setExtensionRendererMode(2);
                }
                Exo2MediaPlayer exo2MediaPlayer3 = Exo2MediaPlayer.this;
                if (exo2MediaPlayer3.mLoadControl == null) {
                    exo2MediaPlayer3.mLoadControl = new DefaultLoadControl();
                }
                Exo2MediaPlayer exo2MediaPlayer4 = Exo2MediaPlayer.this;
                exo2MediaPlayer4.mInternalPlayer = new ExoPlayer.Builder(exo2MediaPlayer4.mAppContext, exo2MediaPlayer4.mRendererFactory).setLooper(Looper.myLooper()).setTrackSelector(Exo2MediaPlayer.this.mTrackSelector).setLoadControl(Exo2MediaPlayer.this.mLoadControl).build();
                Exo2MediaPlayer exo2MediaPlayer5 = Exo2MediaPlayer.this;
                exo2MediaPlayer5.mInternalPlayer.addListener(exo2MediaPlayer5);
                Exo2MediaPlayer exo2MediaPlayer6 = Exo2MediaPlayer.this;
                exo2MediaPlayer6.mInternalPlayer.addAnalyticsListener(exo2MediaPlayer6);
                Exo2MediaPlayer exo2MediaPlayer7 = Exo2MediaPlayer.this;
                exo2MediaPlayer7.mInternalPlayer.addListener(exo2MediaPlayer7.mEventLogger);
                Exo2MediaPlayer exo2MediaPlayer8 = Exo2MediaPlayer.this;
                PlaybackParameters playbackParameters = exo2MediaPlayer8.mSpeedPlaybackParameters;
                if (playbackParameters != null) {
                    exo2MediaPlayer8.mInternalPlayer.setPlaybackParameters(playbackParameters);
                }
                Exo2MediaPlayer exo2MediaPlayer9 = Exo2MediaPlayer.this;
                if (exo2MediaPlayer9.isLooping) {
                    exo2MediaPlayer9.mInternalPlayer.setRepeatMode(2);
                }
                Exo2MediaPlayer exo2MediaPlayer10 = Exo2MediaPlayer.this;
                Surface surface = exo2MediaPlayer10.mSurface;
                if (surface != null) {
                    exo2MediaPlayer10.mInternalPlayer.setVideoSurface(surface);
                }
                LogUtils.j(Exo2MediaPlayer.TAG, "exoplayer start play:" + Exo2MediaPlayer.this.mDataSource);
                Exo2MediaPlayer exo2MediaPlayer11 = Exo2MediaPlayer.this;
                exo2MediaPlayer11.mInternalPlayer.setMediaSource(exo2MediaPlayer11.mMediaSource);
                Exo2MediaPlayer.this.mInternalPlayer.prepare();
                Exo2MediaPlayer.this.mInternalPlayer.setPlayWhenReady(false);
            }
        });
    }

    @Override
    public void release() {
        if (this.mInternalPlayer != null) {
            reset();
            this.mEventLogger = null;
        }
    }

    @Override
    public void reset() {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            exoPlayer.release();
            this.mInternalPlayer = null;
        }
        ExoSourceManager exoSourceManager = this.mExoHelper;
        if (exoSourceManager != null) {
            exoSourceManager.release();
        }
        this.mSurface = null;
        this.mDataSource = null;
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
    }

    @Override
    public void seekTo(long j) throws IllegalStateException {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer == null) {
            return;
        }
        exoPlayer.seekTo(j);
    }

    @Override
    public void setAudioStreamType(int i) {
    }

    public void setCache(boolean z) {
        this.isCache = z;
    }

    public void setCacheDir(File file) {
        this.mCacheDir = file;
    }

    @Override
    public void setDataSource(Context context, Uri uri, Map<String, String> map) {
        if (map != null) {
            this.mHeaders.clear();
            this.mHeaders.putAll(map);
        }
        setDataSource(context, uri);
    }

    @Override
    public void setDisplay(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == null) {
            setSurface(null);
        } else {
            setSurface(surfaceHolder.getSurface());
        }
    }

    @Override
    public void setKeepInBackground(boolean z) {
    }

    public void setLoadControl(LoadControl loadControl) {
        this.mLoadControl = loadControl;
    }

    @Override
    public void setLogEnabled(boolean z) {
    }

    @Override
    public void setLooping(boolean z) {
        this.isLooping = z;
    }

    public void setMediaSource(MediaSource mediaSource) {
        this.mMediaSource = mediaSource;
    }

    public void setOverrideExtension(String str) {
        this.mOverrideExtension = str;
    }

    public void setPreview(boolean z) {
        this.isPreview = z;
    }

    public void setRendererFactory(DefaultRenderersFactory defaultRenderersFactory) {
        this.mRendererFactory = defaultRenderersFactory;
    }

    @Override
    public void setScreenOnWhilePlaying(boolean z) {
    }

    public void setSeekParameter(@Nullable SeekParameters seekParameters) {
        this.mInternalPlayer.setSeekParameters(seekParameters);
    }

    public void setSpeed(@Size(min = 0) float f, @Size(min = 0) float f2) {
        PlaybackParameters playbackParameters = new PlaybackParameters(f, f2);
        this.mSpeedPlaybackParameters = playbackParameters;
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            exoPlayer.setPlaybackParameters(playbackParameters);
        }
    }

    @Override
    public void setSurface(Surface surface) {
        this.mSurface = surface;
        if (this.mInternalPlayer != null) {
            if (surface != null && !surface.isValid()) {
                this.mSurface = null;
            }
            this.mInternalPlayer.setVideoSurface(surface);
        }
    }

    public void setTrackSelector(MappingTrackSelector mappingTrackSelector) {
        this.mTrackSelector = mappingTrackSelector;
    }

    @Override
    public void setVolume(float f, float f2) {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer != null) {
            exoPlayer.setVolume((f + f2) / 2.0f);
        }
    }

    @Override
    public void setWakeMode(Context context, int i) {
    }

    @Override
    public void start() throws IllegalStateException {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer == null) {
            return;
        }
        exoPlayer.setPlayWhenReady(true);
        if (this.mbFirstStart) {
            return;
        }
        notifyStartPlay();
        this.mbFirstStart = true;
    }

    @Override
    public void stop() throws IllegalStateException {
        ExoPlayer exoPlayer = this.mInternalPlayer;
        if (exoPlayer == null) {
            return;
        }
        exoPlayer.release();
    }

    public void stopPlayback() {
        this.mInternalPlayer.stop();
    }

    @Override
    public void onIsLoadingChanged(boolean z) {
    }

    @Override
    public void onMetadata(AnalyticsListener.EventTime eventTime, Metadata metadata) {
    }

    @Override
    public void onPlayWhenReadyChanged(boolean z, int i) {
        Log.e(TAG, "onPlayerStateChanged: playWhenReady = " + z + ", playbackState = " + i);
        if (this.isLastReportedPlayWhenReady != z || this.lastReportedPlaybackState != i) {
            ExoPlayer exoPlayer = this.mInternalPlayer;
            int bufferedPercentage = exoPlayer != null ? exoPlayer.getBufferedPercentage() : 0;
            if (this.isBuffering && (i == 3 || i == 4)) {
                notifyOnInfo(702, bufferedPercentage);
                this.isBuffering = false;
            }
            if (this.isPreparing && i == 3) {
                notifyOnPrepared();
                this.isPreparing = false;
            }
            if (i == 2) {
                notifyOnInfo(701, bufferedPercentage);
                this.isBuffering = true;
            } else if (i == 4) {
                notifyOnCompletion();
            }
        }
        this.isLastReportedPlayWhenReady = z;
        this.lastReportedPlaybackState = i;
    }

    @Override
    public void onPlaybackParametersChanged(AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
    }

    @Override
    public void onRepeatModeChanged(AnalyticsListener.EventTime eventTime, int i) {
    }

    @Override
    public void setDataSource(Context context, Uri uri) {
        String string = uri.toString();
        this.mDataSource = string;
        this.mMediaSource = this.mExoHelper.getMediaSource(string, this.isPreview, this.isCache, this.isLooping, this.mCacheDir, this.mOverrideExtension);
    }

    @Override
    public void setDataSource(String str) {
        setDataSource(this.mAppContext, Uri.parse(str));
    }

    @Override
    public void setDataSource(FileDescriptor fileDescriptor) {
        throw new UnsupportedOperationException("no support");
    }
}
