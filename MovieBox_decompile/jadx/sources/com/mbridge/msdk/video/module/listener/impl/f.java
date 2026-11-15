package com.mbridge.msdk.video.module.listener.impl;

import com.mbridge.msdk.foundation.tools.o0;

public class f implements com.mbridge.msdk.video.module.listener.a {
    @Override
    public void a(int i10, Object obj) {
        o0.b("NotifyListener", "onNotify,type=" + i10 + ",pt=" + obj);
    }
}
