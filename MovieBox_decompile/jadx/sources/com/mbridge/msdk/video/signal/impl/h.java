package com.mbridge.msdk.video.signal.impl;

import com.mbridge.msdk.foundation.tools.o0;

public class h implements com.mbridge.msdk.video.signal.j {
    @Override
    public void alertWebViewShowed() {
        o0.a("DefaultJSVideoModule", "alertWebViewShowed:");
    }

    @Override
    public void closeVideoOperate(int i10, int i11) {
        o0.a("DefaultJSVideoModule", "closeOperte:close=" + i10 + "closeViewVisible=" + i11);
    }

    @Override
    public void dismissAllAlert() {
        o0.a("DefaultJSVideoModule", "dismissAllAlert");
    }

    @Override
    public int getBorderViewHeight() {
        return 0;
    }

    @Override
    public int getBorderViewLeft() {
        return 0;
    }

    @Override
    public int getBorderViewRadius() {
        return 0;
    }

    @Override
    public int getBorderViewTop() {
        return 0;
    }

    @Override
    public int getBorderViewWidth() {
        return 0;
    }

    @Override
    public String getCurrentProgress() {
        o0.a("DefaultJSVideoModule", "getCurrentProgress");
        return "{}";
    }

    @Override
    public void hideAlertView(int i10) {
        o0.a("DefaultJSVideoModule", "hideAlertView:");
    }

    @Override
    public boolean isH5Canvas() {
        return false;
    }

    @Override
    public void notifyCloseBtn(int i10) {
        o0.a("DefaultJSVideoModule", "notifyCloseBtn:" + i10);
    }

    @Override
    public void progressBarOperate(int i10) {
        o0.a("DefaultJSVideoModule", "progressBarOperate:progressViewVisible=" + i10);
    }

    @Override
    public void progressOperate(int i10, int i11) {
        o0.a("DefaultJSVideoModule", "progressOperate:progress=" + i10 + "progressViewVisible=" + i11);
    }

    @Override
    public void setCover(boolean z10) {
        o0.a("DefaultJSVideoModule", "setCover:" + z10);
    }

    @Override
    public void setMiniEndCardState(boolean z10) {
        o0.a("DefaultJSVideoModule", "setMiniEndCardState");
    }

    @Override
    public void setScaleFitXY(int i10) {
        o0.a("DefaultJSVideoModule", "setScaleFitXY:" + i10);
    }

    @Override
    public void setVisible(int i10) {
        o0.a("DefaultJSVideoModule", "setVisible:" + i10);
    }

    @Override
    public void showAlertView() {
        o0.a("DefaultJSVideoModule", "showAlertView:");
    }

    @Override
    public void showIVRewardAlertView(String str) {
        o0.a("DefaultJSVideoModule", "showAlertView:");
    }

    @Override
    public void showVideoLocation(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        o0.a("DefaultJSVideoModule", "showVideoLocation:marginTop=" + i10 + ",marginLeft=" + i11 + ",width=" + i12 + ",height=" + i13 + ",radius=" + i14 + ",borderTop=" + i15 + ",borderTop=" + i15 + ",borderLeft=" + i16 + ",borderWidth=" + i17 + ",borderHeight=" + i18);
    }

    @Override
    public void soundOperate(int i10, int i11) {
        o0.a("DefaultJSVideoModule", "soundOperate:mute=" + i10 + ",soundViewVisible=" + i11);
    }

    @Override
    public void videoOperate(int i10) {
        o0.a("DefaultJSVideoModule", "videoOperate:" + i10);
    }

    @Override
    public void soundOperate(int i10, int i11, String str) {
        o0.a("DefaultJSVideoModule", "soundOperate:mute=" + i10 + ",soundViewVisible=" + i11 + ",pt=" + str);
    }
}
