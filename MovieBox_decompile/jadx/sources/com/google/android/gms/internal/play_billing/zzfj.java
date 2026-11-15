package com.google.android.gms.internal.play_billing;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class zzfj extends zzdh implements RandomAccess, zzfk {

    @Deprecated
    public static final zzfk zza;
    private static final zzfj zzb;
    private final List zzc;

    static {
        zzfj zzfjVar = new zzfj(false);
        zzb = zzfjVar;
        zza = zzfjVar;
    }

    public zzfj() {
        this(10);
    }

    private static String zzi(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        return obj instanceof zzdw ? ((zzdw) obj).zzm(zzfd.zzb) : zzfd.zzd((byte[]) obj);
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
        if (collection instanceof zzfk) {
            collection = ((zzfk) collection).zzh();
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
        return zzi(objRemove);
    }

    @Override
    public final Object set(int i10, Object obj) {
        zza();
        return zzi(this.zzc.set(i10, (String) obj));
    }

    @Override
    public final int size() {
        return this.zzc.size();
    }

    @Override
    public final zzfc zzd(int i10) {
        if (i10 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i10);
        arrayList.addAll(this.zzc);
        return new zzfj(arrayList);
    }

    @Override
    public final zzfk zze() {
        return zzc() ? new zzhi(this) : this;
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
        if (obj instanceof zzdw) {
            zzdw zzdwVar = (zzdw) obj;
            String strZzm = zzdwVar.zzm(zzfd.zzb);
            if (zzdwVar.zzi()) {
                this.zzc.set(i10, strZzm);
            }
            return strZzm;
        }
        byte[] bArr = (byte[]) obj;
        String strZzd = zzfd.zzd(bArr);
        if (zzhs.zzd(bArr)) {
            this.zzc.set(i10, strZzd);
        }
        return strZzd;
    }

    @Override
    public final List zzh() {
        return Collections.unmodifiableList(this.zzc);
    }

    public zzfj(int i10) {
        ArrayList arrayList = new ArrayList(i10);
        super(true);
        this.zzc = arrayList;
    }

    private zzfj(ArrayList arrayList) {
        super(true);
        this.zzc = arrayList;
    }

    private zzfj(boolean z10) {
        super(false);
        this.zzc = Collections.emptyList();
    }

    @Override
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
