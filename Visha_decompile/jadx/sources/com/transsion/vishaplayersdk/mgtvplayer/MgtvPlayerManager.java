package com.transsion.vishaplayersdk.mgtvplayer;

import android.content.Context;
import android.os.Message;
import android.view.Surface;
import android.view.ViewGroup;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.VishaPlayerSDK;
import com.transsion.vishaplayersdk.base.config.ControllerLayoutConfig;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.gsyplayer.base.BasePlayerManager;
import com.transsion.vishaplayersdk.gsyplayer.base.cache.ICacheManager;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.model.GSYModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoOptionModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VishaAccountInfo;
import defpackage.r0a;
import java.util.List;

public class MgtvPlayerManager extends BasePlayerManager {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + MgtvPlayerManager.class.getSimpleName();
    private long currentPosition = 0;
    private MgtvPlayerImpl mgtvPlayerProxy;
    private Surface surface;

    public static void initMgtvPlayerCoreSDK(Context context, String str, String str2, String str3) {
        if (MgtvPlayerImpl.bMgtvSDKInited || context == null || r0a.g(str) || r0a.g(str2)) {
            return;
        }
        if (r0a.g(str3)) {
            str3 = "";
        }
        MgtvPlayerImpl.initMgtvPlayerCoreSDK(context, str, str2, str3);
    }

    @Override
    public void backToFront() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.backToFront();
        }
    }

    @Override
    public void changeAreaLanguage(int i, boolean z) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.changeAreaLanguage(i, z);
        }
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
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl == null) {
            return 0L;
        }
        long currentPosition = mgtvPlayerImpl.getCurrentPosition();
        this.currentPosition = currentPosition;
        return currentPosition;
    }

    @Override
    public float getCurrentSpeed() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            return mgtvPlayerImpl.getCurrentSpeed();
        }
        return 0.0f;
    }

    @Override
    public long getDuration() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            return mgtvPlayerImpl.getDuration();
        }
        return 0L;
    }

    @Override
    public boolean getIsPausedByUser() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            return mgtvPlayerImpl.getIsPausedByUser();
        }
        return false;
    }

    @Override
    public IMediaPlayer getMediaPlayer() {
        return this.mgtvPlayerProxy;
    }

    @Override
    public long getNetSpeed() {
        return 0L;
    }

    @Override
    public List<VideoDefinition> getVideoDefinitions() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            return mgtvPlayerImpl.getVideoDefinitions();
        }
        return null;
    }

    @Override
    public int getVideoHeight() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            return mgtvPlayerImpl.getVideoHeight();
        }
        return 0;
    }

    @Override
    public int getVideoSarDen() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            return mgtvPlayerImpl.getVideoSarDen();
        }
        return 1;
    }

    @Override
    public int getVideoSarNum() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            return mgtvPlayerImpl.getVideoSarNum();
        }
        return 1;
    }

    @Override
    public int getVideoWidth() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            return mgtvPlayerImpl.getVideoWidth();
        }
        return 0;
    }

    @Override
    public void gotoBackground() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.gotoBackground();
        }
    }

    @Override
    public void initVideoPlayer(Context context, Message message, List<VideoOptionModel> list, ICacheManager iCacheManager) throws Throwable {
        MgtvPlayerImpl mgtvPlayerImpl = new MgtvPlayerImpl();
        this.mgtvPlayerProxy = mgtvPlayerImpl;
        mgtvPlayerImpl.setPlayerManager(this);
        GSYModel gSYModel = (GSYModel) message.obj;
        LogUtils.j(TAG, "init video player:" + gSYModel);
        this.mgtvPlayerProxy.initMgTVPlayer(MgtvPlayerConfig.MgtvPlayerInitConfigBuilder.aMgtvPlayerInitConfig().withGaid(VishaPlayerSDK.getInstance().getDeviceId()).withOaid(VishaPlayerSDK.getInstance().getDeviceId()).withMid(MgtvConstant.mid).withToken(MgtvConstant.ch_token).withContentid(MgtvConstant.comm_content).withOpenAdFlag(true).withOpenContentFlag(true).withVideoId(gSYModel.getUrl()).withContext(VishaPlayerSDK.getInstance().getAPP()).withStartPosition(gSYModel.getStartPosition()).withPlayerInitConfig(gSYModel.getInitConfig()).withRenderType(gSYModel.isHardwareAccelerated() ? "1" : "2").build());
    }

    @Override
    public boolean isPlaying() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            return mgtvPlayerImpl.isPlaying();
        }
        return false;
    }

    @Override
    public boolean isSurfaceSupportLockCanvas() {
        return true;
    }

    @Override
    public void noticePlayViewMode(int i) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.noticePlayViewMode(i);
        }
    }

    @Override
    public void onActivityStart(boolean z) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.onActivityStart(z);
        }
    }

    @Override
    public void onActivityStop() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.onActivityStop();
        }
    }

    @Override
    public void pause() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.pause();
        }
    }

    @Override
    public void release() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            if (mgtvPlayerImpl.isPlaying()) {
                this.mgtvPlayerProxy.stop();
            }
            this.mgtvPlayerProxy.release();
        }
    }

    @Override
    public void releaseSurface() {
        if (this.surface != null) {
            this.surface = null;
        }
    }

    @Override
    public void replay() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.replay();
        }
    }

    @Override
    public void seekTo(long j) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.seekTo(j);
        }
    }

    @Override
    public void setAspectRatio(int i) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.setAspectRatio(i);
        }
    }

    @Override
    public void setBookMark(int i) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.setBookMark(i);
        }
    }

    @Override
    public void setCustomRenderer(Message message) {
        MgtvPlayerImpl mgtvPlayerImpl;
        Object obj = message.obj;
        if (obj == null && (mgtvPlayerImpl = this.mgtvPlayerProxy) != null) {
            mgtvPlayerImpl.setSurface(null);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) obj;
        if (this.mgtvPlayerProxy != null) {
            this.mgtvPlayerProxy.layoutPlayController(ControllerLayoutConfig.ControllerLayoutConfigBuilder.aControllerLayoutConfig().withParentContainer(viewGroup).build());
        }
    }

    @Override
    public void setFullScreen(boolean z) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.setFullScreen(z);
        }
    }

    @Override
    public void setNeedMute(boolean z) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.setMute(z);
        }
    }

    @Override
    public void setSpeed(float f, boolean z) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.setPlaySpeed(f);
        }
    }

    @Override
    public void setSpeedPlaying(float f, boolean z) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.setPlaySpeed(f);
        }
    }

    @Override
    public void setSubtitleBottomRatio(float f) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.setSubtitleBottomRatio(f);
        }
    }

    @Override
    public void setSubtitleSizeRatio(float f) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.setSubtitleSizeRatio(f);
        }
    }

    @Override
    public void setUserAccountInfo(VishaAccountInfo vishaAccountInfo) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.setUserAccountInfo(vishaAccountInfo);
        }
    }

    @Override
    public void showDisplay(Message message) {
    }

    @Override
    public void start() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.start();
        }
    }

    @Override
    public void stop() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.stop();
        }
    }

    @Override
    public void switchResolution(int i) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.switchResolution(i);
        }
    }

    @Override
    public void switchSubtitleSource(int i) {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.switchSubtitleSource(i);
        }
    }

    @Override
    public void togglePlay() {
        MgtvPlayerImpl mgtvPlayerImpl = this.mgtvPlayerProxy;
        if (mgtvPlayerImpl != null) {
            mgtvPlayerImpl.togglePlay();
        }
    }
}
