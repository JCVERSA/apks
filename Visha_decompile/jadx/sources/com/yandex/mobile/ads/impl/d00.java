package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import java.io.FileNotFoundException;

public final class d00 implements ds0 {
    public d00() {
        this(0);
    }

    @Override
    public final int a(int i) {
        return i == 7 ? 6 : 3;
    }

    public d00(int i) {
    }

    @Override
    public final long a(ds0.a aVar) {
        Throwable cause = aVar.a;
        if (!(cause instanceof eg1) && !(cause instanceof FileNotFoundException) && !(cause instanceof qh0) && !(cause instanceof hs0.g)) {
            int i = uv.c;
            while (cause != null) {
                if (!(cause instanceof uv) || ((uv) cause).b != 2008) {
                    cause = cause.getCause();
                }
            }
            return Math.min((aVar.b - 1) * 1000, 5000);
        }
        return C.TIME_UNSET;
    }
}
