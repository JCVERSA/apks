package com.mgmi.ssp;

public interface NativeInnerListener {
    boolean isFullScreen();

    void onADFinish();

    void onClickBackButton();

    void onClickFullScreenButton();

    void onUpdateAdTime(int i);

    void onVideoADStart();
}
