package com.cloud.tmc.integration.ui.action;

public interface TitleBarAction {
    void changeNavigationBarProgress(int i10, int i11, long j10);

    boolean getNavigationBarProgressUpdateStatus();

    void hideNavigationBarLoading();

    void setCapsuleStyle(boolean z10);

    void setNavigationBarIconStyle(boolean z10);

    void showNavigationBarLoading();
}
