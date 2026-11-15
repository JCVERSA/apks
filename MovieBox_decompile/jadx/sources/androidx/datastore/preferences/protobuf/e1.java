package androidx.datastore.preferences.protobuf;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

abstract class e1 extends AbstractMap {

    private List f8440a;

    private Map f8441b;

    private boolean f8442c;

    private volatile f f8443d;

    private Map f8444e;

    private volatile c f8445f;

    class a extends e1 {
        a() {
            super(null);
        }

        @Override
        public Object put(Object obj, Object obj2) {
            return super.t((Comparable) obj, obj2);
        }

        @Override
        public void r() {
            if (!q()) {
                if (m() > 0) {
                    android.support.v4.media.session.c.a(l(0).getKey());
                    throw null;
                }
                Iterator it = o().iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.c.a(((Map.Entry) it.next()).getKey());
                    throw null;
                }
            }
            super.r();
        }
    }

    private class c extends f {
        private c() {
            super(e1.this, null);
        }

        @Override
        public Iterator iterator() {
            return new b(e1.this, null);
        }

        c(e1 e1Var, a aVar) {
            this();
        }
    }

    private class d implements Map.Entry, Comparable {

        private final Comparable f8450a;

        private Object f8451b;

        d(e1 e1Var, Map.Entry entry) {
            this((Comparable) entry.getKey(), entry.getValue());
        }

        private boolean b(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            return obj.equals(obj2);
        }

        @Override
        public int compareTo(d dVar) {
            return getKey().compareTo(dVar.getKey());
        }

        @Override
        public Comparable getKey() {
            return this.f8450a;
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
            return b(this.f8450a, entry.getKey()) && b(this.f8451b, entry.getValue());
        }

        @Override
        public Object getValue() {
            return this.f8451b;
        }

        @Override
        public int hashCode() {
            Comparable comparable = this.f8450a;
            int iHashCode = comparable == null ? 0 : comparable.hashCode();
            Object obj = this.f8451b;
            return iHashCode ^ (obj != null ? obj.hashCode() : 0);
        }

        @Override
        public Object setValue(Object obj) {
            e1.this.i();
            Object obj2 = this.f8451b;
            this.f8451b = obj;
            return obj2;
        }

        public String toString() {
            return this.f8450a + UrlUtils.EQUAL_MARK + this.f8451b;
        }

        d(Comparable comparable, Object obj) {
            this.f8450a = comparable;
            this.f8451b = obj;
        }
    }

    private class f extends AbstractSet {
        private f() {
        }

        @Override
        public boolean add(Map.Entry entry) {
            if (contains(entry)) {
                return false;
            }
            e1.this.t((Comparable) entry.getKey(), entry.getValue());
            return true;
        }

        @Override
        public void clear() {
            e1.this.clear();
        }

        @Override
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = e1.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override
        public Iterator iterator() {
            return new e(e1.this, null);
        }

        @Override
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            e1.this.remove(entry.getKey());
            return true;
        }

        @Override
        public int size() {
            return e1.this.size();
        }

        f(e1 e1Var, a aVar) {
            this();
        }
    }

    e1(a aVar) {
        this();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0026  */
    /* JADX WARN: Code duplicated, block: B:17:0x0042  */
    /* JADX WARN: Code duplicated, block: B:21:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0046 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x003c A[SYNTHETIC] */
    private int h(Comparable comparable) {
        int i10;
        int i11;
        int i12;
        int iCompareTo;
        int size = this.f8440a.size();
        int i13 = size - 1;
        if (i13 < 0) {
            i10 = 0;
            while (i10 <= i13) {
                i12 = (i10 + i13) / 2;
                iCompareTo = comparable.compareTo(((d) this.f8440a.get(i12)).getKey());
                if (iCompareTo < 0) {
                    i13 = i12 - 1;
                } else {
                    if (iCompareTo > 0) {
                        return i12;
                    }
                    i10 = i12 + 1;
                }
            }
            i11 = i10 + 1;
        } else {
            int iCompareTo2 = comparable.compareTo(((d) this.f8440a.get(i13)).getKey());
            if (iCompareTo2 > 0) {
                i11 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i13;
                }
                i10 = 0;
                while (i10 <= i13) {
                    i12 = (i10 + i13) / 2;
                    iCompareTo = comparable.compareTo(((d) this.f8440a.get(i12)).getKey());
                    if (iCompareTo < 0) {
                        i13 = i12 - 1;
                    } else {
                        if (iCompareTo > 0) {
                            return i12;
                        }
                        i10 = i12 + 1;
                    }
                }
                i11 = i10 + 1;
            }
        }
        return -i11;
    }

    public void i() {
        if (this.f8442c) {
            throw new UnsupportedOperationException();
        }
    }

    private void k() {
        i();
        if (!this.f8440a.isEmpty() || (this.f8440a instanceof ArrayList)) {
            return;
        }
        this.f8440a = new ArrayList(16);
    }

    private SortedMap p() {
        i();
        if (this.f8441b.isEmpty() && !(this.f8441b instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f8441b = treeMap;
            this.f8444e = treeMap.descendingMap();
        }
        return (SortedMap) this.f8441b;
    }

    static e1 s() {
        return new a();
    }

    public Object u(int i10) {
        i();
        Object value = ((d) this.f8440a.remove(i10)).getValue();
        if (!this.f8441b.isEmpty()) {
            Iterator it = p().entrySet().iterator();
            this.f8440a.add(new d(this, (Map.Entry) it.next()));
            it.remove();
        }
        return value;
    }

    @Override
    public void clear() {
        i();
        if (!this.f8440a.isEmpty()) {
            this.f8440a.clear();
        }
        if (this.f8441b.isEmpty()) {
            return;
        }
        this.f8441b.clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return h(comparable) >= 0 || this.f8441b.containsKey(comparable);
    }

    @Override
    public Set entrySet() {
        if (this.f8443d == null) {
            this.f8443d = new f(this, null);
        }
        return this.f8443d;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e1)) {
            return super.equals(obj);
        }
        e1 e1Var = (e1) obj;
        int size = size();
        if (size != e1Var.size()) {
            return false;
        }
        int iM = m();
        if (iM != e1Var.m()) {
            return entrySet().equals(e1Var.entrySet());
        }
        for (int i10 = 0; i10 < iM; i10++) {
            if (!l(i10).equals(e1Var.l(i10))) {
                return false;
            }
        }
        if (iM != size) {
            return this.f8441b.equals(e1Var.f8441b);
        }
        return true;
    }

    @Override
    public Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iH = h(comparable);
        return iH >= 0 ? ((d) this.f8440a.get(iH)).getValue() : this.f8441b.get(comparable);
    }

    @Override
    public int hashCode() {
        int iM = m();
        int iHashCode = 0;
        for (int i10 = 0; i10 < iM; i10++) {
            iHashCode += ((d) this.f8440a.get(i10)).hashCode();
        }
        return n() > 0 ? iHashCode + this.f8441b.hashCode() : iHashCode;
    }

    Set j() {
        if (this.f8445f == null) {
            this.f8445f = new c(this, null);
        }
        return this.f8445f;
    }

    public Map.Entry l(int i10) {
        return (Map.Entry) this.f8440a.get(i10);
    }

    public int m() {
        return this.f8440a.size();
    }

    public int n() {
        return this.f8441b.size();
    }

    public Iterable o() {
        return this.f8441b.isEmpty() ? Collections.emptySet() : this.f8441b.entrySet();
    }

    public boolean q() {
        return this.f8442c;
    }

    public void r() {
        if (this.f8442c) {
            return;
        }
        this.f8441b = this.f8441b.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f8441b);
        this.f8444e = this.f8444e.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f8444e);
        this.f8442c = true;
    }

    @Override
    public Object remove(Object obj) {
        i();
        Comparable comparable = (Comparable) obj;
        int iH = h(comparable);
        if (iH >= 0) {
            return u(iH);
        }
        if (this.f8441b.isEmpty()) {
            return null;
        }
        return this.f8441b.remove(comparable);
    }

    @Override
    public int size() {
        return this.f8440a.size() + this.f8441b.size();
    }

    public Object t(Comparable comparable, Object obj) {
        i();
        int iH = h(comparable);
        if (iH >= 0) {
            return ((d) this.f8440a.get(iH)).setValue(obj);
        }
        k();
        int i10 = -(iH + 1);
        if (i10 >= 16) {
            return p().put(comparable, obj);
        }
        if (this.f8440a.size() == 16) {
            d dVar = (d) this.f8440a.remove(15);
            p().put(dVar.getKey(), dVar.getValue());
        }
        this.f8440a.add(i10, new d(comparable, obj));
        return null;
    }

    private class b implements Iterator {

        private int f8446a;

        private Iterator f8447b;

        private b() {
            this.f8446a = e1.this.f8440a.size();
        }

        private Iterator a() {
            if (this.f8447b == null) {
                this.f8447b = e1.this.f8444e.entrySet().iterator();
            }
            return this.f8447b;
        }

        @Override
        public Map.Entry next() {
            if (a().hasNext()) {
                return (Map.Entry) a().next();
            }
            List list = e1.this.f8440a;
            int i10 = this.f8446a - 1;
            this.f8446a = i10;
            return (Map.Entry) list.get(i10);
        }

        @Override
        public boolean hasNext() {
            int i10 = this.f8446a;
            return (i10 > 0 && i10 <= e1.this.f8440a.size()) || a().hasNext();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        b(e1 e1Var, a aVar) {
            this();
        }
    }

    private class e implements Iterator {

        private int f8453a;

        private boolean f8454b;

        private Iterator f8455c;

        private e() {
            this.f8453a = -1;
        }

        private Iterator a() {
            if (this.f8455c == null) {
                this.f8455c = e1.this.f8441b.entrySet().iterator();
            }
            return this.f8455c;
        }

        @Override
        public Map.Entry next() {
            this.f8454b = true;
            int i10 = this.f8453a + 1;
            this.f8453a = i10;
            return i10 < e1.this.f8440a.size() ? (Map.Entry) e1.this.f8440a.get(this.f8453a) : (Map.Entry) a().next();
        }

        @Override
        public boolean hasNext() {
            if (this.f8453a + 1 >= e1.this.f8440a.size()) {
                return !e1.this.f8441b.isEmpty() && a().hasNext();
            }
            return true;
        }

        @Override
        public void remove() {
            if (!this.f8454b) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.f8454b = false;
            e1.this.i();
            if (this.f8453a >= e1.this.f8440a.size()) {
                a().remove();
                return;
            }
            e1 e1Var = e1.this;
            int i10 = this.f8453a;
            this.f8453a = i10 - 1;
            e1Var.u(i10);
        }

        e(e1 e1Var, a aVar) {
            this();
        }
    }

    private e1() {
        this.f8440a = Collections.emptyList();
        this.f8441b = Collections.emptyMap();
        this.f8444e = Collections.emptyMap();
    }
}
