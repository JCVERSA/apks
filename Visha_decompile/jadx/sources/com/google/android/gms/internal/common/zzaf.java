package com.google.android.gms.internal.common;

import defpackage.mij;
import java.util.List;

final class zzaf extends zzah {
    public final transient zzah b;

    public zzaf(zzah zzahVar) {
        this.b = zzahVar;
    }

    public final int b(int i) {
        return (this.b.size() - 1) - i;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.b.contains(obj);
    }

    @Override
    public final Object get(int i) {
        zzah zzahVar = this.b;
        mij.b(i, zzahVar.size(), "index");
        return zzahVar.get(b(i));
    }

    @Override
    public final int indexOf(Object obj) {
        int iLastIndexOf = this.b.lastIndexOf(obj);
        if (iLastIndexOf >= 0) {
            return b(iLastIndexOf);
        }
        return -1;
    }

    @Override
    public final int lastIndexOf(Object obj) {
        int iIndexOf = this.b.indexOf(obj);
        if (iIndexOf >= 0) {
            return b(iIndexOf);
        }
        return -1;
    }

    @Override
    public final int size() {
        return this.b.size();
    }

    @Override
    public final List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override
    public final boolean zzf() {
        return this.b.zzf();
    }

    @Override
    public final zzah zzh() {
        return this.b;
    }

    @Override
    public final zzah subList(int i, int i2) {
        zzah zzahVar = this.b;
        mij.d(i, i2, zzahVar.size());
        return zzahVar.subList(zzahVar.size() - i2, zzahVar.size() - i).zzh();
    }
}
