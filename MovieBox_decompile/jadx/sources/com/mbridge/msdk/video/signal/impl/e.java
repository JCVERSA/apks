package com.mbridge.msdk.video.signal.impl;

import com.mbridge.msdk.foundation.tools.o0;

public class e implements com.mbridge.msdk.video.signal.f, com.mbridge.msdk.video.signal.h {
    @Override
    public void configurationChanged(int i10, int i11, int i12) {
    }

    @Override
    public boolean endCardShowing() {
        o0.a("DefaultJSContainerModule", "endCardShowing");
        return true;
    }

    @Override
    public void hideAlertWebview() {
        o0.a("DefaultJSContainerModule", "hideAlertWebview ,msg=");
    }

    @Override
    public void ivRewardAdsWithoutVideo(String str) {
        o0.a("DefaultJSContainerModule", "ivRewardAdsWithoutVideo,params=");
    }

    @Override
    public boolean miniCardShowing() {
        o0.a("DefaultJSContainerModule", "miniCardShowing");
        return false;
    }

    @Override
    public void readyStatus(int i10) {
        o0.a("DefaultJSContainerModule", "readyStatus:isReady=" + i10);
    }

    @Override
    public void resizeMiniCard(int i10, int i11, int i12) {
        o0.a("DefaultJSContainerModule", "showMiniCard width = " + i10 + " height = " + i11 + " radius = " + i12);
    }

    @Override
    public boolean showAlertWebView() {
        o0.a("DefaultJSContainerModule", "showAlertWebView ,msg=");
        return false;
    }

    @Override
    public void showEndcard(int i10) {
        o0.a("DefaultJSContainerModule", "showEndcard,type=" + i10);
    }

    @Override
    public void showMiniCard(int i10, int i11, int i12, int i13, int i14) {
        o0.a("DefaultJSContainerModule", "showMiniCard top = " + i10 + " left = " + i11 + " width = " + i12 + " height = " + i13 + " radius = " + i14);
    }

    @Override
    public void showVideoClickView(int i10) {
        o0.a("DefaultJSContainerModule", "showVideoClickView:" + i10);
    }

    @Override
    public void showVideoEndCover() {
        o0.a("DefaultJSContainerModule", "showVideoEndCover");
    }
}
