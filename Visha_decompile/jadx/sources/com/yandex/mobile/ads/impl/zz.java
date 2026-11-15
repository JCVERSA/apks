package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class zz {
    private final ln0 a;

    public zz(aj1 aj1Var) {
        y45.j(aj1Var, "playerVolumeProvider");
        ln0.a aVar = new ln0.a();
        float volume = aj1Var.getVolume();
        if (volume == 0.0f) {
            aVar.a(1.0f);
            aVar.b(true);
        } else {
            aVar.a(volume);
            aVar.b(false);
        }
        this.a = aVar.a();
    }

    public final ln0 a() {
        return this.a;
    }
}
