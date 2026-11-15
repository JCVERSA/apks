package com.bytedance.adsdk.sP;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

abstract class Zq<K, V> {
    Zq<K, V>.sP sP;

    final class Sj<T> implements Iterator<T> {
        boolean EjP = false;
        final int Sj;
        int TKC;
        int sP;

        Sj(int i10) {
            this.Sj = i10;
            this.sP = Zq.this.Sj();
        }

        @Override
        public boolean hasNext() {
            return this.TKC < this.sP;
        }

        @Override
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t10 = (T) Zq.this.Sj(this.TKC, this.Sj);
            this.TKC++;
            this.EjP = true;
            return t10;
        }

        @Override
        public void remove() {
            if (!this.EjP) {
                throw new IllegalStateException();
            }
            int i10 = this.TKC - 1;
            this.TKC = i10;
            this.sP--;
            this.EjP = false;
            Zq.this.Sj(i10);
        }
    }

    final class sP implements Set<K> {
        sP() {
        }

        @Override
        public boolean add(K k10) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            Zq.this.TKC();
        }

        @Override
        public boolean contains(Object obj) {
            return Zq.this.Sj(obj) >= 0;
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            return Zq.Sj(Zq.this.sP(), collection);
        }

        @Override
        public boolean equals(Object obj) {
            return Zq.Sj(this, obj);
        }

        @Override
        public int hashCode() {
            int iHashCode = 0;
            for (int iSj = Zq.this.Sj() - 1; iSj >= 0; iSj--) {
                Object objSj = Zq.this.Sj(iSj, 0);
                iHashCode += objSj == null ? 0 : objSj.hashCode();
            }
            return iHashCode;
        }

        @Override
        public boolean isEmpty() {
            return Zq.this.Sj() == 0;
        }

        @Override
        public Iterator<K> iterator() {
            return new Sj(0);
        }

        @Override
        public boolean remove(Object obj) {
            int iSj = Zq.this.Sj(obj);
            if (iSj < 0) {
                return false;
            }
            Zq.this.Sj(iSj);
            return true;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            return Zq.sP(Zq.this.sP(), collection);
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            return Zq.TKC(Zq.this.sP(), collection);
        }

        @Override
        public int size() {
            return Zq.this.Sj();
        }

        @Override
        public Object[] toArray() {
            return Zq.this.sP(0);
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) Zq.this.Sj(tArr, 0);
        }
    }

    Zq() {
    }

    public static <K, V> boolean Sj(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> boolean TKC(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public static <K, V> boolean sP(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public Set<K> EjP() {
        if (this.sP == null) {
            this.sP = new sP();
        }
        return this.sP;
    }

    protected abstract int Sj();

    protected abstract int Sj(Object obj);

    protected abstract Object Sj(int i10, int i11);

    protected abstract void Sj(int i10);

    protected abstract void TKC();

    protected abstract Map<K, V> sP();

    public <T> T[] Sj(T[] tArr, int i10) {
        int iSj = Sj();
        if (tArr.length < iSj) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), iSj));
        }
        for (int i11 = 0; i11 < iSj; i11++) {
            tArr[i11] = Sj(i11, i10);
        }
        if (tArr.length > iSj) {
            tArr[iSj] = null;
        }
        return tArr;
    }

    public Object[] sP(int i10) {
        int iSj = Sj();
        Object[] objArr = new Object[iSj];
        for (int i11 = 0; i11 < iSj; i11++) {
            objArr[i11] = Sj(i11, i10);
        }
        return objArr;
    }

    public static <T> boolean Sj(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size() && set.containsAll(set2)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }
}
