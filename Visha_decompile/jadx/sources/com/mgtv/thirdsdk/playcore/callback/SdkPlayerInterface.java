package com.mgtv.thirdsdk.playcore.callback;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mgtv.ssp.authbase.MgSspAccountCallback;
import com.mgtv.ssp.c;
import com.mgtv.ssp.play.bean.SubTitleData;
import com.mgtv.thirdsdk.playcore.d;
import com.mgtv.thirdsdk.playcore.e;
import com.mgtv.thirdsdk.playcore.f;
import java.util.Map;

public interface SdkPlayerInterface {
    void adClick();

    void changeDefination(int i);

    int getAdTotalDuration();

    int getBufferedPercentage();

    int getBufferingPosition();

    ViewGroup getControlLayout();

    int getCurrentDefinition();

    int getCurrentPosition();

    SubTitleData getCurrentSubtitleSource();

    int getDefaultDefinition();

    Map<Integer, Long> getDefinitionSizeMap();

    View getDisPlayView();

    long getLoadingSpeed();

    float getPlaySpeed();

    e getPlayerData();

    int getPlayerStatus();

    int getRealDuration();

    String getVersion();

    int getVideoDuration();

    int getVideoHeight();

    int getVideoPreDuration();

    int getVideoWidth();

    void init(Context context);

    boolean isFullScreen();

    boolean isLocalPlay();

    boolean isPlaying();

    boolean isPreview();

    boolean isSupport3X();

    void lockScreen(boolean z);

    void noticeAdScreenChange(boolean z);

    void noticePlayViewMode(int i);

    void onActivityStart(boolean z);

    void onActivityStop();

    void onPause();

    void onResume();

    void pause();

    void play();

    void playByUser();

    void release();

    void seekTo(int i);

    void setActivity(Activity activity);

    void setAspectRatio(int i);

    void setBookmark(int i);

    void setBufferStatus(boolean z);

    void setDefaultDefination(int i);

    void setFrom(String str);

    void setJumpBeforeOrEnd(boolean z);

    void setMute(boolean z);

    void setOnAdListener(MgtvPlayerListener.AdListener adListener);

    void setOnAuthResultListener(MgtvPlayerListener.AuthResultListener authResultListener);

    void setOnErrorListener(MgtvPlayerListener.ErrorListener errorListener);

    void setOnSourcePrepareListener(c cVar);

    void setOnStopAdListener(MgtvPlayerListener.AdStopListener adStopListener);

    void setOnVideoListener(MgtvPlayerListener.VideoListener videoListener);

    void setPlaySpeed(float f);

    void setPlayStatusChangeListener(d dVar);

    void setRequestPauseAd(boolean z);

    void setScreenOrientationChangeListener(f fVar);

    void setSspAccountCallback(MgSspAccountCallback mgSspAccountCallback);

    void setSspVipCallback(com.mgtv.ssp.authbase.c cVar);

    void setSupportChangeOrientation(boolean z);

    void setSupportChangeScreenMode(boolean z);

    void setVolumeProcess(com.mgtv.thirdsdk.playcore.c.InterfaceC0188c interfaceC0188c);

    void start();

    void startLivePlayer(String str, String str2);

    void startLocalPlayer(String str);

    void startPlayer(String str, String str2);

    void stop();

    void switchFullScreen(boolean z);

    void switchFullscreenByAd(boolean z);

    void switchSubtitleSource(int i);
}
