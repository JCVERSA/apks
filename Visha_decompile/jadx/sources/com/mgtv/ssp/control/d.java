package com.mgtv.ssp.control;

public interface d {
    int getBufferedPercentage();

    float getCurrentPlaySpeed();

    int getCurrentPosition();

    int getPlayerStatus();

    int getVideoDuration();

    int getVideoTotalTime();

    boolean isFullScreen();

    boolean isPlaying();

    void lockScreen(boolean z);

    void reStart();

    void seekTo(int i);

    String setMute(boolean z);

    void start();

    void switchFullScreen(boolean z);

    void togglePlay();
}
