package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class zzhd extends AbstractList implements RandomAccess, zzfe {
    private final zzfe zza;

    public zzhd(zzfe zzfeVar) {
        this.zza = zzfeVar;
    }

    @Override
    public final Object get(int i10) {
        return ((zzfd) this.zza).get(i10);
    }

    @Override
    public final Iterator iterator() {
        return new zzhc(this);
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return new zzhb(this, i10);
    }

    @Override
    public final int size() {
        return this.zza.size();
    }

    @Override
    public final List zzg() {
        return this.zza.zzg();
    }

    @Override
    public final zzfe zze() {
        return this;
    }
}
