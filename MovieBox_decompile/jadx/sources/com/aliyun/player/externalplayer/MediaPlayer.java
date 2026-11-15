package com.aliyun.player.externalplayer;

import android.content.Context;
import android.media.PlaybackParams;
import android.media.TimedText;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import com.aliyun.player.ApasaraExternalPlayer;
import com.aliyun.player.IPlayer;
import com.aliyun.player.bean.ErrorCode;
import com.aliyun.player.nativeclass.MediaInfo;
import com.aliyun.player.nativeclass.Options;
import com.aliyun.player.nativeclass.TrackInfo;
import com.cicada.player.utils.Logger;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class MediaPlayer extends ApasaraExternalPlayer {
    private static final String PLAYER_NAME = "MediaPlayer";
    private static final String TAG = "MediaPlayer";
    private final int TIMER_WHAT_HALF_SECOND;
    private boolean isMute;
    private float lastVolume;
    private boolean mAutoPlay;
    private long mBufferPosition;
    private Context mContext;
    private Map<String, String> mCustomHeaders;
    private ApasaraExternalPlayer.PlayerStatus mLastPlayerStatus;
    private boolean mLoop;
    private ApasaraExternalPlayer.OnAutoPlayStartListener mOutOnAutoPlayStartListener;
    private ApasaraExternalPlayer.OnBufferPositionUpdateListener mOutOnBufferPositionUpdateListener;
    private ApasaraExternalPlayer.OnCaptureScreenListener mOutOnCaptureScreenListener;
    private ApasaraExternalPlayer.OnCompletionListener mOutOnCompletionListener;
    private ApasaraExternalPlayer.OnDRMCallback mOutOnDRMCallback;
    private ApasaraExternalPlayer.OnErrorListener mOutOnErrorListener;
    private ApasaraExternalPlayer.OnEventListener mOutOnEventListener;
    private ApasaraExternalPlayer.OnFirstFrameRenderListener mOutOnFirstFrameRenderListener;
    private ApasaraExternalPlayer.OnLoadStatusListener mOutOnLoadStatusListener;
    private ApasaraExternalPlayer.OnLoopingStartListener mOutOnLoopingStartListener;
    private ApasaraExternalPlayer.OnPositionUpdateListener mOutOnPositionUpdateListener;
    private ApasaraExternalPlayer.OnPreparedListener mOutOnPreparedListener;
    private ApasaraExternalPlayer.OnSeekStatusListener mOutOnSeekStatusListener;
    private ApasaraExternalPlayer.OnStatusChangedListener mOutOnStatusChangedListener;
    private ApasaraExternalPlayer.OnStreamInfoGetListener mOutOnStreamInfoGetListener;
    private ApasaraExternalPlayer.OnStreamSwitchSucListener mOutOnStreamSwitchSucListener;
    private ApasaraExternalPlayer.OnSubtitleListener mOutOnSubtitleListener;
    private ApasaraExternalPlayer.OnVideoRenderedListener mOutOnVideoRenderedListener;
    private ApasaraExternalPlayer.OnVideoSizeChangedListener mOutOnVideoSizeChangedListener;
    private String mRefer;
    private IPlayer.ScaleMode mScaleMode;
    private boolean mSeekAccurate;
    private long mSeekPos;
    private float mSpeed;
    private android.media.MediaPlayer mSystemMediaPlayer;
    private android.media.MediaPlayer.TrackInfo[] mTrackInfos;
    private String mUrl;
    private String mUserAgent;
    private Handler timer;

    public MediaPlayer() {
        this.TIMER_WHAT_HALF_SECOND = 1000;
        this.mContext = null;
        this.mSystemMediaPlayer = null;
        this.mTrackInfos = null;
        this.timer = null;
        this.mLastPlayerStatus = ApasaraExternalPlayer.PlayerStatus.PLAYER_IDLE;
        this.mUrl = null;
        this.mBufferPosition = 0L;
        this.lastVolume = 1.0f;
        this.mScaleMode = IPlayer.ScaleMode.SCALE_ASPECT_FIT;
        this.isMute = false;
        this.mLoop = false;
        this.mRefer = null;
        this.mUserAgent = null;
        this.mSpeed = 1.0f;
        this.mAutoPlay = false;
        this.mOutOnPreparedListener = null;
        this.mOutOnLoopingStartListener = null;
        this.mOutOnCompletionListener = null;
        this.mOutOnFirstFrameRenderListener = null;
        this.mOutOnLoadStatusListener = null;
        this.mOutOnAutoPlayStartListener = null;
        this.mOutOnSeekStatusListener = null;
        this.mOutOnPositionUpdateListener = null;
        this.mOutOnBufferPositionUpdateListener = null;
        this.mOutOnVideoSizeChangedListener = null;
        this.mOutOnStatusChangedListener = null;
        this.mOutOnVideoRenderedListener = null;
        this.mOutOnErrorListener = null;
        this.mOutOnEventListener = null;
        this.mOutOnStreamInfoGetListener = null;
        this.mOutOnStreamSwitchSucListener = null;
        this.mOutOnCaptureScreenListener = null;
        this.mOutOnSubtitleListener = null;
        this.mOutOnDRMCallback = null;
        this.mSeekPos = -1L;
        this.mSeekAccurate = false;
        this.mCustomHeaders = new HashMap();
    }

    public void changePlayerStatus(ApasaraExternalPlayer.PlayerStatus playerStatus, boolean z10) {
        ApasaraExternalPlayer.OnStatusChangedListener onStatusChangedListener;
        if (this.mLastPlayerStatus != playerStatus) {
            this.mLastPlayerStatus = playerStatus;
            if (z10 && (onStatusChangedListener = this.mOutOnStatusChangedListener) != null) {
                onStatusChangedListener.onStatusChanged(playerStatus.getValue(), playerStatus.getValue());
            }
        }
        sendHalfSecondTimer();
    }

    private TrackInfo convert(android.media.MediaPlayer.TrackInfo trackInfo, int i10) {
        TrackInfo trackInfo2 = new TrackInfo();
        trackInfo2.index = i10;
        int trackType = trackInfo.getTrackType();
        if (trackType == 2) {
            trackInfo2.mType = TrackInfo.Type.TYPE_AUDIO;
        } else if (trackType == 1) {
            trackInfo2.mType = TrackInfo.Type.TYPE_VIDEO;
        } else if (trackType == 4) {
            trackInfo2.mType = TrackInfo.Type.TYPE_SUBTITLE;
        } else {
            trackInfo2.mType = TrackInfo.Type.TYPE_VOD;
        }
        trackInfo2.description = trackInfo.getLanguage();
        return trackInfo2;
    }

    public void notifyStreamGet() {
        if (this.mOutOnStreamInfoGetListener == null || this.mTrackInfos == null) {
            return;
        }
        MediaInfo mediaInfo = new MediaInfo();
        TrackInfo[] trackInfoArr = new TrackInfo[this.mTrackInfos.length];
        int i10 = 0;
        while (true) {
            android.media.MediaPlayer.TrackInfo[] trackInfoArr2 = this.mTrackInfos;
            if (i10 >= trackInfoArr2.length) {
                mediaInfo.setTrackInfos(trackInfoArr);
                mediaInfo.setDuration((int) getDuration());
                this.mOutOnStreamInfoGetListener.OnStreamInfoGet(mediaInfo);
                return;
            }
            trackInfoArr[i10] = convert(trackInfoArr2[i10], i10);
            i10++;
        }
    }

    public void sendHalfSecondTimer() {
        this.timer.removeMessages(1000);
        if (this.mLastPlayerStatus.getValue() < ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED.getValue() || this.mLastPlayerStatus.getValue() > ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED.getValue()) {
            return;
        }
        this.timer.sendEmptyMessageDelayed(1000, 500L);
    }

    private void updateDataSource() {
        if (this.mSystemMediaPlayer == null) {
            return;
        }
        HashMap map = new HashMap();
        String str = this.mRefer;
        if (str != null) {
            map.put("Referer", str);
        }
        String str2 = this.mUserAgent;
        if (str2 != null) {
            map.put("User-Agent", str2);
        }
        map.putAll(this.mCustomHeaders);
        try {
            this.mSystemMediaPlayer.setDataSource(this.mContext, Uri.parse(this.mUrl), map);
        } catch (IOException e10) {
            e10.printStackTrace();
            ApasaraExternalPlayer.OnErrorListener onErrorListener = this.mOutOnErrorListener;
            if (onErrorListener != null) {
                onErrorListener.onError(ErrorCode.ERROR_GENERAL_EIO.getValue(), "set dataSource error :" + e10.getMessage());
            }
        }
    }

    @Override
    public void addCustomHttpHeader(String str) {
        Logger.v("MediaPlayer", "addCustomHttpHeader() " + str);
        if (!TextUtils.isEmpty(str) || str.contains(":")) {
            String[] strArrSplit = str.split(":");
            this.mCustomHeaders.put(strArrSplit[0], strArrSplit[1]);
        }
    }

    @Override
    public void addExtSubtitle(String str) {
        Logger.v("MediaPlayer", "addExtSubtitle() " + str);
    }

    @Override
    public void captureScreen() {
        Logger.v("MediaPlayer", "captureScreen() ");
    }

    @Override
    public ApasaraExternalPlayer create(Context context, Options options) {
        return new MediaPlayer(context, options);
    }

    @Override
    public void enterBackGround(boolean z10) {
        Logger.v("MediaPlayer", "enterBackGround() " + z10);
    }

    @Override
    public long getBufferPosition() {
        Logger.v("MediaPlayer", "getBufferPosition() ");
        return this.mBufferPosition;
    }

    @Override
    public int getCurrentStreamIndex(ApasaraExternalPlayer.StreamType streamType) {
        android.media.MediaPlayer mediaPlayer;
        int i10;
        Logger.v("MediaPlayer", "getCurrentStreamIndex() " + streamType);
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if ((playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return -1;
        }
        if (streamType == ApasaraExternalPlayer.StreamType.ST_TYPE_AUDIO) {
            i10 = 2;
        } else if (streamType == ApasaraExternalPlayer.StreamType.ST_TYPE_VIDEO) {
            i10 = 1;
        } else {
            i10 = streamType == ApasaraExternalPlayer.StreamType.ST_TYPE_SUB ? 4 : 0;
        }
        return mediaPlayer.getSelectedTrack(i10);
    }

    @Override
    public TrackInfo getCurrentStreamInfo(ApasaraExternalPlayer.StreamType streamType) {
        android.media.MediaPlayer.TrackInfo[] trackInfoArr;
        Logger.v("MediaPlayer", "getCurrentStreamInfo() " + streamType);
        int currentStreamIndex = getCurrentStreamIndex(streamType);
        if (currentStreamIndex < 0 || (trackInfoArr = this.mTrackInfos) == null || currentStreamIndex >= trackInfoArr.length) {
            return null;
        }
        return convert(trackInfoArr[currentStreamIndex], currentStreamIndex);
    }

    @Override
    public ApasaraExternalPlayer.DecoderType getDecoderType() {
        Logger.v("MediaPlayer", "getDecoderType() ");
        return ApasaraExternalPlayer.DecoderType.DT_HARDWARE;
    }

    @Override
    public long getDuration() {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "getDuration() ");
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if ((playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) && (mediaPlayer = this.mSystemMediaPlayer) != null) {
            return Math.max(playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR ? mediaPlayer.getDuration() : 0, 0);
        }
        return 0L;
    }

    @Override
    public long getMasterClockPts() {
        Logger.v("MediaPlayer", "getMasterClockPts() ");
        return 0L;
    }

    @Override
    public IPlayer.MirrorMode getMirrorMode() {
        Logger.v("MediaPlayer", "getMirrorMode() ");
        return IPlayer.MirrorMode.MIRROR_MODE_NONE;
    }

    @Override
    public String getName() {
        return "MediaPlayer";
    }

    @Override
    public String getOption(String str) {
        Logger.v("MediaPlayer", "getOption() " + str);
        return null;
    }

    @Override
    public ApasaraExternalPlayer.PlayerStatus getPlayerStatus() {
        Logger.v("MediaPlayer", "getPlayerStatus() ");
        return this.mLastPlayerStatus;
    }

    @Override
    public long getPlayingPosition() {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "getPlayingPosition() ");
        long j10 = this.mSeekPos;
        if (j10 >= 0) {
            return j10;
        }
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if ((playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_IDLE || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_INITIALZED) && (mediaPlayer = this.mSystemMediaPlayer) != null) {
            return mediaPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override
    public long getPropertyInt(ApasaraExternalPlayer.PropertyKey propertyKey) {
        Logger.v("MediaPlayer", "getPropertyInt() " + propertyKey);
        return 0L;
    }

    @Override
    public long getPropertyLong(ApasaraExternalPlayer.PropertyKey propertyKey) {
        Logger.v("MediaPlayer", "getPropertyLong() " + propertyKey);
        return 0L;
    }

    @Override
    public String getPropertyString(ApasaraExternalPlayer.PropertyKey propertyKey) {
        Logger.v("MediaPlayer", "getPropertyString() " + propertyKey);
        return null;
    }

    @Override
    public IPlayer.RotateMode getRotateMode() {
        Logger.v("MediaPlayer", "getRotateMode() ");
        return IPlayer.RotateMode.ROTATE_0;
    }

    @Override
    public IPlayer.ScaleMode getScaleMode() {
        Logger.v("MediaPlayer", "getScaleMode() ");
        return IPlayer.ScaleMode.SCALE_TO_FILL;
    }

    @Override
    public float getSpeed() {
        Logger.v("MediaPlayer", "getSpeed() ");
        return this.mSpeed;
    }

    @Override
    public float getVideoDecodeFps() {
        Logger.v("MediaPlayer", "getVideoDecodeFps() ");
        return 0.0f;
    }

    @Override
    public int getVideoHeight() {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "getVideoHeight() ");
        if (this.mLastPlayerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return 0;
        }
        return mediaPlayer.getVideoHeight();
    }

    @Override
    public float getVideoRenderFps() {
        Logger.v("MediaPlayer", "getVideoRenderFps() ");
        return 0.0f;
    }

    @Override
    public int getVideoRotation() {
        Logger.v("MediaPlayer", "getVideoRotation() ");
        return 0;
    }

    @Override
    public int getVideoWidth() {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "getVideoWidth() ");
        if (this.mLastPlayerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return 0;
        }
        return mediaPlayer.getVideoWidth();
    }

    @Override
    public float getVolume() {
        Logger.v("MediaPlayer", "getVolume() ");
        return this.lastVolume;
    }

    @Override
    public int invokeComponent(String str) {
        Logger.v("MediaPlayer", "invokeComponent() " + str);
        return 0;
    }

    @Override
    public boolean isAutoPlay() {
        Logger.v("MediaPlayer", "isAutoPlay() ");
        return this.mAutoPlay;
    }

    @Override
    public boolean isLooping() {
        Logger.v("MediaPlayer", "isLooping() ");
        android.media.MediaPlayer mediaPlayer = this.mSystemMediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.isLooping();
        }
        return false;
    }

    @Override
    public boolean isMute() {
        Logger.v("MediaPlayer", "isMute() ");
        return this.isMute;
    }

    @Override
    public boolean isSupport(Options options) {
        return options != null && "MediaPlayer".equals(options.get("name"));
    }

    @Override
    public void mute(boolean z10) {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "mute() " + z10);
        this.isMute = z10;
        if (this.mLastPlayerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return;
        }
        if (z10) {
            mediaPlayer.setVolume(0.0f, 0.0f);
        } else {
            float f10 = this.lastVolume;
            mediaPlayer.setVolume(f10, f10);
        }
    }

    @Override
    public void pause() {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "pause() ");
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if ((playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) && (mediaPlayer = this.mSystemMediaPlayer) != null) {
            mediaPlayer.pause();
            changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED, true);
        }
    }

    @Override
    public void prepare() {
        Logger.v("MediaPlayer", "prepare() ");
        android.media.MediaPlayer mediaPlayer = this.mSystemMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            updateDataSource();
            setScaleMode(this.mScaleMode);
            setSpeed(this.mSpeed);
            setLooping(this.mLoop);
            mute(this.isMute);
            setVolume(this.lastVolume);
            changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARING, true);
            this.mSystemMediaPlayer.prepareAsync();
        }
    }

    @Override
    public void reLoad() {
        Logger.v("MediaPlayer", "reLoad() ");
    }

    @Override
    public void release() {
        Logger.v("MediaPlayer", "release() ");
        changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_IDLE, false);
        android.media.MediaPlayer mediaPlayer = this.mSystemMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        this.mSystemMediaPlayer = null;
    }

    @Override
    public void removeAllCustomHttpHeader() {
        Logger.v("MediaPlayer", "removeAllCustomHttpHeader() ");
        this.mCustomHeaders.clear();
    }

    @Override
    public void seekTo(long j10, boolean z10) {
        Logger.v("MediaPlayer", "seekTo() " + j10 + " , accurate = " + z10);
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if (playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) {
            this.mSeekPos = j10;
            this.mSeekAccurate = z10;
            return;
        }
        android.media.MediaPlayer mediaPlayer = this.mSystemMediaPlayer;
        if (mediaPlayer != null) {
            if (Build.VERSION.SDK_INT < 26 || !z10) {
                mediaPlayer.seekTo((int) j10);
            } else {
                mediaPlayer.seekTo(j10, 3);
            }
            ApasaraExternalPlayer.OnSeekStatusListener onSeekStatusListener = this.mOutOnSeekStatusListener;
            if (onSeekStatusListener != null) {
                onSeekStatusListener.onSeekStart(false);
            }
        }
    }

    @Override
    public int selectExtSubtitle(int i10, boolean z10) {
        Logger.v("MediaPlayer", "selectExtSubtitle() " + i10 + " , bSelect = " + z10);
        return 0;
    }

    @Override
    public void setAutoPlay(boolean z10) {
        Logger.v("MediaPlayer", "setAutoPlay() " + z10);
        this.mAutoPlay = z10;
    }

    @Override
    public void setDataSource(String str) {
        Logger.v("MediaPlayer", "setDataSource() " + str);
        this.mUrl = str;
        if (this.mSystemMediaPlayer != null) {
            changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_INITIALZED, true);
        }
    }

    @Override
    public void setDecoderType(ApasaraExternalPlayer.DecoderType decoderType) {
        Logger.v("MediaPlayer", "setDecoderType() " + decoderType);
    }

    @Override
    public void setDrmCallback(ApasaraExternalPlayer.OnDRMCallback onDRMCallback) {
        this.mOutOnDRMCallback = onDRMCallback;
    }

    @Override
    public void setDropBufferThreshold(int i10) {
        Logger.v("MediaPlayer", "setDropBufferThreshold() " + i10);
    }

    @Override
    public void setLooping(boolean z10) {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "setLooping() " + z10);
        this.mLoop = z10;
        if (this.mLastPlayerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return;
        }
        mediaPlayer.setLooping(z10);
    }

    @Override
    public void setMirrorMode(IPlayer.MirrorMode mirrorMode) {
        Logger.v("MediaPlayer", "setMirrorMode() " + mirrorMode);
    }

    @Override
    public void setOnAutoPlayStartListener(ApasaraExternalPlayer.OnAutoPlayStartListener onAutoPlayStartListener) {
        this.mOutOnAutoPlayStartListener = onAutoPlayStartListener;
    }

    @Override
    public void setOnBufferPositionUpdateListener(ApasaraExternalPlayer.OnBufferPositionUpdateListener onBufferPositionUpdateListener) {
        this.mOutOnBufferPositionUpdateListener = onBufferPositionUpdateListener;
    }

    @Override
    public void setOnCaptureScreenListener(ApasaraExternalPlayer.OnCaptureScreenListener onCaptureScreenListener) {
        this.mOutOnCaptureScreenListener = onCaptureScreenListener;
    }

    @Override
    public void setOnCompletionListener(ApasaraExternalPlayer.OnCompletionListener onCompletionListener) {
        this.mOutOnCompletionListener = onCompletionListener;
    }

    @Override
    public void setOnErrorListener(ApasaraExternalPlayer.OnErrorListener onErrorListener) {
        this.mOutOnErrorListener = onErrorListener;
    }

    @Override
    public void setOnEventListener(ApasaraExternalPlayer.OnEventListener onEventListener) {
        this.mOutOnEventListener = onEventListener;
    }

    @Override
    public void setOnFirstFrameRenderListener(ApasaraExternalPlayer.OnFirstFrameRenderListener onFirstFrameRenderListener) {
        this.mOutOnFirstFrameRenderListener = onFirstFrameRenderListener;
    }

    @Override
    public void setOnLoadStatusListener(ApasaraExternalPlayer.OnLoadStatusListener onLoadStatusListener) {
        this.mOutOnLoadStatusListener = onLoadStatusListener;
    }

    @Override
    public void setOnLoopingStartListener(ApasaraExternalPlayer.OnLoopingStartListener onLoopingStartListener) {
        this.mOutOnLoopingStartListener = onLoopingStartListener;
    }

    @Override
    public void setOnPositionUpdateListener(ApasaraExternalPlayer.OnPositionUpdateListener onPositionUpdateListener) {
        this.mOutOnPositionUpdateListener = onPositionUpdateListener;
    }

    @Override
    public void setOnPreparedListener(ApasaraExternalPlayer.OnPreparedListener onPreparedListener) {
        this.mOutOnPreparedListener = onPreparedListener;
    }

    @Override
    public void setOnSeekStatusListener(ApasaraExternalPlayer.OnSeekStatusListener onSeekStatusListener) {
        this.mOutOnSeekStatusListener = onSeekStatusListener;
    }

    @Override
    public void setOnStatusChangedListener(ApasaraExternalPlayer.OnStatusChangedListener onStatusChangedListener) {
        this.mOutOnStatusChangedListener = onStatusChangedListener;
    }

    @Override
    public void setOnStreamInfoGetListener(ApasaraExternalPlayer.OnStreamInfoGetListener onStreamInfoGetListener) {
        this.mOutOnStreamInfoGetListener = onStreamInfoGetListener;
    }

    @Override
    public void setOnStreamSwitchSucListener(ApasaraExternalPlayer.OnStreamSwitchSucListener onStreamSwitchSucListener) {
        this.mOutOnStreamSwitchSucListener = onStreamSwitchSucListener;
    }

    @Override
    public void setOnSubtitleListener(ApasaraExternalPlayer.OnSubtitleListener onSubtitleListener) {
        this.mOutOnSubtitleListener = onSubtitleListener;
    }

    @Override
    public void setOnVideoRenderedListener(ApasaraExternalPlayer.OnVideoRenderedListener onVideoRenderedListener) {
        this.mOutOnVideoRenderedListener = onVideoRenderedListener;
    }

    @Override
    public void setOnVideoSizeChangedListener(ApasaraExternalPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOutOnVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    @Override
    public int setOption(String str, String str2) {
        Logger.v("MediaPlayer", "setOption() " + str + " : " + str2);
        return 0;
    }

    @Override
    public void setRefer(String str) {
        Logger.v("MediaPlayer", "setRefer() " + str);
        this.mRefer = str;
    }

    @Override
    public void setRotateMode(IPlayer.RotateMode rotateMode) {
        Logger.v("MediaPlayer", "setRotateMode() " + rotateMode);
    }

    @Override
    public void setScaleMode(IPlayer.ScaleMode scaleMode) {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "setScaleMode() " + scaleMode);
        this.mScaleMode = scaleMode;
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if (playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_IDLE || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return;
        }
        if (scaleMode == IPlayer.ScaleMode.SCALE_ASPECT_FILL) {
            mediaPlayer.setVideoScalingMode(2);
        } else {
            mediaPlayer.setVideoScalingMode(1);
        }
    }

    @Override
    public void setSpeed(float f10) {
        Logger.v("MediaPlayer", "setSpeed() " + f10);
        this.mSpeed = f10;
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if (playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_IDLE || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED || this.mSystemMediaPlayer == null) {
            return;
        }
        PlaybackParams playbackParams = new PlaybackParams();
        playbackParams.setSpeed(f10);
        this.mSystemMediaPlayer.setPlaybackParams(playbackParams);
    }

    @Override
    public void setSurface(Surface surface) {
        Logger.v("MediaPlayer", "setSurface() " + surface);
        android.media.MediaPlayer mediaPlayer = this.mSystemMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setSurface(surface);
        }
    }

    @Override
    public void setTimeout(int i10) {
        Logger.v("MediaPlayer", "setTimeout() " + i10);
    }

    @Override
    public void setUserAgent(String str) {
        Logger.v("MediaPlayer", "setUserAgent() " + str);
        this.mUserAgent = str;
    }

    @Override
    public void setVideoBackgroundColor(long j10) {
        Logger.v("MediaPlayer", "setVideoBackgroundColor() " + j10);
    }

    @Override
    public void setVolume(float f10) {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "setVolume() " + f10);
        this.lastVolume = f10;
        if (this.mLastPlayerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR || this.isMute || (mediaPlayer = this.mSystemMediaPlayer) == null) {
            return;
        }
        mediaPlayer.setVolume(f10, f10);
    }

    @Override
    public void start() {
        android.media.MediaPlayer mediaPlayer;
        Logger.v("MediaPlayer", "start() ");
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if ((playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED || playerStatus == ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) && (mediaPlayer = this.mSystemMediaPlayer) != null) {
            mediaPlayer.start();
            changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING, true);
        }
    }

    @Override
    public void stop() {
        android.media.MediaPlayer mediaPlayer;
        ApasaraExternalPlayer.PlayerStatus playerStatus;
        Logger.v("MediaPlayer", "stop() ");
        ApasaraExternalPlayer.PlayerStatus playerStatus2 = this.mLastPlayerStatus;
        if ((playerStatus2 != ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED && playerStatus2 != ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING && playerStatus2 != ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED && playerStatus2 != ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED && playerStatus2 != ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) || (mediaPlayer = this.mSystemMediaPlayer) == null || playerStatus2 == (playerStatus = ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED)) {
            return;
        }
        mediaPlayer.stop();
        changePlayerStatus(playerStatus, true);
    }

    @Override
    public ApasaraExternalPlayer.StreamType switchStream(int i10) {
        Logger.v("MediaPlayer", "switchStream() " + i10);
        ApasaraExternalPlayer.PlayerStatus playerStatus = this.mLastPlayerStatus;
        if (playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PLAYING && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_PAUSED && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED && playerStatus != ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION) {
            return ApasaraExternalPlayer.StreamType.ST_TYPE_UNKNOWN;
        }
        android.media.MediaPlayer mediaPlayer = this.mSystemMediaPlayer;
        if (mediaPlayer == null) {
            return ApasaraExternalPlayer.StreamType.ST_TYPE_UNKNOWN;
        }
        mediaPlayer.selectTrack(i10);
        android.media.MediaPlayer.TrackInfo[] trackInfoArr = this.mTrackInfos;
        if (trackInfoArr == null) {
            return ApasaraExternalPlayer.StreamType.ST_TYPE_UNKNOWN;
        }
        int trackType = trackInfoArr[i10].getTrackType();
        if (trackType == 2) {
            return ApasaraExternalPlayer.StreamType.ST_TYPE_AUDIO;
        }
        if (trackType == 4) {
            return ApasaraExternalPlayer.StreamType.ST_TYPE_SUB;
        }
        if (trackType == 1) {
            return ApasaraExternalPlayer.StreamType.ST_TYPE_VIDEO;
        }
        return trackType == 0 ? ApasaraExternalPlayer.StreamType.ST_TYPE_UNKNOWN : ApasaraExternalPlayer.StreamType.ST_TYPE_UNKNOWN;
    }

    private MediaPlayer(Context context, Options options) {
        this.TIMER_WHAT_HALF_SECOND = 1000;
        this.mContext = null;
        this.mSystemMediaPlayer = null;
        this.mTrackInfos = null;
        this.timer = null;
        this.mLastPlayerStatus = ApasaraExternalPlayer.PlayerStatus.PLAYER_IDLE;
        this.mUrl = null;
        this.mBufferPosition = 0L;
        this.lastVolume = 1.0f;
        this.mScaleMode = IPlayer.ScaleMode.SCALE_ASPECT_FIT;
        this.isMute = false;
        this.mLoop = false;
        this.mRefer = null;
        this.mUserAgent = null;
        this.mSpeed = 1.0f;
        this.mAutoPlay = false;
        this.mOutOnPreparedListener = null;
        this.mOutOnLoopingStartListener = null;
        this.mOutOnCompletionListener = null;
        this.mOutOnFirstFrameRenderListener = null;
        this.mOutOnLoadStatusListener = null;
        this.mOutOnAutoPlayStartListener = null;
        this.mOutOnSeekStatusListener = null;
        this.mOutOnPositionUpdateListener = null;
        this.mOutOnBufferPositionUpdateListener = null;
        this.mOutOnVideoSizeChangedListener = null;
        this.mOutOnStatusChangedListener = null;
        this.mOutOnVideoRenderedListener = null;
        this.mOutOnErrorListener = null;
        this.mOutOnEventListener = null;
        this.mOutOnStreamInfoGetListener = null;
        this.mOutOnStreamSwitchSucListener = null;
        this.mOutOnCaptureScreenListener = null;
        this.mOutOnSubtitleListener = null;
        this.mOutOnDRMCallback = null;
        this.mSeekPos = -1L;
        this.mSeekAccurate = false;
        this.mCustomHeaders = new HashMap();
        this.mContext = context;
        Looper looperMyLooper = Looper.myLooper();
        this.timer = new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper) {
            @Override
            public void handleMessage(Message message) {
                if (message.what == 1000) {
                    if (MediaPlayer.this.mLastPlayerStatus.getValue() >= ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED.getValue() && MediaPlayer.this.mLastPlayerStatus.getValue() <= ApasaraExternalPlayer.PlayerStatus.PLAYER_STOPPED.getValue()) {
                        if (MediaPlayer.this.mOutOnBufferPositionUpdateListener != null) {
                            MediaPlayer.this.mOutOnBufferPositionUpdateListener.onBufferPositionUpdate(MediaPlayer.this.getBufferPosition());
                        }
                        if (MediaPlayer.this.mOutOnPositionUpdateListener != null) {
                            MediaPlayer.this.mOutOnPositionUpdateListener.onPositionUpdate(MediaPlayer.this.getPlayingPosition());
                        }
                    }
                    MediaPlayer.this.sendHalfSecondTimer();
                }
                super.handleMessage(message);
            }
        };
        android.media.MediaPlayer mediaPlayer = new android.media.MediaPlayer();
        this.mSystemMediaPlayer = mediaPlayer;
        mediaPlayer.setOnBufferingUpdateListener(new android.media.MediaPlayer.OnBufferingUpdateListener() {
            @Override
            public void onBufferingUpdate(android.media.MediaPlayer mediaPlayer2, int i10) {
                MediaPlayer mediaPlayer3 = MediaPlayer.this;
                mediaPlayer3.mBufferPosition = (long) ((((long) i10) * mediaPlayer3.getDuration()) / 100.0f);
            }
        });
        this.mSystemMediaPlayer.setOnCompletionListener(new android.media.MediaPlayer.OnCompletionListener() {
            @Override
            public void onCompletion(android.media.MediaPlayer mediaPlayer2) {
                if (MediaPlayer.this.mOutOnCompletionListener != null) {
                    MediaPlayer.this.mOutOnCompletionListener.onCompletion();
                }
                MediaPlayer.this.changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_COMPLETION, true);
            }
        });
        this.mSystemMediaPlayer.setOnErrorListener(new android.media.MediaPlayer.OnErrorListener() {
            @Override
            public boolean onError(android.media.MediaPlayer mediaPlayer2, int i10, int i11) {
                if (MediaPlayer.this.mOutOnErrorListener != null) {
                    MediaPlayer.this.mOutOnErrorListener.onError(ErrorCode.ERROR_UNKNOWN.getValue(), "what=" + i10 + ", extra=" + i11);
                }
                MediaPlayer.this.changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_ERROR, true);
                return true;
            }
        });
        this.mSystemMediaPlayer.setOnInfoListener(new android.media.MediaPlayer.OnInfoListener() {
            @Override
            public boolean onInfo(android.media.MediaPlayer mediaPlayer2, int i10, int i11) {
                if (i10 == 702) {
                    if (MediaPlayer.this.mOutOnLoadStatusListener == null) {
                        return false;
                    }
                    MediaPlayer.this.mOutOnLoadStatusListener.onLoadingEnd();
                    return false;
                }
                if (i10 == 701) {
                    if (MediaPlayer.this.mOutOnLoadStatusListener == null) {
                        return false;
                    }
                    MediaPlayer.this.mOutOnLoadStatusListener.onLoadingStart();
                    return false;
                }
                if (i10 != 3 || MediaPlayer.this.mOutOnFirstFrameRenderListener == null) {
                    return false;
                }
                MediaPlayer.this.mOutOnFirstFrameRenderListener.onFirstFrameRender();
                return false;
            }
        });
        this.mSystemMediaPlayer.setOnPreparedListener(new android.media.MediaPlayer.OnPreparedListener() {
            @Override
            public void onPrepared(android.media.MediaPlayer mediaPlayer2) {
                MediaPlayer mediaPlayer3 = MediaPlayer.this;
                mediaPlayer3.mTrackInfos = mediaPlayer3.mSystemMediaPlayer.getTrackInfo();
                MediaPlayer.this.notifyStreamGet();
                if (MediaPlayer.this.mAutoPlay) {
                    if (MediaPlayer.this.mOutOnAutoPlayStartListener != null) {
                        MediaPlayer.this.mOutOnAutoPlayStartListener.onAutoPlayStart();
                    }
                    MediaPlayer.this.changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED, false);
                    MediaPlayer.this.start();
                } else {
                    MediaPlayer.this.changePlayerStatus(ApasaraExternalPlayer.PlayerStatus.PLAYER_PREPARED, true);
                    if (MediaPlayer.this.mOutOnPreparedListener != null) {
                        MediaPlayer.this.mOutOnPreparedListener.onPrepared();
                    }
                }
                if (MediaPlayer.this.mSeekPos >= 0) {
                    MediaPlayer mediaPlayer4 = MediaPlayer.this;
                    mediaPlayer4.seekTo(mediaPlayer4.mSeekPos, MediaPlayer.this.mSeekAccurate);
                    MediaPlayer.this.mSeekPos = -1L;
                }
            }
        });
        this.mSystemMediaPlayer.setOnSeekCompleteListener(new android.media.MediaPlayer.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete(android.media.MediaPlayer mediaPlayer2) {
                if (MediaPlayer.this.mOutOnSeekStatusListener != null) {
                    MediaPlayer.this.mOutOnSeekStatusListener.onSeekEnd(false);
                }
            }
        });
        this.mSystemMediaPlayer.setOnTimedTextListener(new android.media.MediaPlayer.OnTimedTextListener() {
            @Override
            public void onTimedText(android.media.MediaPlayer mediaPlayer2, TimedText timedText) {
            }
        });
        this.mSystemMediaPlayer.setOnVideoSizeChangedListener(new android.media.MediaPlayer.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(android.media.MediaPlayer mediaPlayer2, int i10, int i11) {
                if (MediaPlayer.this.mOutOnVideoSizeChangedListener != null) {
                    MediaPlayer.this.mOutOnVideoSizeChangedListener.onVideoSizeChanged(i10, i11);
                }
            }
        });
    }
}
