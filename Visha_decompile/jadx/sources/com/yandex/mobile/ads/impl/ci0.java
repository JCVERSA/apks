package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ci0 {
    private final int a;
    private final List<kf0> b;
    private final int c;

    @Nullable
    private final InputStream d;

    @Nullable
    private final byte[] e;

    public ci0(int i, ArrayList arrayList, int i2, InputStream inputStream) {
        this.a = i;
        this.b = arrayList;
        this.c = i2;
        this.d = inputStream;
        this.e = null;
    }

    @Nullable
    public final InputStream a() {
        InputStream inputStream = this.d;
        if (inputStream != null) {
            return inputStream;
        }
        if (this.e != null) {
            return new ByteArrayInputStream(this.e);
        }
        return null;
    }

    public final int b() {
        return this.c;
    }

    public final List<kf0> c() {
        return Collections.unmodifiableList(this.b);
    }

    public final int d() {
        return this.a;
    }

    public ci0(int i, ArrayList arrayList, byte[] bArr) {
        this.a = i;
        this.b = arrayList;
        this.c = bArr.length;
        this.e = bArr;
        this.d = null;
    }
}
