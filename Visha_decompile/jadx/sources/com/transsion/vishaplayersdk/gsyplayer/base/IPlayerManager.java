package com.transsion.vishaplayersdk.gsyplayer.base;

import android.content.Context;
import android.os.Message;
import com.transsion.vishaplayersdk.gsyplayer.base.cache.ICacheManager;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoOptionModel;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VishaAccountInfo;
import java.util.List;

public interface IPlayerManager {
    void backToFront();

    void changeAreaLanguage(int i, boolean z);

    int getBufferedPercentage();

    long getCurrentPosition();

    long getCurrentPositionInMainThread();

    float getCurrentSpeed();

    long getDuration();

    boolean getIsPausedByUser();

    IMediaPlayer getMediaPlayer();

    long getNetSpeed();

    List<VideoDefinition> getVideoDefinitions();

    int getVideoHeight();

    int getVideoSarDen();

    int getVideoSarNum();

    int getVideoWidth();

    void gotoBackground();

    void initVideoPlayer(Context context, Message message, List<VideoOptionModel> list, ICacheManager iCacheManager);

    boolean isPlaying();

    boolean isSurfaceSupportLockCanvas();

    void noticePlayViewMode(int i);

    void onActivityStart(boolean z);

    void onActivityStop();

    void pause();

    void release();

    void releaseSurface();

    void replay();

    void seekTo(long j);

    void setAspectRatio(int i);

    void setBookMark(int i);

    void setCustomRenderer(Message message);

    void setFullScreen(boolean z);

    void setNeedMute(boolean z);

    void setPlayerManagerListener(IPlayerManagerListener iPlayerManagerListener);

    void setSpeed(float f, boolean z);

    void setSpeedPlaying(float f, boolean z);

    void setSubtitleBottomRatio(float f);

    void setSubtitleSizeRatio(float f);

    void setUserAccountInfo(VishaAccountInfo vishaAccountInfo);

    void showDisplay(Message message);

    void start();

    void stop();

    void switchResolution(int i);

    void switchSubtitleSource(int i);

    void togglePlay();
}
