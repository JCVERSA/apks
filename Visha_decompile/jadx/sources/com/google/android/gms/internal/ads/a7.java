package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;

public abstract class a7 extends AbstractCollection {
    public final Object b;
    public Collection c;
    public final a7 d;
    public final Collection e;
    public final zzfvp f;

    public a7(zzfvp zzfvpVar, Object obj, Collection collection, a7 a7Var) {
        this.f = zzfvpVar;
        this.b = obj;
        this.c = collection;
        this.d = a7Var;
        this.e = a7Var == null ? null : a7Var.c;
    }

    @Override
    public final boolean add(Object obj) {
        zzb();
        boolean zIsEmpty = this.c.isEmpty();
        boolean zAdd = this.c.add(obj);
        if (zAdd) {
            this.f.f++;
            if (zIsEmpty) {
                b();
                return true;
            }
        }
        return zAdd;
    }

    @Override
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = this.c.addAll(collection);
        if (zAddAll) {
            int size2 = this.c.size();
            this.f.f += size2 - size;
            if (size == 0) {
                b();
                return true;
            }
        }
        return zAddAll;
    }

    public final void b() {
        a7 a7Var = this.d;
        if (a7Var != null) {
            a7Var.b();
            return;
        }
        zzfvp zzfvpVar = this.f;
        zzfvpVar.e.put(this.b, this.c);
    }

    public final void c() {
        a7 a7Var = this.d;
        if (a7Var != null) {
            a7Var.c();
        } else if (this.c.isEmpty()) {
            zzfvp zzfvpVar = this.f;
            zzfvpVar.e.remove(this.b);
        }
    }

    @Override
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.c.clear();
        this.f.f -= size;
        c();
    }

    @Override
    public final boolean contains(Object obj) {
        zzb();
        return this.c.contains(obj);
    }

    @Override
    public final boolean containsAll(Collection collection) {
        zzb();
        return this.c.containsAll(collection);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        zzb();
        return this.c.equals(obj);
    }

    @Override
    public final int hashCode() {
        zzb();
        return this.c.hashCode();
    }

    @Override
    public final Iterator iterator() {
        zzb();
        return new z6(this);
    }

    @Override
    public final boolean remove(Object obj) {
        zzb();
        boolean zRemove = this.c.remove(obj);
        if (zRemove) {
            this.f.f--;
            c();
        }
        return zRemove;
    }

    @Override
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zRemoveAll = this.c.removeAll(collection);
        if (zRemoveAll) {
            int size2 = this.c.size();
            this.f.f += size2 - size;
            c();
        }
        return zRemoveAll;
    }

    @Override
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        int size = size();
        boolean zRetainAll = this.c.retainAll(collection);
        if (zRetainAll) {
            int size2 = this.c.size();
            this.f.f += size2 - size;
            c();
        }
        return zRetainAll;
    }

    @Override
    public final int size() {
        zzb();
        return this.c.size();
    }

    @Override
    public final String toString() {
        zzb();
        return this.c.toString();
    }

    public final void zzb() {
        a7 a7Var = this.d;
        if (a7Var != null) {
            a7Var.zzb();
            if (a7Var.c != this.e) {
                throw new ConcurrentModificationException();
            }
            return;
        }
        if (this.c.isEmpty()) {
            zzfvp zzfvpVar = this.f;
            Collection collection = (Collection) zzfvpVar.e.get(this.b);
            if (collection != null) {
                this.c = collection;
            }
        }
    }
}
