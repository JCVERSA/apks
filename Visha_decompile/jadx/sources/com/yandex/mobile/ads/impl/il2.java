package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.common.AdError;
import defpackage.y45;

public final class il2 implements AdError {
    private final String a;

    public il2(String str) {
        y45.j(str, "description");
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof il2) && y45.e(this.a, ((il2) obj).a);
    }

    @Override
    public final String getDescription() {
        return this.a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "YandexAdError(description=" + this.a + ")";
    }
}
