package com.google.android.gms.internal.auth;

import java.util.ListIterator;

final class zzhb implements ListIterator {
    final ListIterator zza;
    final int zzb;
    final zzhd zzc;

    zzhb(zzhd zzhdVar, int i10) {
        this.zzc = zzhdVar;
        this.zzb = i10;
        this.zza = zzhdVar.zza.listIterator(i10);
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override
    public final boolean hasPrevious() {
        return this.zza.hasPrevious();
    }

    @Override
    public final Object next() {
        return (String) this.zza.next();
    }

    @Override
    public final int nextIndex() {
        return this.zza.nextIndex();
    }

    @Override
    public final Object previous() {
        return (String) this.zza.previous();
    }

    @Override
    public final int previousIndex() {
        return this.zza.previousIndex();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
