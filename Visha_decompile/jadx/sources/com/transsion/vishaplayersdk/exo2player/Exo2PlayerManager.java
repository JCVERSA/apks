package com.transsion.vishaplayersdk.exo2player;

import android.content.Context;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.MainThread;
import androidx.annotation.OptIn;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.video.PlaceholderSurface;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.gsyplayer.base.BasePlayerManager;
import com.transsion.vishaplayersdk.gsyplayer.base.cache.ICacheManager;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.model.GSYModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoOptionModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VishaAccountInfo;
import defpackage.h27;
import java.util.List;

public class Exo2PlayerManager extends BasePlayerManager {
    private static final String TAG = "Exo2PlayerManager";
    private Context context;

    @OptIn(markerClass = {UnstableApi.class})
    private PlaceholderSurface dummySurface;
    private Exo2MediaPlayer mediaPlayer;
    private Surface surface;
    private long lastTotalRxBytes = 0;
    private long lastTimeStamp = 0;
    private long currentPosition = 0;
    private boolean isPlaying = false;

    @Override
    public void backToFront() {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer == null || !this.isPlaying) {
            return;
        }
        exo2MediaPlayer.start();
    }

    @Override
    public void changeAreaLanguage(int i, boolean z) {
    }

    @Override
    public int getBufferedPercentage() {
        return 0;
    }

    @Override
    @MainThread
    public long getCurrentPosition() {
        return this.currentPosition;
    }

    @Override
    public long getCurrentPositionInMainThread() {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer == null) {
            return 0L;
        }
        long currentPosition = exo2MediaPlayer.getCurrentPosition();
        this.currentPosition = currentPosition;
        return currentPosition;
    }

    @Override
    public float getCurrentSpeed() {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            return exo2MediaPlayer.getSpeed();
        }
        return 1.0f;
    }

    @Override
    public long getDuration() {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            return exo2MediaPlayer.getDuration();
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
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            return exo2MediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override
    public int getVideoSarDen() {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            return exo2MediaPlayer.getVideoSarDen();
        }
        return 1;
    }

    @Override
    public int getVideoSarNum() {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            return exo2MediaPlayer.getVideoSarNum();
        }
        return 1;
    }

    @Override
    public int getVideoWidth() {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            return exo2MediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override
    public void gotoBackground() {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer == null || !this.isPlaying) {
            return;
        }
        exo2MediaPlayer.pause();
    }

    @Override
    @OptIn(markerClass = {UnstableApi.class})
    public void initVideoPlayer(Context context, Message message, List<VideoOptionModel> list, ICacheManager iCacheManager) {
        this.context = context.getApplicationContext();
        Exo2MediaPlayer exo2MediaPlayer = new Exo2MediaPlayer(context);
        this.mediaPlayer = exo2MediaPlayer;
        exo2MediaPlayer.setAudioStreamType(3);
        boolean z = false;
        if (this.dummySurface == null) {
            this.dummySurface = PlaceholderSurface.newInstanceV17(context, false);
        }
        GSYModel gSYModel = (GSYModel) message.obj;
        LogUtils.j(TAG, "init player: " + gSYModel);
        try {
            this.mediaPlayer.setLooping(gSYModel.isLooping());
            Exo2MediaPlayer exo2MediaPlayer2 = this.mediaPlayer;
            if (gSYModel.getMapHeadData() != null && gSYModel.getMapHeadData().size() > 0) {
                z = true;
            }
            exo2MediaPlayer2.setPreview(z);
            if (!gSYModel.isCache() || iCacheManager == null) {
                this.mediaPlayer.setCache(gSYModel.isCache());
                this.mediaPlayer.setCacheDir(gSYModel.getCachePath());
                this.mediaPlayer.setOverrideExtension(gSYModel.getOverrideExtension());
                this.mediaPlayer.setDataSource(context, Uri.parse(gSYModel.getUrl()), gSYModel.getMapHeadData());
            } else {
                iCacheManager.doCacheLogic(context, this.mediaPlayer, gSYModel.getUrl(), gSYModel.getMapHeadData(), gSYModel.getCachePath());
            }
            if (gSYModel.getSpeed() == 1.0f || gSYModel.getSpeed() <= 0.0f) {
                return;
            }
            this.mediaPlayer.setSpeed(gSYModel.getSpeed(), 1.0f);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean isPlaying() {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            return exo2MediaPlayer.isPlaying();
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
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            exo2MediaPlayer.pause();
            this.isPlaying = false;
        }
    }

    @Override
    @OptIn(markerClass = {UnstableApi.class})
    public void release() {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            exo2MediaPlayer.setSurface(null);
            this.mediaPlayer.release();
            this.mediaPlayer = null;
        }
        PlaceholderSurface placeholderSurface = this.dummySurface;
        if (placeholderSurface != null) {
            placeholderSurface.release();
            this.dummySurface = null;
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
    }

    @Override
    public void seekTo(long j) {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            exo2MediaPlayer.seekTo(j);
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
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            if (z) {
                exo2MediaPlayer.setVolume(0.0f, 0.0f);
            } else {
                exo2MediaPlayer.setVolume(1.0f, 1.0f);
            }
        }
    }

    @Override
    public void setSpeed(float f, boolean z) {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            try {
                exo2MediaPlayer.setSpeed(f, 1.0f);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void setSpeedPlaying(float f, boolean z) {
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

    @Override
    public void showDisplay(Message message) {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer == null) {
            return;
        }
        Object obj = message.obj;
        if (obj == null) {
            exo2MediaPlayer.setSurface(this.dummySurface);
            return;
        }
        Surface surface = (Surface) obj;
        this.surface = surface;
        exo2MediaPlayer.setSurface(surface);
    }

    @Override
    public void start() {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            exo2MediaPlayer.start();
            this.isPlaying = true;
        }
    }

    @Override
    public void stop() {
        Exo2MediaPlayer exo2MediaPlayer = this.mediaPlayer;
        if (exo2MediaPlayer != null) {
            exo2MediaPlayer.stop();
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
