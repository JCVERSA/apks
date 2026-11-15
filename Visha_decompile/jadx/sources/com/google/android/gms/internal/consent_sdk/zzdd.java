package com.google.android.gms.internal.consent_sdk;

import defpackage.zwf;
import java.util.Objects;

final class zzdd extends zzda {
    static final zzda zza = new zzdd(new Object[0], 0);
    public final transient int b;
    final transient Object[] zzb;

    public zzdd(Object[] objArr, int i) {
        this.zzb = objArr;
        this.b = i;
    }

    @Override
    public final Object get(int i) {
        zwf.a(i, this.b, "index");
        Object obj = this.zzb[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override
    public final int size() {
        return this.b;
    }

    @Override
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.b);
        return this.b;
    }

    @Override
    public final int zzb() {
        return this.b;
    }

    @Override
    public final int zzc() {
        return 0;
    }

    @Override
    public final Object[] zze() {
        return this.zzb;
    }
}
