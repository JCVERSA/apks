package com.transsion.vishaplayersdk.vkPlayer;

import android.content.Context;
import android.os.Message;
import android.view.ViewGroup;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.base.config.ControllerLayoutConfig;
import com.transsion.vishaplayersdk.gsyplayer.base.BasePlayerManager;
import com.transsion.vishaplayersdk.gsyplayer.base.cache.ICacheManager;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.model.GSYModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoOptionModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VishaAccountInfo;
import java.util.List;

public class VkPlayerManager extends BasePlayerManager {
    private static final String TAG = "VkPlayerManager";
    private VkPlayerImpl vkPlayer;

    @Override
    public void backToFront() {
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
        LogUtils.j(TAG, "getCurrentPosition()");
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            return vkPlayerImpl.getCurrentPosition();
        }
        return -1L;
    }

    @Override
    public long getCurrentPositionInMainThread() {
        LogUtils.j(TAG, "getCurrentPositionInMainThread()");
        return getCurrentPosition();
    }

    @Override
    public float getCurrentSpeed() {
        LogUtils.j(TAG, "getCurrentSpeed()");
        return this.vkPlayer != null ? 1.0f : 0.0f;
    }

    @Override
    public long getDuration() {
        LogUtils.j(TAG, "getDuration()");
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            return vkPlayerImpl.getDuration();
        }
        return -1L;
    }

    @Override
    public boolean getIsPausedByUser() {
        return false;
    }

    @Override
    public IMediaPlayer getMediaPlayer() {
        return this.vkPlayer;
    }

    @Override
    public long getNetSpeed() {
        return 0L;
    }

    @Override
    public List<VideoDefinition> getVideoDefinitions() {
        LogUtils.j(TAG, "getVideoDefinitions()");
        return null;
    }

    @Override
    public int getVideoHeight() {
        LogUtils.j(TAG, "getVideoHeight()");
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            return vkPlayerImpl.getVideoHeight();
        }
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
        LogUtils.j(TAG, "getVideoWidth()");
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            return vkPlayerImpl.getVideoWidth();
        }
        return 0;
    }

    @Override
    public void gotoBackground() {
    }

    @Override
    public void initVideoPlayer(Context context, Message message, List<VideoOptionModel> list, ICacheManager iCacheManager) {
        VkPlayerImpl vkPlayerImpl = new VkPlayerImpl();
        this.vkPlayer = vkPlayerImpl;
        vkPlayerImpl.setPlayerManager(this);
        GSYModel gSYModel = (GSYModel) message.obj;
        LogUtils.j(TAG, "initVideoPlayer:" + gSYModel);
        this.vkPlayer.initPlayer(context, gSYModel);
    }

    @Override
    public boolean isPlaying() {
        LogUtils.j(TAG, "isPlaying(): " + this);
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            return vkPlayerImpl.isPlaying();
        }
        return false;
    }

    @Override
    public boolean isSurfaceSupportLockCanvas() {
        return false;
    }

    @Override
    public void noticePlayViewMode(int i) {
        LogUtils.j(TAG, "noticePlayViewMode(): " + i);
    }

    @Override
    public void onActivityStart(boolean z) {
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            vkPlayerImpl.onActivityResume();
        }
    }

    @Override
    public void onActivityStop() {
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            vkPlayerImpl.onActivityPause();
        }
    }

    @Override
    public void pause() {
        LogUtils.j(TAG, "pause()");
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            vkPlayerImpl.pause();
        }
    }

    @Override
    public void release() {
        LogUtils.j(TAG, "release");
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            vkPlayerImpl.release();
        }
    }

    @Override
    public void releaseSurface() {
    }

    @Override
    public void replay() {
    }

    @Override
    public void seekTo(long j) {
        LogUtils.j(TAG, "seekTo(): " + j);
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            vkPlayerImpl.seekTo(j);
        }
    }

    @Override
    public void setAspectRatio(int i) {
        LogUtils.j(TAG, "setAspectRatio(): " + i);
    }

    @Override
    public void setBookMark(int i) {
    }

    @Override
    public void setCustomRenderer(Message message) {
        LogUtils.j(TAG, "setCustomRenderer:" + message);
        Object obj = message.obj;
        if (obj == null || this.vkPlayer == null) {
            return;
        }
        this.vkPlayer.layoutPlayController(ControllerLayoutConfig.ControllerLayoutConfigBuilder.aControllerLayoutConfig().withParentContainer((ViewGroup) obj).build());
    }

    @Override
    public void setFullScreen(boolean z) {
        LogUtils.j(TAG, "setFullScreen(): " + z);
    }

    @Override
    public void setNeedMute(boolean z) {
        LogUtils.j(TAG, "setNeedMute:" + z);
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            vkPlayerImpl.setMute(z);
        }
    }

    @Override
    public void setSpeed(float f, boolean z) {
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
    }

    @Override
    public void start() {
        LogUtils.j(TAG, "start()");
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            vkPlayerImpl.start();
        }
    }

    @Override
    public void stop() {
        LogUtils.j(TAG, "stop()");
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            vkPlayerImpl.stop();
        }
    }

    @Override
    public void switchResolution(int i) {
        LogUtils.j(TAG, "switchResolution(): " + i);
    }

    @Override
    public void switchSubtitleSource(int i) {
        LogUtils.j(TAG, "switchSubtitleSource(): " + i);
    }

    @Override
    public void togglePlay() {
        LogUtils.j(TAG, "togglePlay()");
        VkPlayerImpl vkPlayerImpl = this.vkPlayer;
        if (vkPlayerImpl != null) {
            vkPlayerImpl.togglePlay();
        }
    }
}
