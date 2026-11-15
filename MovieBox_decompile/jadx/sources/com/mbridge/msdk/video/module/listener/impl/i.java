package com.mbridge.msdk.video.module.listener.impl;

public class i extends f {

    protected com.mbridge.msdk.video.module.listener.a f38626a;

    public i(com.mbridge.msdk.video.module.listener.a aVar) {
        this.f38626a = aVar;
    }

    @Override
    public void a(int i10, Object obj) {
        super.a(i10, obj);
        com.mbridge.msdk.video.module.listener.a aVar = this.f38626a;
        if (aVar != null) {
            aVar.a(i10, obj);
        }
    }
}
