package com.google.android.libraries.places.internal;

import java.util.ListIterator;

abstract class zzow extends zzov implements ListIterator {
    zzow(ListIterator listIterator) {
        super(listIterator);
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Iterator, java.util.ListIterator] */
    @Override
    public final boolean hasPrevious() {
        return this.zzb.hasPrevious();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Iterator, java.util.ListIterator] */
    @Override
    public final int nextIndex() {
        return this.zzb.nextIndex();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Iterator, java.util.ListIterator] */
    @Override
    public final Object previous() {
        return zza(this.zzb.previous());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Iterator, java.util.ListIterator] */
    @Override
    public final int previousIndex() {
        return this.zzb.previousIndex();
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
