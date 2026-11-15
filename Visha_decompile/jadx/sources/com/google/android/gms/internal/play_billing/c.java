package com.google.android.gms.internal.play_billing;

import defpackage.gcf;
import defpackage.sbf;
import java.util.Arrays;
import java.util.Objects;

public final class c extends sbf {
    public c() {
        super(4);
    }

    public final c b(Object obj) {
        obj.getClass();
        int length = this.a.length;
        int iA = gcf.a(length, this.b + 1);
        if (iA > length || this.c) {
            this.a = Arrays.copyOf(this.a, iA);
            this.c = false;
        }
        Object[] objArr = this.a;
        int i = this.b;
        this.b = i + 1;
        objArr[i] = obj;
        return this;
    }

    public final zzcf c() {
        int i = this.b;
        if (i == 0) {
            return zzcp.zza;
        }
        if (i == 1) {
            Object obj = this.a[0];
            Objects.requireNonNull(obj);
            return new zzcr(obj);
        }
        zzcf zzcfVarZzm = zzcf.zzm(i, this.a);
        this.b = zzcfVarZzm.size();
        this.c = true;
        return zzcfVarZzm;
    }
}
