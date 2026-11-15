package com.hunantv.media.audio;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.MgtvPlayerListener;
import com.hunantv.media.player.loader.c;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.statistic.FlowDataStatistic;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.widget.IVideoView;
import com.transsion.dbdata.beans.media.PlayAudioData;
import java.io.IOException;
import java.text.NumberFormat;

public class MgtvAudioPlayer {
    private static final int STATE_ERROR = -1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_PAUSED = 4;
    private static final int STATE_PLAYBACK_COMPLETED = 5;
    private static final int STATE_PLAYING = 3;
    private static final int STATE_PREPARED = 2;
    private static final int STATE_PREPARING = 1;
    private boolean mAutoPlay;
    int mBufferTimeoutMs;
    int mConnectTimeOut;
    private Context mContext;
    private int mCurrentState;
    private Uri mCurrentUri;
    private boolean mEnableLiveMode;
    private String mErrorMsg;
    FlowDataStatistic mFlowDataStatistic;
    float mLeftVolume;
    private int mLiveStartIndex;
    private MgtvMediaPlayer mMediaPlayer;
    private MgtvPlayerListener.OnCompletionListener mOnCompletionListener;
    private MgtvPlayerListener.OnErrorListener mOnErrorListener;
    private MgtvPlayerListener.OnInfoListener mOnInfoListener;
    private MgtvPlayerListener.OnPauseListener mOnPauseListener;
    private MgtvPlayerListener.OnPreparedListener mOnPreparedListener;
    private MgtvPlayerListener.OnStartListener mOnStartListener;
    int mReciveDataTimeOut;
    ReportParams mReportParams;
    float mRightVolume;
    private int mSeekWhenPrepared;
    private int mTargetState;

    public MgtvAudioPlayer(Context context) {
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mCurrentUri = null;
        this.mAutoPlay = false;
        this.mErrorMsg = "";
        this.mLeftVolume = -1.0f;
        this.mRightVolume = -1.0f;
        this.mFlowDataStatistic = new FlowDataStatistic();
        this.mEnableLiveMode = false;
        this.mLiveStartIndex = 0;
        this.mContext = context;
        if (context == null || !(context instanceof Activity)) {
            return;
        }
        ((Activity) context).setVolumeControlStream(3);
    }

    private void configPlayer() {
        MgtvMediaPlayer mgtvMediaPlayer;
        MgtvMediaPlayer.PlayerModeType playerModeType;
        MgtvMediaPlayer mgtvMediaPlayer2 = this.mMediaPlayer;
        if (mgtvMediaPlayer2 == null) {
            return;
        }
        mgtvMediaPlayer2.setTimeout(this.mConnectTimeOut, this.mReciveDataTimeOut, this.mBufferTimeoutMs);
        this.mMediaPlayer.setReportParams(this.mReportParams);
        float f = this.mLeftVolume;
        if (f >= 0.0f) {
            float f2 = this.mRightVolume;
            if (f2 >= 0.0f) {
                this.mMediaPlayer.setVolume(f, f2);
            }
        }
        this.mMediaPlayer.setFlowDataStatistic(this.mFlowDataStatistic);
        if (this.mEnableLiveMode) {
            mgtvMediaPlayer = this.mMediaPlayer;
            playerModeType = MgtvMediaPlayer.PlayerModeType.TYPE_PLAYER_MODE_LIVE;
        } else {
            mgtvMediaPlayer = this.mMediaPlayer;
            playerModeType = MgtvMediaPlayer.PlayerModeType.TYPE_PLAYER_MODE_NORMAL;
        }
        mgtvMediaPlayer.setEnablePlayerMode(playerModeType);
        this.mMediaPlayer.setLiveStartIndex(this.mLiveStartIndex);
        DebugLog.i(getLogTag(), "configPlayer mEnableLiveMode:" + this.mEnableLiveMode + ",mLiveStartIndex:" + this.mLiveStartIndex);
        FlowDataStatistic flowDataStatistic = this.mFlowDataStatistic;
        if (flowDataStatistic != null) {
            flowDataStatistic.setLogTag(getLogTag());
        }
    }

    private String getLogTag() {
        return getClass().getName() + "@" + hashCode();
    }

    private boolean isInPlaybackState() {
        int i = this.mCurrentState;
        return (i == -1 || i == 0 || i == 1) ? false : true;
    }

    public boolean onBufferingTimeoutImpl(int i, int i2) {
        onErrorImpl(i, i2);
        return true;
    }

    public void onCompletionImpl(int i, int i2) {
        DebugLog.w(getLogTag(), "onCompletion what:" + i + ",extra:" + i2);
        this.mCurrentState = 5;
        this.mTargetState = 5;
        MgtvPlayerListener.OnCompletionListener onCompletionListener = this.mOnCompletionListener;
        if (onCompletionListener != null) {
            onCompletionListener.onCompletion(i, i2);
        }
    }

    public boolean onErrorImpl(int i, int i2) {
        DebugLog.w(getLogTag(), "onErrorImpl what:" + i + ",extra:" + i2);
        this.mCurrentState = -1;
        this.mTargetState = -1;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.stop();
        }
        MgtvPlayerListener.OnErrorListener onErrorListener = this.mOnErrorListener;
        return onErrorListener != null && onErrorListener.onError(i, i2);
    }

    public boolean onInfoImpl(int i, int i2) {
        MgtvPlayerListener.OnInfoListener onInfoListener = this.mOnInfoListener;
        if (onInfoListener != null) {
            return onInfoListener.onInfo(i, i2);
        }
        return true;
    }

    public void onPreparedImpl() {
        this.mCurrentState = 2;
        if (this.mAutoPlay || this.mTargetState == 3) {
            play();
        }
        int i = this.mSeekWhenPrepared;
        if (i > 0) {
            seekTo(i);
        }
        MgtvPlayerListener.OnPreparedListener onPreparedListener = this.mOnPreparedListener;
        if (onPreparedListener != null) {
            onPreparedListener.onPrepared();
        }
    }

    private void openPlayer() {
        if (this.mMediaPlayer != null) {
            reset();
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("BUNDLE_KEY_LOG_TAG_KEY", getLogTagKey());
        bundle.putBoolean("BUNDLE_KEY_BOOLEAN_AUDIO_MODE", true);
        MgtvMediaPlayer mgtvMediaPlayer = new MgtvMediaPlayer(1, this.mContext, bundle);
        this.mMediaPlayer = mgtvMediaPlayer;
        mgtvMediaPlayer.setConfig(201507067, 1);
        this.mMediaPlayer.setOnPreparedListener(new MgtvPlayerListener.OnPreparedListener() {
            @Override
            public void onPrepared() {
                MgtvAudioPlayer.this.onPreparedImpl();
            }
        });
        this.mMediaPlayer.setOnErrorListener(new MgtvPlayerListener.OnErrorListener() {
            @Override
            public boolean onError(int i, int i2) {
                return MgtvAudioPlayer.this.onErrorImpl(i, i2);
            }
        });
        this.mMediaPlayer.setOnCompletionListener(new MgtvPlayerListener.OnCompletionListener() {
            @Override
            public void onCompletion(int i, int i2) {
                MgtvAudioPlayer.this.onCompletionImpl(i, i2);
            }
        });
        this.mMediaPlayer.setOnInfoListener(new MgtvPlayerListener.OnInfoListener() {
            @Override
            public boolean onInfo(int i, int i2) {
                return MgtvAudioPlayer.this.onInfoImpl(i, i2);
            }
        });
        this.mMediaPlayer.setOnBufferingTimeoutListener(new MgtvPlayerListener.OnBufferingTimeoutListener() {
            @Override
            public boolean onBufferingTimeout(int i, int i2) {
                return MgtvAudioPlayer.this.onBufferingTimeoutImpl(i, i2);
            }
        });
    }

    private void resetData() {
        this.mSeekWhenPrepared = 0;
        FlowDataStatistic flowDataStatistic = this.mFlowDataStatistic;
        if (flowDataStatistic == null || !flowDataStatistic.isBindPlayerLifecycle()) {
            return;
        }
        this.mFlowDataStatistic.reset();
    }

    public int getBufferingPercentage() {
        if (isInPlaybackState()) {
            return this.mMediaPlayer.getBufferingPercent();
        }
        return 0;
    }

    public int getCurrentPosition() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    public int getCurrentStatus() {
        return this.mCurrentState;
    }

    public int getDLSpeedB() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getCurDLSpeed();
        }
        return 0;
    }

    public String getDLSpeedFormat() {
        NumberFormat numberInstance = NumberFormat.getNumberInstance();
        numberInstance.setMaximumFractionDigits(1);
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        return numberInstance.format(mgtvMediaPlayer != null ? mgtvMediaPlayer.getCurDLSpeed() / 1000.0f : 0.0f) + "KB/S";
    }

    public int getDuration() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getDuration();
        }
        return 0;
    }

    public String getErrorMsg() {
        return this.mErrorMsg;
    }

    public FlowDataStatistic getFlowDataStatistic() {
        return this.mFlowDataStatistic;
    }

    public String getLogTagKey() {
        return getClass().getSimpleName() + "-" + hashCode();
    }

    public float getPlaybackSpeed() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getPlaybackSpeed();
        }
        return 1.0f;
    }

    public MgtvMediaPlayer.PlayerExtraInfo getPlayerExtraInfo() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getPlayerExtraInfo();
        }
        return null;
    }

    public String getPlayerVersion() {
        return MgtvMediaPlayer.MGTVPLAYER_VERSION;
    }

    public int getTotalBuffering() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.getBufferedPercentage();
        }
        return 0;
    }

    public String getVideoPath() {
        Uri uri = this.mCurrentUri;
        if (uri != null) {
            return uri.toString();
        }
        return null;
    }

    public boolean isCompletion() {
        return this.mCurrentState == 5;
    }

    public boolean isPlaying() {
        MgtvMediaPlayer mgtvMediaPlayer;
        return isInPlaybackState() && (mgtvMediaPlayer = this.mMediaPlayer) != null && mgtvMediaPlayer.isPlaying();
    }

    public boolean isPrepared() {
        return isInPlaybackState();
    }

    public boolean isRendered() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            return mgtvMediaPlayer.isRendered();
        }
        return false;
    }

    public void pause() {
        if (isInPlaybackState() && this.mMediaPlayer.isPlaying()) {
            DebugLog.i(getLogTag(), "pause");
            this.mMediaPlayer.pause();
            MgtvPlayerListener.OnPauseListener onPauseListener = this.mOnPauseListener;
            if (onPauseListener != null) {
                onPauseListener.onPause();
            }
            this.mCurrentState = 4;
        }
        this.mTargetState = 4;
    }

    public void play() {
        if (isInPlaybackState() && this.mCurrentState != 3) {
            this.mMediaPlayer.start();
            DebugLog.i(getLogTag(), PlayAudioData.TAG_NEED_PLAY);
            MgtvPlayerListener.OnStartListener onStartListener = this.mOnStartListener;
            if (onStartListener != null) {
                onStartListener.onStart();
            }
            this.mCurrentState = 3;
        }
        this.mTargetState = 3;
    }

    public void prepare(String str, boolean z) {
        this.mCurrentUri = Uri.parse(str.trim());
        this.mAutoPlay = z;
        try {
            openPlayer();
            configPlayer();
            DebugLog.i(getLogTag(), "prepare path" + str);
            this.mMediaPlayer.setDataSource(this.mCurrentUri.toString());
            this.mMediaPlayer.setAudioStreamType(3);
            this.mMediaPlayer.setScreenOnWhilePlaying(true);
            this.mMediaPlayer.prepareAsync();
            this.mCurrentState = 1;
        } catch (c e) {
            DebugLog.e(getLogTag(), "LibLoaderError: " + this.mCurrentUri + "details:" + e.getMessage() + ",extra:" + e.a());
            this.mErrorMsg = e.getMessage();
            onErrorImpl(IVideoView.MEDIA_ERROR_LIB_NOTLOAD, e.a());
        } catch (IOException e2) {
            DebugLog.e(getLogTag(), "Unable to open content: " + this.mCurrentUri, e2);
            this.mErrorMsg = e2.getMessage();
            onErrorImpl(IVideoView.MEDIA_ERROR_IO, 0);
        } catch (IllegalArgumentException e3) {
            DebugLog.e(getLogTag(), "Unable to open content: " + this.mCurrentUri, e3);
            this.mErrorMsg = e3.getMessage();
            onErrorImpl(IVideoView.MEDIA_ERROR_ILLEGAL_ARGUMENT, 0);
        } catch (IllegalStateException e4) {
            DebugLog.e(getLogTag(), "Unable to open content: " + this.mCurrentUri, e4);
            this.mErrorMsg = e4.getMessage();
            onErrorImpl(IVideoView.MEDIA_ERROR_ILLEGAL_STATE, 0);
        } catch (NullPointerException e5) {
            DebugLog.e(getLogTag(), "NullPointerException: " + this.mCurrentUri + "details:" + e5.getMessage());
            this.mErrorMsg = e5.getMessage();
            onErrorImpl(IVideoView.MEDIA_ERROR_NULLPOINT, 0);
        } catch (SecurityException e6) {
            DebugLog.e(getLogTag(), "SecurityException: " + this.mCurrentUri + "details:" + e6.getMessage());
            this.mErrorMsg = e6.getMessage();
            onErrorImpl(IVideoView.MEDIA_ERROR_SECURITY, 0);
        } catch (Exception e7) {
            DebugLog.e(getLogTag(), "Unable to open content: " + this.mCurrentUri, e7);
            this.mErrorMsg = e7.getMessage();
            onErrorImpl(IVideoView.MEDIA_ERROR_OPENVIDEO_FAILED, 0);
        } catch (UnsatisfiedLinkError e8) {
            DebugLog.e(getLogTag(), "UnsatisfiedLinkError: " + this.mCurrentUri + "details:" + e8.getMessage());
            this.mErrorMsg = e8.getMessage();
            onErrorImpl(IVideoView.MEDIA_ERROR_LIB_NOTLOAD, 0);
        } catch (Throwable th) {
            DebugLog.e(getLogTag(), "Throwable: " + this.mCurrentUri + "details:" + th.getMessage());
            this.mErrorMsg = th.getMessage();
            onErrorImpl(IVideoView.MEDIA_ERROR_OPENVIDEO_FAILED, 1);
        }
    }

    public void release() {
        DebugLog.i(getLogTag(), "release");
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.stop();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            this.mTargetState = 0;
        }
    }

    public void reset() {
        if (this.mMediaPlayer != null) {
            resetData();
            this.mMediaPlayer.reset();
            this.mCurrentState = 0;
            this.mTargetState = 0;
        }
    }

    public void seekTo(int i) {
        if (isInPlaybackState()) {
            if (i >= 0) {
                DebugLog.i(getLogTag(), "seekTo msec:" + i);
                this.mMediaPlayer.seekTo(i);
            }
            i = 0;
        }
        this.mSeekWhenPrepared = i;
    }

    public void setBufferTimeout(int i) {
        this.mBufferTimeoutMs = i;
    }

    public void setFlowDataStatistic(FlowDataStatistic flowDataStatistic) {
        this.mFlowDataStatistic = flowDataStatistic;
    }

    public void setLiveMode(boolean z) {
        this.mEnableLiveMode = z;
    }

    public void setLiveReopen() {
        MgtvMediaPlayer mgtvMediaPlayer;
        if (!this.mEnableLiveMode || (mgtvMediaPlayer = this.mMediaPlayer) == null) {
            return;
        }
        mgtvMediaPlayer.setLiveReopen();
    }

    public void setLiveStartIndex(int i) {
        this.mLiveStartIndex = i;
    }

    public void setOnCompletionListener(MgtvPlayerListener.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnErrorListener(MgtvPlayerListener.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(MgtvPlayerListener.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public void setOnPauseListener(MgtvPlayerListener.OnPauseListener onPauseListener) {
        this.mOnPauseListener = onPauseListener;
    }

    public void setOnPreparedListener(MgtvPlayerListener.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnStartListener(MgtvPlayerListener.OnStartListener onStartListener) {
        this.mOnStartListener = onStartListener;
    }

    public void setPlaybackSpeed(float f) {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setPlaybackSpeed(f);
        }
    }

    public void setReportParams(ReportParams reportParams) {
        this.mReportParams = reportParams;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setReportParams(reportParams);
        }
    }

    public void setTimeout(int i, int i2) {
        this.mConnectTimeOut = i;
        this.mReciveDataTimeOut = i2;
    }

    public void setVolume(float f, float f2) {
        this.mLeftVolume = f;
        this.mRightVolume = f2;
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.setVolume(f, f2);
        }
    }

    public void stop() {
        MgtvMediaPlayer mgtvMediaPlayer = this.mMediaPlayer;
        if (mgtvMediaPlayer != null) {
            mgtvMediaPlayer.stop();
        }
    }

    public MgtvAudioPlayer(Context context, boolean z) {
        this(context);
        this.mEnableLiveMode = z;
    }
}
