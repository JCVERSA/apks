package com.transsion.vishaplayersdk.systemplayer;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaDataSource;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.media.TimedText;
import android.net.Uri;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.gsyplayer.base.MediaPlayerImpl;
import com.transsion.vishaplayersdk.gsyplayer.base.cache.ICacheManager;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaDataSource;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.ITrackInfo;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IjkTimedText;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.MediaInfo;
import com.transsion.vishaplayersdk.gsyplayer.base.model.GSYModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoOptionModel;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

public class AndroidMediaPlayer extends MediaPlayerImpl {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + AndroidMediaPlayer.class.getSimpleName();
    private static MediaInfo sMediaInfo;
    private boolean bSetSurface;
    private String mDataSource;
    private final Object mInitLock;
    private AndroidMediaPlayerListenerHolder mInternalListenerAdapter;
    private final MediaPlayer mInternalMediaPlayer;
    private boolean mIsReleased;
    private MediaDataSource mMediaDataSource;

    public class AndroidMediaPlayerListenerHolder implements MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnTimedTextListener {
        public final WeakReference<AndroidMediaPlayer> mWeakMediaPlayer;

        public AndroidMediaPlayerListenerHolder(AndroidMediaPlayer androidMediaPlayer) {
            this.mWeakMediaPlayer = new WeakReference<>(androidMediaPlayer);
        }

        @Override
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
            this.mWeakMediaPlayer.get();
        }

        @Override
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (this.mWeakMediaPlayer.get() == null) {
                return;
            }
            LogUtils.j(AndroidMediaPlayer.TAG, "onCompletion");
            AndroidMediaPlayer.this.notifyOnCompletion();
        }

        @Override
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            AndroidMediaPlayer androidMediaPlayer = this.mWeakMediaPlayer.get();
            LogUtils.j(AndroidMediaPlayer.TAG, "onError what " + i + " extra " + i2);
            return androidMediaPlayer != null && AndroidMediaPlayer.this.notifyOnError(i, i2);
        }

        @Override
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            AndroidMediaPlayer androidMediaPlayer = this.mWeakMediaPlayer.get();
            LogUtils.j(AndroidMediaPlayer.TAG, "onInfo what " + i + " extra " + i2);
            if (androidMediaPlayer == null || i != 3) {
                return androidMediaPlayer != null && AndroidMediaPlayer.this.notifyOnInfo(i, i2);
            }
            LogUtils.j(AndroidMediaPlayer.TAG, "video start play ");
            AndroidMediaPlayer.this.postNotificationMsg(1014, new Object[0]);
            AndroidMediaPlayer.this.notifyOnVideoFirstFrameShow();
            return true;
        }

        @Override
        public void onPrepared(MediaPlayer mediaPlayer) {
            if (this.mWeakMediaPlayer.get() == null) {
                return;
            }
            LogUtils.j(AndroidMediaPlayer.TAG, "onPrepared");
            AndroidMediaPlayer.this.notifyOnPrepared();
        }

        @Override
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            if (this.mWeakMediaPlayer.get() == null) {
                return;
            }
            LogUtils.j(AndroidMediaPlayer.TAG, "onSeekComplete");
            AndroidMediaPlayer.this.notifyOnSeekComplete();
        }

        @Override
        public void onTimedText(MediaPlayer mediaPlayer, TimedText timedText) {
            if (this.mWeakMediaPlayer.get() == null) {
                return;
            }
            AndroidMediaPlayer.this.notifyOnTimedText(timedText != null ? new IjkTimedText(timedText.getBounds(), timedText.getText()) : null);
        }

        @Override
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            if (this.mWeakMediaPlayer.get() == null) {
                return;
            }
            AndroidMediaPlayer.this.notifyOnVideoSizeChanged(i, i2, 1, 1);
        }
    }

    @TargetApi(23)
    public static class MediaDataSourceProxy extends MediaDataSource {
        private final IMediaDataSource mMediaDataSource;

        public MediaDataSourceProxy(IMediaDataSource iMediaDataSource) {
            this.mMediaDataSource = iMediaDataSource;
        }

        @Override
        public void close() throws IOException {
            this.mMediaDataSource.close();
        }

        @Override
        public long getSize() throws IOException {
            return this.mMediaDataSource.getSize();
        }

        @Override
        public int readAt(long j, byte[] bArr, int i, int i2) throws IOException {
            return this.mMediaDataSource.readAt(j, bArr, i, i2);
        }
    }

    public AndroidMediaPlayer() {
        Object obj = new Object();
        this.mInitLock = obj;
        this.bSetSurface = false;
        synchronized (obj) {
            this.mInternalMediaPlayer = new MediaPlayer();
        }
    }

    private void attachInternalListeners() {
        this.mInternalMediaPlayer.setOnPreparedListener(this.mInternalListenerAdapter);
        this.mInternalMediaPlayer.setOnBufferingUpdateListener(this.mInternalListenerAdapter);
        this.mInternalMediaPlayer.setOnCompletionListener(this.mInternalListenerAdapter);
        this.mInternalMediaPlayer.setOnSeekCompleteListener(this.mInternalListenerAdapter);
        this.mInternalMediaPlayer.setOnVideoSizeChangedListener(this.mInternalListenerAdapter);
        this.mInternalMediaPlayer.setOnErrorListener(this.mInternalListenerAdapter);
        this.mInternalMediaPlayer.setOnInfoListener(this.mInternalListenerAdapter);
        this.mInternalMediaPlayer.setOnTimedTextListener(this.mInternalListenerAdapter);
    }

    private void releaseMediaDataSource() {
        MediaDataSource mediaDataSource = this.mMediaDataSource;
        if (mediaDataSource != null) {
            try {
                mediaDataSource.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.mMediaDataSource = null;
        }
    }

    @Override
    public int getAudioSessionId() {
        return this.mInternalMediaPlayer.getAudioSessionId();
    }

    @Override
    public long getCurrentPosition() {
        try {
            return this.mInternalMediaPlayer.getCurrentPosition();
        } catch (IllegalStateException unused) {
            return 0L;
        }
    }

    @Override
    public String getDataSource() {
        return this.mDataSource;
    }

    @Override
    public long getDuration() {
        try {
            return this.mInternalMediaPlayer.getDuration();
        } catch (IllegalStateException unused) {
            return 0L;
        }
    }

    public MediaPlayer getInternalMediaPlayer() {
        return this.mInternalMediaPlayer;
    }

    @Override
    public boolean getIsPausedByUser() {
        return false;
    }

    public MediaInfo getMediaInfo() {
        if (sMediaInfo == null) {
            MediaInfo mediaInfo = new MediaInfo();
            mediaInfo.mVideoDecoder = ConstantDeviceInfo.APP_PLATFORM;
            mediaInfo.mVideoDecoderImpl = "HW";
            mediaInfo.mAudioDecoder = ConstantDeviceInfo.APP_PLATFORM;
            mediaInfo.mAudioDecoderImpl = "HW";
            sMediaInfo = mediaInfo;
        }
        return sMediaInfo;
    }

    public float getSpeed() {
        float speed = 1.0f;
        if (getInternalMediaPlayer() == null) {
            return 1.0f;
        }
        try {
            new PlaybackParams();
            speed = getInternalMediaPlayer().getPlaybackParams().getSpeed();
        } catch (Exception e) {
            e.printStackTrace();
        }
        LogUtils.j(TAG, "getSpeed = " + speed);
        return speed;
    }

    @Override
    public ITrackInfo[] getTrackInfo() {
        return null;
    }

    @Override
    public int getVideoHeight() {
        return this.mInternalMediaPlayer.getVideoHeight();
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
        return this.mInternalMediaPlayer.getVideoWidth();
    }

    public void initSystemPlayer(Context context, GSYModel gSYModel, List<VideoOptionModel> list, ICacheManager iCacheManager) {
        try {
            this.mInternalMediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(3).build());
            this.mInternalListenerAdapter = new AndroidMediaPlayerListenerHolder(this);
            attachInternalListeners();
            if (gSYModel != null && gSYModel.isPlaySourceValid()) {
                if (!gSYModel.isCache() || iCacheManager == null) {
                    setDataSource(context, Uri.parse(gSYModel.getUrl()), gSYModel.getMapHeadData());
                } else {
                    iCacheManager.doCacheLogic(context, this, gSYModel.getUrl(), gSYModel.getMapHeadData(), gSYModel.getCachePath());
                }
                setLooping(gSYModel.isLooping());
                if (gSYModel.getSpeed() == 1.0f || gSYModel.getSpeed() <= 0.0f) {
                    return;
                }
                setSpeed(gSYModel.getSpeed());
                return;
            }
            postErrorState(Boolean.TRUE, "");
        } catch (Exception e) {
            LogUtils.m(TAG, "initVideoPlayer failed" + e.getMessage());
            e.printStackTrace();
            postErrorState(Boolean.TRUE, "");
        }
    }

    @Override
    public boolean isLooping() {
        return this.mInternalMediaPlayer.isLooping();
    }

    @Override
    public boolean isPlayable() {
        return true;
    }

    @Override
    public boolean isPlaying() {
        try {
            return this.mInternalMediaPlayer.isPlaying();
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    @Override
    public void pause() throws IllegalStateException {
        LogUtils.j(TAG, "pause");
        this.mInternalMediaPlayer.pause();
        postNotificationMsg(1015, new Object[0]);
    }

    @Override
    public void prepareAsync() throws IllegalStateException {
        this.mInternalMediaPlayer.prepareAsync();
    }

    @Override
    public void release() {
        super.release();
        this.mIsReleased = true;
        this.mInternalMediaPlayer.release();
        releaseMediaDataSource();
        resetListeners();
        attachInternalListeners();
        this.bSetSurface = false;
    }

    @Override
    public void reset() {
        try {
            this.mInternalMediaPlayer.reset();
        } catch (IllegalStateException unused) {
        }
        releaseMediaDataSource();
        resetListeners();
        attachInternalListeners();
    }

    @Override
    public void seekTo(long j) throws IllegalStateException {
        LogUtils.j(TAG, "seekTo: " + j);
        this.mInternalMediaPlayer.seekTo((int) j);
    }

    @Override
    public void setAudioStreamType(int i) {
        this.mInternalMediaPlayer.setAudioStreamType(i);
    }

    @Override
    public void setDataSource(Context context, Uri uri) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        LogUtils.j(TAG, "setDataSource:" + uri);
        this.mInternalMediaPlayer.setDataSource(context, uri);
    }

    @Override
    public void setDisplay(SurfaceHolder surfaceHolder) {
        synchronized (this.mInitLock) {
            try {
                if (!this.mIsReleased) {
                    LogUtils.j(TAG, "setDisplay");
                    this.mInternalMediaPlayer.setDisplay(surfaceHolder);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void setKeepInBackground(boolean z) {
    }

    @Override
    public void setLogEnabled(boolean z) {
    }

    @Override
    public void setLooping(boolean z) {
        LogUtils.j(TAG, "setLooping");
        this.mInternalMediaPlayer.setLooping(z);
    }

    @Override
    public void setOnSubtitlesListener(IMediaPlayer.OnSubtitlesListener onSubtitlesListener) {
    }

    @Override
    public void setScreenOnWhilePlaying(boolean z) {
        LogUtils.j(TAG, "setScreenOnWhilePlaying");
        this.mInternalMediaPlayer.setScreenOnWhilePlaying(z);
    }

    public void setSpeed(float f) {
        if (getInternalMediaPlayer() == null) {
            return;
        }
        LogUtils.j(TAG, "setSpeed " + f);
        try {
            PlaybackParams playbackParams = new PlaybackParams();
            playbackParams.setSpeed(f);
            getInternalMediaPlayer().setPlaybackParams(playbackParams);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void setSurface(Surface surface) {
        LogUtils.j(TAG, "setSurface:" + this.bSetSurface);
        if (this.bSetSurface) {
            return;
        }
        this.mInternalMediaPlayer.setSurface(surface);
        if (surface != null) {
            this.bSetSurface = true;
        }
    }

    @Override
    public void setVolume(float f, float f2) {
        LogUtils.j(TAG, "setVolume:" + f + " rightVolume:" + f2);
        this.mInternalMediaPlayer.setVolume(f, f2);
    }

    @Override
    public void setWakeMode(Context context, int i) {
        this.mInternalMediaPlayer.setWakeMode(context, i);
    }

    @Override
    public void start() throws IllegalStateException {
        LogUtils.j(TAG, TtmlNode.START);
        this.mInternalMediaPlayer.start();
    }

    @Override
    public void stop() throws IllegalStateException {
        LogUtils.j(TAG, "stop");
        this.mInternalMediaPlayer.stop();
    }

    @Override
    public void togglePlay() throws IllegalStateException {
        LogUtils.j(TAG, "togglePlay");
        this.mInternalMediaPlayer.start();
    }

    @Override
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        LogUtils.j(TAG, "setDataSource:" + uri);
        this.mInternalMediaPlayer.setDataSource(context, uri, map);
    }

    @Override
    public void setDataSource(FileDescriptor fileDescriptor) throws IllegalStateException, IOException, IllegalArgumentException {
        this.mInternalMediaPlayer.setDataSource(fileDescriptor);
    }

    @Override
    public void setDataSource(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        LogUtils.j(TAG, "setDataSource:" + str);
        this.mDataSource = str;
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        if (!TextUtils.isEmpty(scheme) && "file".equalsIgnoreCase(scheme)) {
            this.mInternalMediaPlayer.setDataSource(uri.getPath());
        } else {
            this.mInternalMediaPlayer.setDataSource(str);
        }
    }

    @Override
    @TargetApi(23)
    public void setDataSource(IMediaDataSource iMediaDataSource) {
        releaseMediaDataSource();
        MediaDataSourceProxy mediaDataSourceProxy = new MediaDataSourceProxy(iMediaDataSource);
        this.mMediaDataSource = mediaDataSourceProxy;
        this.mInternalMediaPlayer.setDataSource(mediaDataSourceProxy);
    }
}
