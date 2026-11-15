package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

public class z6 implements Iterator {
    public final Iterator b;
    public final Collection c;
    public final a7 d;

    public z6(a7 a7Var, Iterator it) {
        this.d = a7Var;
        this.c = a7Var.c;
        this.b = it;
    }

    public final void a() {
        a7 a7Var = this.d;
        a7Var.zzb();
        if (a7Var.c != this.c) {
            throw new ConcurrentModificationException();
        }
    }

    @Override
    public final boolean hasNext() {
        a();
        return this.b.hasNext();
    }

    @Override
    public final Object next() {
        a();
        return this.b.next();
    }

    @Override
    public final void remove() {
        this.b.remove();
        a7 a7Var = this.d;
        a7Var.f.f--;
        a7Var.c();
    }

    public z6(a7 a7Var) {
        this.d = a7Var;
        Collection collection = a7Var.c;
        this.c = collection;
        this.b = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }
}
