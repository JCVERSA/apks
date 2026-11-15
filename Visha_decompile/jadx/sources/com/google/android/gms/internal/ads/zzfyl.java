package com.google.android.gms.internal.ads;

import defpackage.x5i;
import java.util.Iterator;

final class zzfyl extends zzfxb {
    public final transient zzfwz b;
    public final transient zzfww c;

    public zzfyl(zzfwz zzfwzVar, zzfww zzfwwVar) {
        this.b = zzfwzVar;
        this.c = zzfwwVar;
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
        return this.c.zza(objArr, i);
    }

    @Override
    public final zzfww zzd() {
        return this.c;
    }

    @Override
    public final x5i iterator() {
        return this.c.listIterator(0);
    }

    @Override
    public final boolean zzf() {
        return true;
    }
}
