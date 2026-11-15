package defpackage;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

public abstract class owd {
    public b a;
    public c b;
    public e c;

    public final class a implements Iterator {
        public final int b;
        public int c;
        public int d;
        public boolean e = false;

        public a(int i) {
            this.b = i;
            this.c = owd.this.n();
        }

        @Override
        public boolean hasNext() {
            return this.d < this.c;
        }

        @Override
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object objB = owd.this.b(this.d, this.b);
            this.d++;
            this.e = true;
            return objB;
        }

        @Override
        public void remove() {
            if (!this.e) {
                throw new IllegalStateException();
            }
            int i = this.d - 1;
            this.d = i;
            this.c--;
            this.e = false;
            owd.this.e(i);
        }
    }

    public final class b implements Set {
        public b() {
        }

        @Override
        public boolean addAll(Collection collection) {
            int iN = owd.this.n();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                owd.this.f(entry.getKey(), entry.getValue());
            }
            return iN != owd.this.n();
        }

        @Override
        public boolean add(Map.Entry entry) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void clear() {
            owd.this.d();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iA = owd.this.a(entry.getKey());
            if (iA < 0) {
                return false;
            }
            return Objects.equals(owd.this.b(iA, 1), entry.getValue());
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
            return owd.h(this, obj);
        }

        @Override
        public int hashCode() {
            int iHashCode = 0;
            for (int iN = owd.this.n() - 1; iN >= 0; iN--) {
                Object objB = owd.this.b(iN, 0);
                Object objB2 = owd.this.b(iN, 1);
                iHashCode += (objB == null ? 0 : objB.hashCode()) ^ (objB2 == null ? 0 : objB2.hashCode());
            }
            return iHashCode;
        }

        @Override
        public boolean isEmpty() {
            return owd.this.n() == 0;
        }

        @Override
        public Iterator iterator() {
            return owd.this.new d();
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
            return owd.this.n();
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

    public final class c implements Set {
        public c() {
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
            owd.this.d();
        }

        @Override
        public boolean contains(Object obj) {
            return owd.this.a(obj) >= 0;
        }

        @Override
        public boolean containsAll(Collection collection) {
            return owd.g(owd.this.k(), collection);
        }

        @Override
        public boolean equals(Object obj) {
            return owd.h(this, obj);
        }

        @Override
        public int hashCode() {
            int iHashCode = 0;
            for (int iN = owd.this.n() - 1; iN >= 0; iN--) {
                Object objB = owd.this.b(iN, 0);
                iHashCode += objB == null ? 0 : objB.hashCode();
            }
            return iHashCode;
        }

        @Override
        public boolean isEmpty() {
            return owd.this.n() == 0;
        }

        @Override
        public Iterator iterator() {
            return owd.this.new a(0);
        }

        @Override
        public boolean remove(Object obj) {
            int iA = owd.this.a(obj);
            if (iA < 0) {
                return false;
            }
            owd.this.e(iA);
            return true;
        }

        @Override
        public boolean removeAll(Collection collection) {
            return owd.l(owd.this.k(), collection);
        }

        @Override
        public boolean retainAll(Collection collection) {
            return owd.o(owd.this.k(), collection);
        }

        @Override
        public int size() {
            return owd.this.n();
        }

        @Override
        public Object[] toArray() {
            return owd.this.m(0);
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return owd.this.i(objArr, 0);
        }
    }

    public final class d implements Iterator, Map.Entry {
        public int b;
        public boolean d = false;
        public int c = -1;

        public d() {
            this.b = owd.this.n() - 1;
        }

        @Override
        public Map.Entry next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.c++;
            this.d = true;
            return this;
        }

        @Override
        public boolean equals(Object obj) {
            if (!this.d) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return Objects.equals(entry.getKey(), owd.this.b(this.c, 0)) && Objects.equals(entry.getValue(), owd.this.b(this.c, 1));
        }

        @Override
        public Object getKey() {
            if (this.d) {
                return owd.this.b(this.c, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override
        public Object getValue() {
            if (this.d) {
                return owd.this.b(this.c, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override
        public boolean hasNext() {
            return this.c < this.b;
        }

        @Override
        public int hashCode() {
            if (!this.d) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object objB = owd.this.b(this.c, 0);
            Object objB2 = owd.this.b(this.c, 1);
            return (objB == null ? 0 : objB.hashCode()) ^ (objB2 != null ? objB2.hashCode() : 0);
        }

        @Override
        public void remove() {
            if (!this.d) {
                throw new IllegalStateException();
            }
            owd.this.e(this.c);
            this.c--;
            this.b--;
            this.d = false;
        }

        @Override
        public Object setValue(Object obj) {
            if (this.d) {
                return owd.this.c(this.c, obj);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    public final class e implements Collection {
        public e() {
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
            owd.this.d();
        }

        @Override
        public boolean contains(Object obj) {
            return owd.this.j(obj) >= 0;
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
            return owd.this.n() == 0;
        }

        @Override
        public Iterator iterator() {
            return owd.this.new a(1);
        }

        @Override
        public boolean remove(Object obj) {
            int iJ = owd.this.j(obj);
            if (iJ < 0) {
                return false;
            }
            owd.this.e(iJ);
            return true;
        }

        @Override
        public boolean removeAll(Collection collection) {
            int iN = owd.this.n();
            int i = 0;
            boolean z = false;
            while (i < iN) {
                if (collection.contains(owd.this.b(i, 1))) {
                    owd.this.e(i);
                    i--;
                    iN--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override
        public boolean retainAll(Collection collection) {
            int iN = owd.this.n();
            int i = 0;
            boolean z = false;
            while (i < iN) {
                if (!collection.contains(owd.this.b(i, 1))) {
                    owd.this.e(i);
                    i--;
                    iN--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override
        public int size() {
            return owd.this.n();
        }

        @Override
        public Object[] toArray() {
            return owd.this.m(1);
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return owd.this.i(objArr, 1);
        }
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

    public abstract int a(Object obj);

    public abstract Object b(int i, int i2);

    public abstract Object c(int i, Object obj);

    public abstract void d();

    public abstract void e(int i);

    public abstract void f(Object obj, Object obj2);

    public Object[] i(Object[] objArr, int i) {
        int iN = n();
        if (objArr.length < iN) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), iN);
        }
        for (int i2 = 0; i2 < iN; i2++) {
            objArr[i2] = b(i2, i);
        }
        if (objArr.length > iN) {
            objArr[iN] = null;
        }
        return objArr;
    }

    public abstract int j(Object obj);

    public abstract Map k();

    public Object[] m(int i) {
        int iN = n();
        Object[] objArr = new Object[iN];
        for (int i2 = 0; i2 < iN; i2++) {
            objArr[i2] = b(i2, i);
        }
        return objArr;
    }

    public abstract int n();

    public Set p() {
        if (this.a == null) {
            this.a = new b();
        }
        return this.a;
    }

    public Set q() {
        if (this.b == null) {
            this.b = new c();
        }
        return this.b;
    }

    public Collection r() {
        if (this.c == null) {
            this.c = new e();
        }
        return this.c;
    }
}
