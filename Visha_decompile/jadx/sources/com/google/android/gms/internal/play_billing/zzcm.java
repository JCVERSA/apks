package com.google.android.gms.internal.play_billing;

import defpackage.xvf;
import java.util.Iterator;

final class zzcm extends zzcf {
    public final transient zzcd b;
    public final transient zzca c;

    public zzcm(zzcd zzcdVar, zzca zzcaVar) {
        this.b = zzcdVar;
        this.c = zzcaVar;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.b.get(obj) != null;
    }

    @Override
    public final Iterator iterator() {
        return this.c.listIterator(0);
    }

    @Override
    public final int size() {
        return this.b.size();
    }

    @Override
    public final int zza(Object[] objArr, int i) {
        return this.c.zza(objArr, 0);
    }

    @Override
    public final zzca zzd() {
        return this.c;
    }

    @Override
    public final xvf iterator() {
        return this.c.listIterator(0);
    }

    @Override
    public final boolean zzf() {
        throw null;
    }
}
