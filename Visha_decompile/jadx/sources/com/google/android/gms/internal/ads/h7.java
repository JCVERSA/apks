package com.google.android.gms.internal.ads;

import defpackage.a4i;
import defpackage.v2i;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

public abstract class h7 implements Iterator {
    public int b;
    public int c;
    public int d = -1;
    public final zzfwf e;

    public h7(zzfwf zzfwfVar, a4i a4iVar) {
        this.e = zzfwfVar;
        this.b = zzfwfVar.c;
        this.c = zzfwfVar.zze();
    }

    public abstract Object a(int i);

    public final void b() {
        if (this.e.c != this.b) {
            throw new ConcurrentModificationException();
        }
    }

    @Override
    public final boolean hasNext() {
        return this.c >= 0;
    }

    @Override
    public final Object next() {
        b();
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.c;
        this.d = i;
        Object objA = a(i);
        this.c = this.e.zzf(this.c);
        return objA;
    }

    @Override
    public final void remove() {
        b();
        v2i.m(this.d >= 0, "no calls to next() since the last call to remove()");
        this.b += 32;
        int i = this.d;
        zzfwf zzfwfVar = this.e;
        zzfwfVar.remove(zzfwf.zzg(zzfwfVar, i));
        this.c--;
        this.d = -1;
    }
}
