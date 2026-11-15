package com.yandex.mobile.ads.impl;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

class qq<E> extends AbstractCollection<E> {
    final Collection<E> b;
    final wj1<? super E> c;

    public qq(Collection<E> collection, wj1<? super E> wj1Var) {
        this.b = collection;
        this.c = wj1Var;
    }

    @Override
    public final boolean add(E e) {
        if (this.c.apply(e)) {
            return this.b.add(e);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final boolean addAll(Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            if (!this.c.apply(it.next())) {
                throw new IllegalArgumentException();
            }
        }
        return this.b.addAll(collection);
    }

    @Override
    public final void clear() {
        jq0.a(this.b, this.c);
    }

    @Override
    public final boolean contains(Object obj) {
        Collection<E> collection = this.b;
        collection.getClass();
        try {
            if (collection.contains(obj)) {
                return this.c.apply(obj);
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override
    public final boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final boolean isEmpty() {
        Collection<E> collection = this.b;
        wj1<? super E> wj1Var = this.c;
        Iterator<T> it = collection.iterator();
        if (wj1Var == null) {
            throw new NullPointerException("predicate");
        }
        boolean z = false;
        int i = 0;
        while (it.hasNext()) {
            if (wj1Var.apply((Object) it.next())) {
                if (i == -1) {
                    break;
                }
                z = true;
                break;
            }
            i++;
        }
        return !z;
    }

    @Override
    public final Iterator<E> iterator() {
        Iterator<E> it = this.b.iterator();
        wj1<? super E> wj1Var = this.c;
        it.getClass();
        wj1Var.getClass();
        return new kq0(it, wj1Var);
    }

    @Override
    public final boolean remove(Object obj) {
        return contains(obj) && this.b.remove(obj);
    }

    @Override
    public final boolean removeAll(Collection<?> collection) {
        Iterator<E> it = this.b.iterator();
        boolean z = false;
        while (it.hasNext()) {
            E next = it.next();
            if (this.c.apply(next) && collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override
    public final boolean retainAll(Collection<?> collection) {
        Iterator<E> it = this.b.iterator();
        boolean z = false;
        while (it.hasNext()) {
            E next = it.next();
            if (this.c.apply(next) && !collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override
    public final int size() {
        Iterator<E> it = this.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.c.apply(it.next())) {
                i++;
            }
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object[] toArray() {
        Iterator<E> it = iterator();
        ArrayList arrayList = new ArrayList();
        while (true) {
            k kVar = (k) it;
            if (!kVar.hasNext()) {
                return arrayList.toArray();
            }
            arrayList.add(kVar.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final <T> T[] toArray(T[] tArr) {
        Iterator<E> it = iterator();
        ArrayList arrayList = new ArrayList();
        while (true) {
            k kVar = (k) it;
            if (kVar.hasNext()) {
                arrayList.add(kVar.next());
            } else {
                return (T[]) arrayList.toArray(tArr);
            }
        }
    }
}
