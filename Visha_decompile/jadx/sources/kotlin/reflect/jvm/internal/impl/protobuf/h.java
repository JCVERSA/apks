package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public abstract class h extends AbstractMap {
    public final int b;
    public List c;
    public Map d;
    public boolean e;
    public volatile e f;

    public static class a extends h {
        public a(int i) {
            super(i, null);
        }

        @Override
        public void o() {
            if (!n()) {
                for (int i = 0; i < k(); i++) {
                    Map.Entry entryH = h(i);
                    if (((kotlin.reflect.jvm.internal.impl.protobuf.e.b) entryH.getKey()).isRepeated()) {
                        entryH.setValue(Collections.unmodifiableList((List) entryH.getValue()));
                    }
                }
                for (Map.Entry entry : l()) {
                    if (((kotlin.reflect.jvm.internal.impl.protobuf.e.b) entry.getKey()).isRepeated()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.o();
        }

        @Override
        public Object put(Object obj, Object obj2) {
            return super.q((kotlin.reflect.jvm.internal.impl.protobuf.e.b) obj, obj2);
        }
    }

    public static class b {
        public static final Iterator a = new a();
        public static final Iterable b = new C0402b();

        public static class a implements Iterator {
            @Override
            public boolean hasNext() {
                return false;
            }

            @Override
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        public static class C0402b implements Iterable {
            @Override
            public Iterator iterator() {
                return b.a;
            }
        }

        public static Iterable b() {
            return b;
        }
    }

    public class c implements Comparable, Map.Entry {
        public final Comparable b;
        public Object c;

        public c(h hVar, Map.Entry entry) {
            this((Comparable) entry.getKey(), entry.getValue());
        }

        @Override
        public int compareTo(c cVar) {
            return getKey().compareTo(cVar.getKey());
        }

        public final boolean b(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            return obj.equals(obj2);
        }

        @Override
        public Comparable getKey() {
            return this.b;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return b(this.b, entry.getKey()) && b(this.c, entry.getValue());
        }

        @Override
        public Object getValue() {
            return this.c;
        }

        @Override
        public int hashCode() {
            Comparable comparable = this.b;
            int iHashCode = comparable == null ? 0 : comparable.hashCode();
            Object obj = this.c;
            return iHashCode ^ (obj != null ? obj.hashCode() : 0);
        }

        @Override
        public Object setValue(Object obj) {
            h.this.f();
            Object obj2 = this.c;
            this.c = obj;
            return obj2;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.b);
            String strValueOf2 = String.valueOf(this.c);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 1 + strValueOf2.length());
            sb.append(strValueOf);
            sb.append("=");
            sb.append(strValueOf2);
            return sb.toString();
        }

        public c(Comparable comparable, Object obj) {
            this.b = comparable;
            this.c = obj;
        }
    }

    public class e extends AbstractSet {
        public e() {
        }

        @Override
        public boolean add(Map.Entry entry) {
            if (contains(entry)) {
                return false;
            }
            h.this.q((Comparable) entry.getKey(), entry.getValue());
            return true;
        }

        @Override
        public void clear() {
            h.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = h.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override
        public Iterator iterator() {
            return new d(h.this, null);
        }

        @Override
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            h.this.remove(entry.getKey());
            return true;
        }

        @Override
        public int size() {
            return h.this.size();
        }

        public e(h hVar, a aVar) {
            this();
        }
    }

    public h(int i, a aVar) {
        this(i);
    }

    public static h p(int i) {
        return new a(i);
    }

    @Override
    public void clear() {
        f();
        if (!this.c.isEmpty()) {
            this.c.clear();
        }
        if (this.d.isEmpty()) {
            return;
        }
        this.d.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return e(comparable) >= 0 || this.d.containsKey(comparable);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0026  */
    /* JADX WARN: Code duplicated, block: B:17:0x0042  */
    /* JADX WARN: Code duplicated, block: B:21:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0046 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x003c A[SYNTHETIC] */
    public final int e(Comparable comparable) {
        int i;
        int i2;
        int i3;
        int iCompareTo;
        int size = this.c.size();
        int i4 = size - 1;
        if (i4 < 0) {
            i = 0;
            while (i <= i4) {
                i3 = (i + i4) / 2;
                iCompareTo = comparable.compareTo(((c) this.c.get(i3)).getKey());
                if (iCompareTo < 0) {
                    i4 = i3 - 1;
                } else {
                    if (iCompareTo > 0) {
                        return i3;
                    }
                    i = i3 + 1;
                }
            }
            i2 = i + 1;
        } else {
            int iCompareTo2 = comparable.compareTo(((c) this.c.get(i4)).getKey());
            if (iCompareTo2 > 0) {
                i2 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i4;
                }
                i = 0;
                while (i <= i4) {
                    i3 = (i + i4) / 2;
                    iCompareTo = comparable.compareTo(((c) this.c.get(i3)).getKey());
                    if (iCompareTo < 0) {
                        i4 = i3 - 1;
                    } else {
                        if (iCompareTo > 0) {
                            return i3;
                        }
                        i = i3 + 1;
                    }
                }
                i2 = i + 1;
            }
        }
        return -i2;
    }

    @Override
    public Set entrySet() {
        if (this.f == null) {
            this.f = new e(this, null);
        }
        return this.f;
    }

    public final void f() {
        if (this.e) {
            throw new UnsupportedOperationException();
        }
    }

    public final void g() {
        f();
        if (!this.c.isEmpty() || (this.c instanceof ArrayList)) {
            return;
        }
        this.c = new ArrayList(this.b);
    }

    @Override
    public Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iE = e(comparable);
        return iE >= 0 ? ((c) this.c.get(iE)).getValue() : this.d.get(comparable);
    }

    public Map.Entry h(int i) {
        return (Map.Entry) this.c.get(i);
    }

    public int k() {
        return this.c.size();
    }

    public Iterable l() {
        return this.d.isEmpty() ? b.b() : this.d.entrySet();
    }

    public final SortedMap m() {
        f();
        if (this.d.isEmpty() && !(this.d instanceof TreeMap)) {
            this.d = new TreeMap();
        }
        return (SortedMap) this.d;
    }

    public boolean n() {
        return this.e;
    }

    public void o() {
        if (this.e) {
            return;
        }
        this.d = this.d.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.d);
        this.e = true;
    }

    public Object q(Comparable comparable, Object obj) {
        f();
        int iE = e(comparable);
        if (iE >= 0) {
            return ((c) this.c.get(iE)).setValue(obj);
        }
        g();
        int i = -(iE + 1);
        if (i >= this.b) {
            return m().put(comparable, obj);
        }
        int size = this.c.size();
        int i2 = this.b;
        if (size == i2) {
            c cVar = (c) this.c.remove(i2 - 1);
            m().put(cVar.getKey(), cVar.getValue());
        }
        this.c.add(i, new c(comparable, obj));
        return null;
    }

    public final Object r(int i) {
        f();
        Object value = ((c) this.c.remove(i)).getValue();
        if (!this.d.isEmpty()) {
            Iterator it = m().entrySet().iterator();
            this.c.add(new c(this, (Map.Entry) it.next()));
            it.remove();
        }
        return value;
    }

    @Override
    public Object remove(Object obj) {
        f();
        Comparable comparable = (Comparable) obj;
        int iE = e(comparable);
        if (iE >= 0) {
            return r(iE);
        }
        if (this.d.isEmpty()) {
            return null;
        }
        return this.d.remove(comparable);
    }

    @Override
    public int size() {
        return this.c.size() + this.d.size();
    }

    public class d implements Iterator {
        public int b;
        public boolean c;
        public Iterator d;

        public d() {
            this.b = -1;
        }

        public final Iterator a() {
            if (this.d == null) {
                this.d = h.this.d.entrySet().iterator();
            }
            return this.d;
        }

        @Override
        public Map.Entry next() {
            this.c = true;
            int i = this.b + 1;
            this.b = i;
            return i < h.this.c.size() ? (Map.Entry) h.this.c.get(this.b) : (Map.Entry) a().next();
        }

        @Override
        public boolean hasNext() {
            return this.b + 1 < h.this.c.size() || a().hasNext();
        }

        @Override
        public void remove() {
            if (!this.c) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.c = false;
            h.this.f();
            if (this.b >= h.this.c.size()) {
                a().remove();
                return;
            }
            h hVar = h.this;
            int i = this.b;
            this.b = i - 1;
            hVar.r(i);
        }

        public d(h hVar, a aVar) {
            this();
        }
    }

    public h(int i) {
        this.b = i;
        this.c = Collections.emptyList();
        this.d = Collections.emptyMap();
    }
}
