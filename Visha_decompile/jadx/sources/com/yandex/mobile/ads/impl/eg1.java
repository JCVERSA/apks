package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.io.IOException;

public class eg1 extends IOException {
    public final boolean b;
    public final int c;

    public eg1(@Nullable String str, @Nullable Exception exc, boolean z, int i) {
        super(str, exc);
        this.b = z;
        this.c = i;
    }

    public static eg1 a(@Nullable String str, @Nullable IllegalArgumentException illegalArgumentException) {
        return new eg1(str, illegalArgumentException, true, 0);
    }

    public static eg1 a(@Nullable String str, @Nullable Exception exc) {
        return new eg1(str, exc, true, 1);
    }

    public static eg1 a(@Nullable String str) {
        return new eg1(str, null, false, 1);
    }
}
