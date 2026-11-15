package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.io.IOException;

public class uv extends IOException {
    public static final int c = 0;
    public final int b;

    public uv(int i) {
        this.b = i;
    }

    public uv(int i, @Nullable String str) {
        super(str);
        this.b = i;
    }

    public uv(int i, @Nullable String str, @Nullable Throwable th) {
        super(str, th);
        this.b = i;
    }

    public uv(@Nullable Throwable th, int i) {
        super(th);
        this.b = i;
    }
}
