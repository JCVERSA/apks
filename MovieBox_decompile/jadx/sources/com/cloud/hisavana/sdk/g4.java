package com.cloud.hisavana.sdk;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

abstract class g4 {

    b f21858a;

    c f21859b;

    e f21860c;

    final class a implements Iterator {

        final int f21861a;

        int f21862b;

        int f21863c;

        boolean f21864d = false;

        a(int i10) {
            this.f21861a = i10;
            this.f21862b = g4.this.n();
        }

        @Override
        public boolean hasNext() {
            return this.f21863c < this.f21862b;
        }

        @Override
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object objB = g4.this.b(this.f21863c, this.f21861a);
            this.f21863c++;
            this.f21864d = true;
            return objB;
        }

        @Override
        public void remove() {
            if (!this.f21864d) {
                throw new IllegalStateException();
            }
            int i10 = this.f21863c - 1;
            this.f21863c = i10;
            this.f21862b--;
            this.f21864d = false;
            g4.this.e(i10);
        }
    }

    final class b implements Set {
        b() {
        }

        @Override
        public boolean add(Map.Entry entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection collection) {
            int iN = g4.this.n();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                g4.this.f(entry.getKey(), entry.getValue());
            }
            return iN != g4.this.n();
        }

        @Override
        public void clear() {
            g4.this.d();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iA = g4.this.a(entry.getKey());
            if (iA < 0) {
                return false;
            }
            return Objects.equals(g4.this.b(iA, 1), entry.getValue());
        }

        @Override
        public boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean equals(Object obj) {
            return g4.h(this, obj);
        }

        @Override
        public int hashCode() {
            int iHashCode = 0;
            for (int iN = g4.this.n() - 1; iN >= 0; iN--) {
                Object objB = g4.this.b(iN, 0);
                Object objB2 = g4.this.b(iN, 1);
                iHashCode += (objB == null ? 0 : objB.hashCode()) ^ (objB2 == null ? 0 : objB2.hashCode());
            }
            return iHashCode;
        }

        @Override
        public boolean isEmpty() {
            return g4.this.n() == 0;
        }

        @Override
        public Iterator iterator() {
            return g4.this.new d();
        }

        @Override
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int size() {
            return g4.this.n();
        }

        @Override
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            throw new UnsupportedOperationException();
        }
    }

    final class c implements Set {
        c() {
        }

        @Override
        public boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            g4.this.d();
        }

        @Override
        public boolean contains(Object obj) {
            return g4.this.a(obj) >= 0;
        }

        @Override
        public boolean containsAll(Collection collection) {
            return g4.g(g4.this.k(), collection);
        }

        @Override
        public boolean equals(Object obj) {
            return g4.h(this, obj);
        }

        @Override
        public int hashCode() {
            int iHashCode = 0;
            for (int iN = g4.this.n() - 1; iN >= 0; iN--) {
                Object objB = g4.this.b(iN, 0);
                iHashCode += objB == null ? 0 : objB.hashCode();
            }
            return iHashCode;
        }

        @Override
        public boolean isEmpty() {
            return g4.this.n() == 0;
        }

        @Override
        public Iterator iterator() {
            return g4.this.new a(0);
        }

        @Override
        public boolean remove(Object obj) {
            int iA = g4.this.a(obj);
            if (iA < 0) {
                return false;
            }
            g4.this.e(iA);
            return true;
        }

        @Override
        public boolean removeAll(Collection collection) {
            return g4.l(g4.this.k(), collection);
        }

        @Override
        public boolean retainAll(Collection collection) {
            return g4.o(g4.this.k(), collection);
        }

        @Override
        public int size() {
            return g4.this.n();
        }

        @Override
        public Object[] toArray() {
            return g4.this.m(0);
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return g4.this.i(objArr, 0);
        }
    }

    final class d implements Iterator, Map.Entry {

        int f21868a;

        boolean f21870c = false;

        int f21869b = -1;

        d() {
            this.f21868a = g4.this.n() - 1;
        }

        @Override
        public Map.Entry next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f21869b++;
            this.f21870c = true;
            return this;
        }

        @Override
        public boolean equals(Object obj) {
            if (!this.f21870c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return Objects.equals(entry.getKey(), g4.this.b(this.f21869b, 0)) && Objects.equals(entry.getValue(), g4.this.b(this.f21869b, 1));
        }

        @Override
        public Object getKey() {
            if (this.f21870c) {
                return g4.this.b(this.f21869b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override
        public Object getValue() {
            if (this.f21870c) {
                return g4.this.b(this.f21869b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override
        public boolean hasNext() {
            return this.f21869b < this.f21868a;
        }

        @Override
        public int hashCode() {
            if (!this.f21870c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object objB = g4.this.b(this.f21869b, 0);
            Object objB2 = g4.this.b(this.f21869b, 1);
            return (objB == null ? 0 : objB.hashCode()) ^ (objB2 != null ? objB2.hashCode() : 0);
        }

        @Override
        public void remove() {
            if (!this.f21870c) {
                throw new IllegalStateException();
            }
            g4.this.e(this.f21869b);
            this.f21869b--;
            this.f21868a--;
            this.f21870c = false;
        }

        @Override
        public Object setValue(Object obj) {
            if (this.f21870c) {
                return g4.this.c(this.f21869b, obj);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + UrlUtils.EQUAL_MARK + getValue();
        }
    }

    final class e implements Collection {
        e() {
        }

        @Override
        public boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            g4.this.d();
        }

        @Override
        public boolean contains(Object obj) {
            return g4.this.j(obj) >= 0;
        }

        @Override
        public boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean isEmpty() {
            return g4.this.n() == 0;
        }

        @Override
        public Iterator iterator() {
            return g4.this.new a(1);
        }

        @Override
        public boolean remove(Object obj) {
            int iJ = g4.this.j(obj);
            if (iJ < 0) {
                return false;
            }
            g4.this.e(iJ);
            return true;
        }

        @Override
        public boolean removeAll(Collection collection) {
            int iN = g4.this.n();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < iN) {
                if (collection.contains(g4.this.b(i10, 1))) {
                    g4.this.e(i10);
                    i10--;
                    iN--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection collection) {
            int iN = g4.this.n();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < iN) {
                if (!collection.contains(g4.this.b(i10, 1))) {
                    g4.this.e(i10);
                    i10--;
                    iN--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override
        public int size() {
            return g4.this.n();
        }

        @Override
        public Object[] toArray() {
            return g4.this.m(1);
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return g4.this.i(objArr, 1);
        }
    }

    g4() {
    }

    public static boolean g(Map map, Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static boolean l(Map map, Collection collection) {
        int size = map.size();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static boolean o(Map map, Collection collection) {
        int size = map.size();
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    protected abstract int a(Object obj);

    protected abstract Object b(int i10, int i11);

    protected abstract Object c(int i10, Object obj);

    protected abstract void d();

    protected abstract void e(int i10);

    protected abstract void f(Object obj, Object obj2);

    public Object[] i(Object[] objArr, int i10) {
        int iN = n();
        if (objArr.length < iN) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), iN);
        }
        for (int i11 = 0; i11 < iN; i11++) {
            objArr[i11] = b(i11, i10);
        }
        if (objArr.length > iN) {
            objArr[iN] = null;
        }
        return objArr;
    }

    protected abstract int j(Object obj);

    protected abstract Map k();

    public Object[] m(int i10) {
        int iN = n();
        Object[] objArr = new Object[iN];
        for (int i11 = 0; i11 < iN; i11++) {
            objArr[i11] = b(i11, i10);
        }
        return objArr;
    }

    protected abstract int n();

    public Set p() {
        if (this.f21858a == null) {
            this.f21858a = new b();
        }
        return this.f21858a;
    }

    public Set q() {
        if (this.f21859b == null) {
            this.f21859b = new c();
        }
        return this.f21859b;
    }

    public Collection r() {
        if (this.f21860c == null) {
            this.f21860c = new e();
        }
        return this.f21860c;
    }
}
