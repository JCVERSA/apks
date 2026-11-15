package com.mgtv.ssp.control;

public interface c {
    void forceHide();

    int getCutoutHeight();

    boolean hasCutout();

    boolean isLocked();

    boolean isShowing();

    void setLocked(boolean z);

    void show();

    void startFadeOut();

    void startProgress();

    void stopFadeOut();

    void stopProgress();
}
