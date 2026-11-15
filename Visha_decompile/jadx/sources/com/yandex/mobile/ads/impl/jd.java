package com.yandex.mobile.ads.impl;

public final class jd {
    private static volatile hd a;

    public static final le a() {
        hd hdVar;
        hd hdVar2 = a;
        if (hdVar2 != null) {
            return hdVar2;
        }
        synchronized (hd.b) {
            hdVar = a;
            if (hdVar == null) {
                int i = ms0.f;
                hdVar = new hd(ms0.a.a().c());
                a = hdVar;
            }
        }
        return hdVar;
    }
}
