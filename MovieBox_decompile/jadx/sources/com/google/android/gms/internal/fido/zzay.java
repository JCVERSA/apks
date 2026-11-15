package com.google.android.gms.internal.fido;

import java.util.Iterator;

final class zzay extends zzau {
    final transient Object zza;

    zzay(Object obj) {
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
        return new zzav(this.zza);
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
    final int zza(Object[] objArr, int i10) {
        objArr[0] = this.zza;
        return 1;
    }

    @Override
    public final zzaz iterator() {
        return new zzav(this.zza);
    }
}
