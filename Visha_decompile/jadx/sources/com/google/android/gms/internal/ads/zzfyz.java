package com.google.android.gms.internal.ads;

import defpackage.s4i;
import defpackage.x5i;
import java.util.Iterator;

final class zzfyz extends zzfxb {
    final transient Object zza;

    public zzfyz(Object obj) {
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
        return new s4i(this.zza);
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
        objArr[i] = this.zza;
        return i + 1;
    }

    @Override
    public final zzfww zzd() {
        return zzfww.zzo(this.zza);
    }

    @Override
    public final x5i iterator() {
        return new s4i(this.zza);
    }

    @Override
    public final boolean zzf() {
        return false;
    }
}
