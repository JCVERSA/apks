package com.transsion.vishaplayersdk.gsyplayer;

import android.content.Context;
import android.view.Surface;
import android.view.ViewGroup;
import com.transsion.vishaplayersdk.base.config.PlayerInitConfig;
import com.transsion.vishaplayersdk.gsyplayer.base.IPlayerManager;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VishaAccountInfo;
import com.transsion.vishaplayersdk.gsyplayer.listener.GSYMediaPlayerListener;
import java.io.File;
import java.util.List;
import java.util.Map;

public interface GSYVideoViewBridge {
    void backToFront();

    void changeAreaLanguage(int i, boolean z);

    void clearCache(Context context, File file, String str);

    int getBufferedPercentage();

    long getCurrentPosition();

    long getCurrentPositionInMainThread();

    float getCurrentSpeed();

    int getCurrentVideoHeight();

    int getCurrentVideoWidth();

    long getDuration();

    boolean getIsPausedByUser();

    int getLastState();

    long getNetSpeed();

    int getPlayPosition();

    String getPlayTag();

    IPlayerManager getPlayer();

    int getRotateInfoFlag();

    List<VideoDefinition> getVideoDefinitions();

    int getVideoHeight();

    int getVideoSarDen();

    int getVideoSarNum();

    int getVideoWidth();

    void gotoBackground();

    boolean isCacheFile();

    boolean isPlaying();

    boolean isSurfaceSupportLockCanvas();

    GSYMediaPlayerListener lastListener();

    GSYMediaPlayerListener listener();

    void noticePlayViewMode(int i);

    void onActivityStart(boolean z);

    void onActivityStop();

    void pause();

    void prepare(String str, Map<String, String> map, boolean z, float f, boolean z2, File file, String str2, int i, boolean z3, PlayerInitConfig playerInitConfig);

    void releaseMediaPlayer();

    void releaseSurface(Surface surface);

    void replay();

    void seekTo(long j);

    void setAspectRatio(int i);

    void setCurrentVideoHeight(int i);

    void setCurrentVideoWidth(int i);

    void setCustomRenderer(ViewGroup viewGroup);

    void setDisplay(Surface surface);

    void setFullScreen(boolean z);

    void setLastListener(GSYMediaPlayerListener gSYMediaPlayerListener);

    void setLastState(int i);

    void setListener(GSYMediaPlayerListener gSYMediaPlayerListener);

    void setPlayPosition(int i);

    void setPlayTag(String str);

    void setSpeed(float f, boolean z);

    void setSubtitleBottomRatio(float f);

    void setSubtitleSizeRatio(float f);

    void setUserAccountInfo(VishaAccountInfo vishaAccountInfo);

    void setVideoDefinitions(List<VideoDefinition> list);

    void start();

    void stop();

    void switchResolution(int i);

    void switchSubtitleSource(int i);

    void togglePlay();
}
