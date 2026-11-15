package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.video.playback.model.SkipInfo;
import defpackage.y45;

public final class gn2 implements SkipInfo {
    private final od2 a;

    public gn2(od2 od2Var) {
        y45.j(od2Var, "skipInfo");
        this.a = od2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof gn2) && y45.e(this.a, ((gn2) obj).a);
    }

    @Override
    public final long getSkipOffset() {
        return this.a.a();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "YandexSkipInfo(skipInfo=" + this.a + ")";
    }
}
