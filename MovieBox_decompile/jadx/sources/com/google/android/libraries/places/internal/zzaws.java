package com.google.android.libraries.places.internal;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

@Deprecated
public final class zzaws extends AbstractList implements RandomAccess, zzaun {
    private final zzaun zza;

    public zzaws(zzaun zzaunVar) {
        this.zza = zzaunVar;
    }

    @Override
    public final Object get(int i10) {
        return ((zzaum) this.zza).get(i10);
    }

    @Override
    public final Iterator iterator() {
        return new zzawr(this);
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return new zzawq(this, i10);
    }

    @Override
    public final int size() {
        return this.zza.size();
    }

    @Override
    public final Object zzf(int i10) {
        return this.zza.zzf(i10);
    }

    @Override
    public final List zzh() {
        return this.zza.zzh();
    }

    @Override
    public final void zzi(zzask zzaskVar) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final zzaun zze() {
        return this;
    }
}
