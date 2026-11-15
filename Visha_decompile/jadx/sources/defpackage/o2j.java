package defpackage;

import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public abstract class o2j extends AbstractMap {
    public Object[] b;
    public int c;
    public boolean e;
    public volatile i2j f;
    public Map d = Collections.emptyMap();
    public Map g = Collections.emptyMap();

    public o2j(l2j l2jVar) {
    }

    public void a() {
        if (this.e) {
            return;
        }
        this.d = this.d.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.d);
        this.g = this.g.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.g);
        this.e = true;
    }

    public final int c() {
        return this.c;
    }

    @Override
    public final void clear() {
        q();
        if (this.c != 0) {
            this.b = null;
            this.c = 0;
        }
        if (this.d.isEmpty()) {
            return;
        }
        this.d.clear();
    }

    @Override
    public final boolean containsKey(Object obj) {
        ubc.a(obj);
        return n(null) >= 0 || this.d.containsKey(null);
    }

    public final Iterable d() {
        return this.d.isEmpty() ? Collections.emptySet() : this.d.entrySet();
    }

    @Override
    public final Set entrySet() {
        if (this.f == null) {
            this.f = new i2j(this, null);
        }
        return this.f;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o2j)) {
            return super.equals(obj);
        }
        o2j o2jVar = (o2j) obj;
        int size = size();
        if (size != o2jVar.size()) {
            return false;
        }
        int i = this.c;
        if (i != o2jVar.c) {
            return entrySet().equals(o2jVar.entrySet());
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (!g(i2).equals(o2jVar.g(i2))) {
                return false;
            }
        }
        if (i != size) {
            return this.d.equals(o2jVar.d);
        }
        return true;
    }

    public final Object f(xbi xbiVar, Object obj) {
        q();
        int iN = n(xbiVar);
        if (iN >= 0) {
            return ((d2j) this.b[iN]).setValue(obj);
        }
        q();
        if (this.b == null) {
            this.b = new Object[16];
        }
        int i = -(iN + 1);
        if (i >= 16) {
            return p().put(xbiVar, obj);
        }
        if (this.c == 16) {
            d2j d2jVar = (d2j) this.b[15];
            this.c = 15;
            SortedMap sortedMapP = p();
            d2jVar.a();
            sortedMapP.put(null, d2jVar.getValue());
        }
        Object[] objArr = this.b;
        int length = objArr.length;
        System.arraycopy(objArr, i, objArr, i + 1, 15 - i);
        this.b[i] = new d2j(this, xbiVar, obj);
        this.c++;
        return null;
    }

    public final Map.Entry g(int i) {
        if (i < this.c) {
            return (d2j) this.b[i];
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    @Override
    public final Object get(Object obj) {
        ubc.a(obj);
        int iN = n(null);
        return iN >= 0 ? ((d2j) this.b[iN]).getValue() : this.d.get(null);
    }

    @Override
    public final int hashCode() {
        int i = this.c;
        int iHashCode = 0;
        for (int i2 = 0; i2 < i; i2++) {
            iHashCode += this.b[i2].hashCode();
        }
        return this.d.size() > 0 ? iHashCode + this.d.hashCode() : iHashCode;
    }

    public final boolean l() {
        return this.e;
    }

    public final int n(xbi xbiVar) {
        int i = this.c;
        int i2 = i - 1;
        int i3 = 0;
        if (i2 >= 0) {
            ((d2j) this.b[i2]).a();
            int iCompareTo = xbiVar.compareTo(null);
            if (iCompareTo > 0) {
                return -(i + 1);
            }
            if (iCompareTo == 0) {
                return i2;
            }
        }
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            ((d2j) this.b[i4]).a();
            int iCompareTo2 = xbiVar.compareTo(null);
            if (iCompareTo2 < 0) {
                i2 = i4 - 1;
            } else {
                if (iCompareTo2 <= 0) {
                    return i4;
                }
                i3 = i4 + 1;
            }
        }
        return -(i3 + 1);
    }

    public final Object o(int i) {
        q();
        Object value = ((d2j) this.b[i]).getValue();
        Object[] objArr = this.b;
        System.arraycopy(objArr, i + 1, objArr, i, (this.c - i) - 1);
        this.c--;
        if (!this.d.isEmpty()) {
            Iterator it = p().entrySet().iterator();
            Object[] objArr2 = this.b;
            int i2 = this.c;
            Map.Entry entry = (Map.Entry) it.next();
            ubc.a(entry.getKey());
            objArr2[i2] = new d2j(this, null, entry.getValue());
            this.c++;
            it.remove();
        }
        return value;
    }

    public final SortedMap p() {
        q();
        if (this.d.isEmpty() && !(this.d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.d = treeMap;
            this.g = treeMap.descendingMap();
        }
        return (SortedMap) this.d;
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        ubc.a(obj);
        return f(null, obj2);
    }

    public final void q() {
        if (this.e) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public final Object remove(Object obj) {
        q();
        ubc.a(obj);
        int iN = n(null);
        if (iN >= 0) {
            return o(iN);
        }
        if (this.d.isEmpty()) {
            return null;
        }
        return this.d.remove(null);
    }

    @Override
    public final int size() {
        return this.c + this.d.size();
    }
}
