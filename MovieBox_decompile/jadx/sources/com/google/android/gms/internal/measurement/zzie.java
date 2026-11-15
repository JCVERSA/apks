package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

abstract class zzie<E> extends AbstractList<E> implements zzkc<E> {
    private boolean zza;

    zzie(boolean z10) {
        this.zza = z10;
    }

    @Override
    public void add(int i10, E e10) {
        zza();
        super.add(i10, e10);
    }

    @Override
    public boolean addAll(Collection<? extends E> collection) {
        zza();
        return super.addAll(collection);
    }

    @Override
    public void clear() {
        zza();
        super.clear();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        for (int i10 = 0; i10 < size; i10++) {
            if (!get(i10).equals(list.get(i10))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i10 = 0; i10 < size; i10++) {
            iHashCode = (iHashCode * 31) + get(i10).hashCode();
        }
        return iHashCode;
    }

    @Override
    public E remove(int i10) {
        zza();
        return (E) super.remove(i10);
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        zza();
        return super.removeAll(collection);
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        zza();
        return super.retainAll(collection);
    }

    @Override
    public E set(int i10, E e10) {
        zza();
        return (E) super.set(i10, e10);
    }

    protected final void zza() {
        if (!this.zza) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public final void zzb() {
        if (this.zza) {
            this.zza = false;
        }
    }

    @Override
    public final boolean zzc() {
        return this.zza;
    }

    @Override
    public boolean add(E e10) {
        zza();
        return super.add(e10);
    }

    @Override
    public boolean addAll(int i10, Collection<? extends E> collection) {
        zza();
        return super.addAll(i10, collection);
    }

    @Override
    public boolean remove(Object obj) {
        zza();
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }
}
