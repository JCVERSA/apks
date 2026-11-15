package com.google.android.libraries.places.internal;

import java.util.ListIterator;

final class zzawq implements ListIterator {
    final ListIterator zza;
    final int zzb;
    final zzaws zzc;

    zzawq(zzaws zzawsVar, int i10) {
        this.zzb = i10;
        this.zzc = zzawsVar;
        this.zza = zzawsVar.zza.listIterator(i10);
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
