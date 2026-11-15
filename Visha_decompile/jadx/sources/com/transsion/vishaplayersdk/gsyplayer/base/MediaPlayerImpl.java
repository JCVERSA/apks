package com.transsion.vishaplayersdk.gsyplayer.base;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.transsion.dbdata.beans.VishaPalmUserInfo;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaDataSource;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.ITrackInfo;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IjkTimedText;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VishaAccountInfo;
import defpackage.h27;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.Map;

public class MediaPlayerImpl implements IMediaPlayer, h27.b {
    protected IMediaPlayer.OnBufferingUpdateListener mOnPlayerCoreBufferingUpdateListener;
    protected IMediaPlayer.OnCompletionListener mOnPlayerCoreCompletionListener;
    protected IMediaPlayer.OnErrorListener mOnPlayerCoreErrorListener;
    protected IMediaPlayer.OnInfoListener mOnPlayerCoreInfoListener;
    protected IMediaPlayer.OnPreparedListener mOnPlayerCorePreparedListener;
    protected IMediaPlayer.OnSeekCompleteListener mOnPlayerCoreSeekCompleteListener;
    protected IMediaPlayer.OnSubtitlesListener mOnPlayerCoreSubtitlesListener;
    protected IMediaPlayer.OnTimedTextListener mOnPlayerCoreTimedTextListener;
    private IMediaPlayer.OnVideoFirstFrameShowListener mOnPlayerCoreVideoFirstFrameListener;
    protected IMediaPlayer.OnVideoSizeChangedListener mOnPlayerCoreVideoSizeChangedListener;
    protected BasePlayerManager mPlayerManager;

    public MediaPlayerImpl() {
        h27.c().b(this, AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED);
        h27.c().b(this, AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED);
        h27.c().b(this, AnalyticsListener.EVENT_RENDERER_READY_CHANGED);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        switch (i) {
            case AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED:
                onUserLogin((VishaPalmUserInfo) objArr[0]);
                break;
            case AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED:
                userLogout();
                break;
            case AnalyticsListener.EVENT_RENDERER_READY_CHANGED:
                onUserReLogin((VishaPalmUserInfo) objArr[0]);
                break;
        }
    }

    @Override
    public int getAudioSessionId() {
        return 0;
    }

    @Override
    public long getCurrentPosition() {
        return 0L;
    }

    @Override
    public String getDataSource() {
        return null;
    }

    @Override
    public long getDuration() {
        return 0L;
    }

    @Override
    public boolean getIsPausedByUser() {
        return false;
    }

    @Override
    public ITrackInfo[] getTrackInfo() {
        return new ITrackInfo[0];
    }

    @Override
    public int getVideoHeight() {
        return 0;
    }

    @Override
    public int getVideoSarDen() {
        return 0;
    }

    @Override
    public int getVideoSarNum() {
        return 0;
    }

    @Override
    public int getVideoWidth() {
        return 0;
    }

    @Override
    public boolean isLooping() {
        return false;
    }

    @Override
    public boolean isPlayable() {
        return false;
    }

    @Override
    public boolean isPlaying() {
        return false;
    }

    public final void notifyOnBufferingUpdate(int i) {
        IMediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener = this.mOnPlayerCoreBufferingUpdateListener;
        if (onBufferingUpdateListener != null) {
            onBufferingUpdateListener.onBufferingUpdate(this, i);
        }
    }

    public final void notifyOnCompletion() {
        IMediaPlayer.OnCompletionListener onCompletionListener = this.mOnPlayerCoreCompletionListener;
        if (onCompletionListener != null) {
            onCompletionListener.onCompletion(this);
        }
    }

    public final boolean notifyOnError(int i, int i2) {
        IMediaPlayer.OnErrorListener onErrorListener = this.mOnPlayerCoreErrorListener;
        return onErrorListener != null && onErrorListener.onError(this, i, i2);
    }

    public final boolean notifyOnInfo(int i, int i2) {
        IMediaPlayer.OnInfoListener onInfoListener = this.mOnPlayerCoreInfoListener;
        return onInfoListener != null && onInfoListener.onInfo(this, i, i2);
    }

    public void notifyOnPrepared() {
        IMediaPlayer.OnPreparedListener onPreparedListener = this.mOnPlayerCorePreparedListener;
        if (onPreparedListener != null) {
            onPreparedListener.onPrepared(this);
        }
    }

    public final void notifyOnSeekComplete() {
        IMediaPlayer.OnSeekCompleteListener onSeekCompleteListener = this.mOnPlayerCoreSeekCompleteListener;
        if (onSeekCompleteListener != null) {
            onSeekCompleteListener.onSeekComplete(this);
        }
    }

    public final void notifyOnTimedText(IjkTimedText ijkTimedText) {
        IMediaPlayer.OnTimedTextListener onTimedTextListener = this.mOnPlayerCoreTimedTextListener;
        if (onTimedTextListener != null) {
            onTimedTextListener.onTimedText(this, ijkTimedText);
        }
    }

    public void notifyOnVideoFirstFrameShow() {
        IMediaPlayer.OnVideoFirstFrameShowListener onVideoFirstFrameShowListener = this.mOnPlayerCoreVideoFirstFrameListener;
        if (onVideoFirstFrameShowListener != null) {
            onVideoFirstFrameShowListener.OnVideoFirstFrameShow(this);
        }
    }

    public final void notifyOnVideoSizeChanged(int i, int i2, int i3, int i4) {
        IMediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener = this.mOnPlayerCoreVideoSizeChangedListener;
        if (onVideoSizeChangedListener != null) {
            onVideoSizeChangedListener.onVideoSizeChanged(this, i, i2, i3, i4);
        }
    }

    public void notifyStartPlay() {
        postNotificationMsg(1014, new Object[0]);
    }

    public void onPlayerInitFailed() {
        BasePlayerManager basePlayerManager = this.mPlayerManager;
        if (basePlayerManager == null || basePlayerManager.getPlayerManagerListener() == null) {
            return;
        }
        this.mPlayerManager.getPlayerManagerListener().onPlayerInitResult(null, null);
    }

    public void onPlayerInitSuccess() {
        BasePlayerManager basePlayerManager = this.mPlayerManager;
        if (basePlayerManager == null || basePlayerManager.getPlayerManagerListener() == null) {
            return;
        }
        this.mPlayerManager.getPlayerManagerListener().onPlayerInitResult(this, null);
    }

    public void onUserLogin(VishaPalmUserInfo vishaPalmUserInfo) {
    }

    public void onUserReLogin(VishaPalmUserInfo vishaPalmUserInfo) {
    }

    @Override
    public void pause() throws IllegalStateException {
    }

    public void postErrorState(Object... objArr) {
        postNotificationMsg(1000, objArr[0], objArr[1]);
        postNotificationMsg(1034, objArr[1]);
    }

    public void postNotificationMsg(int i, Object... objArr) {
        h27.c().e(i, objArr);
    }

    @Override
    public void prepareAsync() throws IllegalStateException {
    }

    @Override
    public void release() {
        h27.c().f(this, AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED);
        h27.c().f(this, AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED);
        h27.c().f(this, AnalyticsListener.EVENT_RENDERER_READY_CHANGED);
        resetListeners();
    }

    @Override
    public void reset() {
    }

    public void resetListeners() {
        this.mOnPlayerCorePreparedListener = null;
        this.mOnPlayerCoreBufferingUpdateListener = null;
        this.mOnPlayerCoreCompletionListener = null;
        this.mOnPlayerCoreSeekCompleteListener = null;
        this.mOnPlayerCoreVideoSizeChangedListener = null;
        this.mOnPlayerCoreErrorListener = null;
        this.mOnPlayerCoreInfoListener = null;
        this.mOnPlayerCoreTimedTextListener = null;
    }

    @Override
    public void seekTo(long j) throws IllegalStateException {
    }

    @Override
    public void setAudioStreamType(int i) {
    }

    @Override
    public void setDataSource(Context context, Uri uri) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
    }

    @Override
    public void setDisplay(SurfaceHolder surfaceHolder) {
    }

    @Override
    public void setKeepInBackground(boolean z) {
    }

    @Override
    public void setLogEnabled(boolean z) {
    }

    @Override
    public void setLooping(boolean z) {
    }

    @Override
    public void setOnBufferingUpdateListener(IMediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener) {
        this.mOnPlayerCoreBufferingUpdateListener = onBufferingUpdateListener;
    }

    @Override
    public void setOnCompletionListener(IMediaPlayer.OnCompletionListener onCompletionListener) {
        this.mOnPlayerCoreCompletionListener = onCompletionListener;
    }

    @Override
    public void setOnErrorListener(IMediaPlayer.OnErrorListener onErrorListener) {
        this.mOnPlayerCoreErrorListener = onErrorListener;
    }

    @Override
    public void setOnInfoListener(IMediaPlayer.OnInfoListener onInfoListener) {
        this.mOnPlayerCoreInfoListener = onInfoListener;
    }

    @Override
    public void setOnPreparedListener(IMediaPlayer.OnPreparedListener onPreparedListener) {
        this.mOnPlayerCorePreparedListener = onPreparedListener;
    }

    @Override
    public void setOnSeekCompleteListener(IMediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnPlayerCoreSeekCompleteListener = onSeekCompleteListener;
    }

    @Override
    public void setOnSubtitlesListener(IMediaPlayer.OnSubtitlesListener onSubtitlesListener) {
        this.mOnPlayerCoreSubtitlesListener = onSubtitlesListener;
    }

    @Override
    public void setOnTimedTextListener(IMediaPlayer.OnTimedTextListener onTimedTextListener) {
        this.mOnPlayerCoreTimedTextListener = onTimedTextListener;
    }

    @Override
    public void setOnVideoFirstFrameListener(IMediaPlayer.OnVideoFirstFrameShowListener onVideoFirstFrameShowListener) {
        this.mOnPlayerCoreVideoFirstFrameListener = onVideoFirstFrameShowListener;
    }

    @Override
    public void setOnVideoSizeChangedListener(IMediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnPlayerCoreVideoSizeChangedListener = onVideoSizeChangedListener;
    }

    public void setPlayerManager(BasePlayerManager basePlayerManager) {
        this.mPlayerManager = basePlayerManager;
    }

    @Override
    public void setScreenOnWhilePlaying(boolean z) {
    }

    @Override
    public void setSurface(Surface surface) {
    }

    public void setUserAccountInfo(VishaAccountInfo vishaAccountInfo) {
    }

    @Override
    public void setVolume(float f, float f2) {
    }

    @Override
    public void setWakeMode(Context context, int i) {
    }

    @Override
    public void start() throws IllegalStateException {
    }

    @Override
    public void stop() throws IllegalStateException {
    }

    @Override
    public void togglePlay() throws IllegalStateException {
    }

    public void userLogout() {
    }

    @Override
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
    }

    @Override
    public void setDataSource(IMediaDataSource iMediaDataSource) {
    }

    @Override
    public void setDataSource(FileDescriptor fileDescriptor) throws IllegalStateException, IOException, IllegalArgumentException {
    }

    @Override
    public void setDataSource(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
    }
}
