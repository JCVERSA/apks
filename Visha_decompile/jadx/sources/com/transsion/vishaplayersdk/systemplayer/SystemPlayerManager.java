package com.transsion.vishaplayersdk.systemplayer;

import android.content.Context;
import android.net.TrafficStats;
import android.os.Message;
import android.view.Surface;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.gsyplayer.base.BasePlayerManager;
import com.transsion.vishaplayersdk.gsyplayer.base.cache.ICacheManager;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.model.GSYModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoOptionModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VishaAccountInfo;
import defpackage.h27;
import java.util.List;

public class SystemPlayerManager extends BasePlayerManager {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + SystemPlayerManager.class.getSimpleName();
    private Context context;
    private AndroidMediaPlayer mediaPlayer;
    private boolean release;
    private Surface surface;
    private long lastTotalRxBytes = 0;
    private long lastTimeStamp = 0;
    private boolean isPlaying = false;
    private long currentPosition = 0;

    @Override
    public void backToFront() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer == null || !this.isPlaying) {
            return;
        }
        androidMediaPlayer.start();
    }

    @Override
    public void changeAreaLanguage(int i, boolean z) {
    }

    @Override
    public int getBufferedPercentage() {
        return -1;
    }

    @Override
    public long getCurrentPosition() {
        return this.currentPosition;
    }

    @Override
    public long getCurrentPositionInMainThread() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer == null) {
            return 0L;
        }
        long currentPosition = androidMediaPlayer.getCurrentPosition();
        this.currentPosition = currentPosition;
        return currentPosition;
    }

    @Override
    public float getCurrentSpeed() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getSpeed();
        }
        return 1.0f;
    }

    @Override
    public long getDuration() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getDuration();
        }
        return 0L;
    }

    @Override
    public boolean getIsPausedByUser() {
        return false;
    }

    @Override
    public IMediaPlayer getMediaPlayer() {
        return this.mediaPlayer;
    }

    @Override
    public long getNetSpeed() {
        if (this.mediaPlayer != null) {
            return getNetSpeed(this.context);
        }
        return 0L;
    }

    @Override
    public List<VideoDefinition> getVideoDefinitions() {
        return null;
    }

    @Override
    public int getVideoHeight() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override
    public int getVideoSarDen() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoSarDen();
        }
        return 1;
    }

    @Override
    public int getVideoSarNum() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoSarNum();
        }
        return 1;
    }

    @Override
    public int getVideoWidth() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override
    public void gotoBackground() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer == null || !this.isPlaying) {
            return;
        }
        androidMediaPlayer.pause();
    }

    @Override
    public void initVideoPlayer(Context context, Message message, List<VideoOptionModel> list, ICacheManager iCacheManager) {
        this.context = context.getApplicationContext();
        this.mediaPlayer = new AndroidMediaPlayer();
        this.release = false;
        GSYModel gSYModel = (GSYModel) message.obj;
        LogUtils.j(TAG, "initVideoPlayer: " + gSYModel);
        this.mediaPlayer.initSystemPlayer(context, gSYModel, list, iCacheManager);
    }

    @Override
    public boolean isPlaying() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            return androidMediaPlayer.isPlaying();
        }
        return false;
    }

    @Override
    public boolean isSurfaceSupportLockCanvas() {
        return false;
    }

    @Override
    public void noticePlayViewMode(int i) {
    }

    @Override
    public void onActivityStart(boolean z) {
    }

    @Override
    public void onActivityStop() {
    }

    @Override
    public void pause() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.pause();
            this.isPlaying = false;
        }
    }

    @Override
    public void release() {
        if (this.mediaPlayer != null) {
            LogUtils.j(TAG, "release system player");
            this.release = true;
            this.mediaPlayer.stop();
            this.mediaPlayer.release();
            this.mediaPlayer = null;
        }
        this.lastTotalRxBytes = 0L;
        this.lastTimeStamp = 0L;
    }

    @Override
    public void releaseSurface() {
        if (this.surface != null) {
            this.surface = null;
        }
    }

    @Override
    public void replay() {
        LogUtils.j(TAG, "replay");
    }

    @Override
    public void seekTo(long j) {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.seekTo(j);
        }
    }

    @Override
    public void setAspectRatio(int i) {
        h27.c().e(1050, Integer.valueOf(i));
    }

    @Override
    public void setBookMark(int i) {
    }

    @Override
    public void setCustomRenderer(Message message) {
    }

    @Override
    public void setFullScreen(boolean z) {
    }

    @Override
    public void setNeedMute(boolean z) {
        try {
            AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
            if (androidMediaPlayer != null && !this.release) {
                if (z) {
                    androidMediaPlayer.setVolume(0.0f, 0.0f);
                } else {
                    androidMediaPlayer.setVolume(1.0f, 1.0f);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void setSpeed(float f, boolean z) {
        setSpeed(f);
    }

    @Override
    public void setSpeedPlaying(float f, boolean z) {
        setSpeed(f, z);
    }

    @Override
    public void setSubtitleBottomRatio(float f) {
    }

    @Override
    public void setSubtitleSizeRatio(float f) {
    }

    @Override
    public void setUserAccountInfo(VishaAccountInfo vishaAccountInfo) {
    }

    public void setVolume(float f, float f2) {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.setVolume(f, f2);
        }
    }

    @Override
    public void showDisplay(Message message) {
        AndroidMediaPlayer androidMediaPlayer;
        Object obj = message.obj;
        if (obj == null && (androidMediaPlayer = this.mediaPlayer) != null && !this.release) {
            androidMediaPlayer.setSurface(null);
            return;
        }
        if (obj != null) {
            Surface surface = (Surface) obj;
            this.surface = surface;
            if (this.mediaPlayer == null || !surface.isValid() || this.release) {
                return;
            }
            this.mediaPlayer.setSurface(surface);
        }
    }

    @Override
    public void start() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.start();
            this.isPlaying = true;
        }
    }

    @Override
    public void stop() {
        AndroidMediaPlayer androidMediaPlayer = this.mediaPlayer;
        if (androidMediaPlayer != null) {
            androidMediaPlayer.stop();
            this.isPlaying = false;
        }
    }

    @Override
    public void switchResolution(int i) {
    }

    @Override
    public void switchSubtitleSource(int i) {
    }

    @Override
    public void togglePlay() {
        if (this.isPlaying) {
            this.mediaPlayer.pause();
            this.isPlaying = false;
        } else {
            this.mediaPlayer.start();
            this.isPlaying = true;
        }
    }

    private void setSpeed(float f) {
        AndroidMediaPlayer androidMediaPlayer;
        if (this.release || (androidMediaPlayer = this.mediaPlayer) == null) {
            return;
        }
        androidMediaPlayer.setSpeed(f);
    }

    private long getNetSpeed(Context context) {
        if (context == null) {
            return 0L;
        }
        long totalRxBytes = TrafficStats.getUidRxBytes(context.getApplicationInfo().uid) == -1 ? 0L : TrafficStats.getTotalRxBytes() / 1024;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.lastTimeStamp;
        if (j == 0) {
            return j;
        }
        long j2 = ((totalRxBytes - this.lastTotalRxBytes) * 1000) / j;
        this.lastTimeStamp = jCurrentTimeMillis;
        this.lastTotalRxBytes = totalRxBytes;
        return j2;
    }
}
