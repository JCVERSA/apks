package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class zzfd extends zzdq implements RandomAccess, zzfe {
    public static final zzfe zza;
    private static final zzfd zzb;
    private final List zzc;

    static {
        zzfd zzfdVar = new zzfd(10);
        zzb = zzfdVar;
        zzfdVar.zzb();
        zza = zzfdVar;
    }

    public zzfd() {
        this(10);
    }

    private static String zzh(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        return obj instanceof zzee ? ((zzee) obj).zzm(zzez.zzb) : zzez.zzh((byte[]) obj);
    }

    @Override
    public final void add(int i10, Object obj) {
        zza();
        this.zzc.add(i10, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override
    public final boolean addAll(int i10, Collection collection) {
        zza();
        if (collection instanceof zzfe) {
            collection = ((zzfe) collection).zzg();
        }
        boolean zAddAll = this.zzc.addAll(i10, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override
    public final void clear() {
        zza();
        this.zzc.clear();
        ((AbstractList) this).modCount++;
    }

    @Override
    public final Object remove(int i10) {
        zza();
        Object objRemove = this.zzc.remove(i10);
        ((AbstractList) this).modCount++;
        return zzh(objRemove);
    }

    @Override
    public final Object set(int i10, Object obj) {
        zza();
        return zzh(this.zzc.set(i10, (String) obj));
    }

    @Override
    public final int size() {
        return this.zzc.size();
    }

    @Override
    public final zzey zzd(int i10) {
        if (i10 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i10);
        arrayList.addAll(this.zzc);
        return new zzfd(arrayList);
    }

    @Override
    public final zzfe zze() {
        return zzc() ? new zzhd(this) : this;
    }

    @Override
    public final String get(int i10) {
        Object obj = this.zzc.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzee) {
            zzee zzeeVar = (zzee) obj;
            String strZzm = zzeeVar.zzm(zzez.zzb);
            if (zzeeVar.zzh()) {
                this.zzc.set(i10, strZzm);
            }
            return strZzm;
        }
        byte[] bArr = (byte[]) obj;
        String strZzh = zzez.zzh(bArr);
        if (zzez.zzi(bArr)) {
            this.zzc.set(i10, strZzh);
        }
        return strZzh;
    }

    @Override
    public final List zzg() {
        return Collections.unmodifiableList(this.zzc);
    }

    public zzfd(int i10) {
        this.zzc = new ArrayList(i10);
    }

    private zzfd(ArrayList arrayList) {
        this.zzc = arrayList;
    }

    @Override
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
