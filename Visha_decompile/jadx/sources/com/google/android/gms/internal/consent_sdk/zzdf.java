package com.google.android.gms.internal.consent_sdk;

import defpackage.k7g;
import defpackage.qbg;
import java.util.Iterator;

final class zzdf extends zzdb {
    final transient Object zza;

    public zzdf(Object obj) {
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
        return new k7g(this.zza);
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
    public final qbg iterator() {
        return new k7g(this.zza);
    }
}
