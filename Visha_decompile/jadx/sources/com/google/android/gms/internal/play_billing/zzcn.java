package com.google.android.gms.internal.play_billing;

import defpackage.y4f;
import java.util.Objects;

final class zzcn extends zzca {
    public final transient Object[] b;
    public final transient int c;
    public final transient int d;

    public zzcn(Object[] objArr, int i, int i2) {
        this.b = objArr;
        this.c = i;
        this.d = i2;
    }

    @Override
    public final Object get(int i) {
        y4f.a(i, this.d, "index");
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
