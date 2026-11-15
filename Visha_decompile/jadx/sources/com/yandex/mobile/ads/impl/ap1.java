package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;

public final class ap1 {
    public static final ap1 b = new ap1(false);
    public final boolean a;

    public ap1(boolean z) {
        this.a = z;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && ap1.class == obj.getClass() && this.a == ((ap1) obj).a;
    }

    public final int hashCode() {
        return !this.a ? 1 : 0;
    }
}
