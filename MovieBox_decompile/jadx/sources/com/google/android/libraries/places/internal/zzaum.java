package com.google.android.libraries.places.internal;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class zzaum extends zzarw implements RandomAccess, zzaun {

    @Deprecated
    public static final zzaun zza;
    private static final zzaum zzb;
    private final List zzc;

    static {
        zzaum zzaumVar = new zzaum(false);
        zzb = zzaumVar;
        zza = zzaumVar;
    }

    public zzaum() {
        this(10);
    }

    private static String zzj(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        return obj instanceof zzask ? ((zzask) obj).zzm(zzaud.zzb) : zzaud.zzd((byte[]) obj);
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
        if (collection instanceof zzaun) {
            collection = ((zzaun) collection).zzh();
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
        return zzj(objRemove);
    }

    @Override
    public final Object set(int i10, Object obj) {
        zza();
        return zzj(this.zzc.set(i10, (String) obj));
    }

    @Override
    public final int size() {
        return this.zzc.size();
    }

    @Override
    public final zzauc zzd(int i10) {
        if (i10 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i10);
        arrayList.addAll(this.zzc);
        return new zzaum(arrayList);
    }

    @Override
    public final zzaun zze() {
        return zzc() ? new zzaws(this) : this;
    }

    @Override
    public final Object zzf(int i10) {
        return this.zzc.get(i10);
    }

    @Override
    public final String get(int i10) {
        Object obj = this.zzc.get(i10);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzask) {
            zzask zzaskVar = (zzask) obj;
            String strZzm = zzaskVar.zzm(zzaud.zzb);
            if (zzaskVar.zzi()) {
                this.zzc.set(i10, strZzm);
            }
            return strZzm;
        }
        byte[] bArr = (byte[]) obj;
        String strZzd = zzaud.zzd(bArr);
        if (zzaxc.zze(bArr)) {
            this.zzc.set(i10, strZzd);
        }
        return strZzd;
    }

    @Override
    public final List zzh() {
        return Collections.unmodifiableList(this.zzc);
    }

    @Override
    public final void zzi(zzask zzaskVar) {
        zza();
        this.zzc.add(zzaskVar);
        ((AbstractList) this).modCount++;
    }

    public zzaum(int i10) {
        ArrayList arrayList = new ArrayList(i10);
        super(true);
        this.zzc = arrayList;
    }

    private zzaum(ArrayList arrayList) {
        super(true);
        this.zzc = arrayList;
    }

    private zzaum(boolean z10) {
        super(false);
        this.zzc = Collections.emptyList();
    }

    @Override
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
