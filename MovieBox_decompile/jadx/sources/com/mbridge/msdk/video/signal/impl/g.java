package com.mbridge.msdk.video.signal.impl;

import com.mbridge.msdk.foundation.tools.o0;

public class g implements com.mbridge.msdk.video.signal.i {
    @Override
    public void a(String str) {
        o0.a("js", "setOrientation,landscape=" + str);
    }

    @Override
    public String b() {
        o0.a("js", "getEndScreenInfo");
        return "{}";
    }

    @Override
    public void handlerPlayableException(String str) {
        o0.a("js", "handlerPlayableException，msg=" + str);
    }

    @Override
    public void notifyCloseBtn(int i10) {
        o0.a("js", "notifyCloseBtn,state=" + i10);
    }

    @Override
    public void toggleCloseBtn(int i10) {
        o0.a("js", "toggleCloseBtn,state=" + i10);
    }

    @Override
    public void triggerCloseBtn(String str) {
        o0.a("js", "triggerCloseBtn,state=" + str);
    }
}
