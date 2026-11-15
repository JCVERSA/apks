package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;

public class c7 extends a7 implements List {
    public final zzfvp g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c7(zzfvp zzfvpVar, Object obj, List list, a7 a7Var) {
        super(zzfvpVar, obj, list, a7Var);
        this.g = zzfvpVar;
    }

    @Override
    public final void add(int i, Object obj) {
        zzb();
        boolean zIsEmpty = this.c.isEmpty();
        ((List) this.c).add(i, obj);
        this.g.f++;
        if (zIsEmpty) {
            b();
        }
    }

    @Override
    public final boolean addAll(int i, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = ((List) this.c).addAll(i, collection);
        if (zAddAll) {
            int size2 = this.c.size();
            this.g.f += size2 - size;
            if (size == 0) {
                b();
                return true;
            }
        }
        return zAddAll;
    }

    @Override
    public final Object get(int i) {
        zzb();
        return ((List) this.c).get(i);
    }

    @Override
    public final int indexOf(Object obj) {
        zzb();
        return ((List) this.c).indexOf(obj);
    }

    @Override
    public final int lastIndexOf(Object obj) {
        zzb();
        return ((List) this.c).lastIndexOf(obj);
    }

    @Override
    public final ListIterator listIterator() {
        zzb();
        return new b7(this);
    }

    @Override
    public final Object remove(int i) {
        zzb();
        Object objRemove = ((List) this.c).remove(i);
        this.g.f--;
        c();
        return objRemove;
    }

    @Override
    public final Object set(int i, Object obj) {
        zzb();
        return ((List) this.c).set(i, obj);
    }

    @Override
    public final List subList(int i, int i2) {
        zzb();
        List listSubList = ((List) this.c).subList(i, i2);
        a7 a7Var = this.d;
        if (a7Var == null) {
            a7Var = this;
        }
        return this.g.zzh(this.b, listSubList, a7Var);
    }

    @Override
    public final ListIterator listIterator(int i) {
        zzb();
        return new b7(this, i);
    }
}
