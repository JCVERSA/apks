package com.google.android.gms.internal.ads;

import defpackage.v2i;
import java.util.Objects;

final class zzfym extends zzfww {
    public final transient Object[] b;
    public final transient int c;
    public final transient int d;

    public zzfym(Object[] objArr, int i, int i2) {
        this.b = objArr;
        this.c = i;
        this.d = i2;
    }

    @Override
    public final Object get(int i) {
        v2i.a(i, this.d, "index");
        Object obj = this.b[i + i + this.c];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override
    public final int size() {
        return this.d;
    }

    @Override
    public final boolean zzf() {
        return true;
    }
}
