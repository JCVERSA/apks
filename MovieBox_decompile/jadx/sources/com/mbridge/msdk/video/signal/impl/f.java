package com.mbridge.msdk.video.signal.impl;

import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.video.module.MBridgeVideoView;

public class f implements com.mbridge.msdk.video.signal.g {
    @Override
    public void a(int i10) {
        o0.a("DefaultJSNotifyProxy", "onVideoStatusNotify:" + i10);
    }

    @Override
    public void a(int i10, String str) {
        o0.a("DefaultJSNotifyProxy", "onClick:" + i10 + ",pt:" + str);
    }

    @Override
    public void a(MBridgeVideoView.v vVar) {
        o0.a("DefaultJSNotifyProxy", "onProgressNotify:" + vVar.toString());
    }

    @Override
    public void a(Object obj) {
        o0.a("DefaultJSNotifyProxy", "onWebviewShow:" + obj);
    }

    @Override
    public void a(int i10, int i11, int i12, int i13) {
        o0.a("DefaultJSNotifyProxy", "showDataInfo");
    }
}
