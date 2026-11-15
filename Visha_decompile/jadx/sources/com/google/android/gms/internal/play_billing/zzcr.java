package com.google.android.gms.internal.play_billing;

import defpackage.blf;
import defpackage.xvf;
import java.util.Iterator;

final class zzcr extends zzcf {
    final transient Object zza;

    public zzcr(Object obj) {
        obj.getClass();
        this.zza = obj;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override
    public final Iterator iterator() {
        return new blf(this.zza);
    }

    @Override
    public final int size() {
        return 1;
    }

    @Override
    public final String toString() {
        return "[" + this.zza.toString() + "]";
    }

    @Override
    public final int zza(Object[] objArr, int i) {
        objArr[0] = this.zza;
        return 1;
    }

    @Override
    public final zzca zzd() {
        return zzca.zzl(this.zza);
    }

    @Override
    public final xvf iterator() {
        return new blf(this.zza);
    }

    @Override
    public final boolean zzf() {
        throw null;
    }
}
