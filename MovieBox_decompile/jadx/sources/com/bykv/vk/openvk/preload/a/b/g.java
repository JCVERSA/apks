package com.bykv.vk.openvk.preload.a.b;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public final class g<K, V> extends AbstractMap<K, V> implements Serializable {

    private static final Comparator<Comparable> f19825d = new Comparator<Comparable>() {
        @Override
        public final int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    private static boolean f19826i = true;

    int f19827a;

    int f19828b;

    final d<K, V> f19829c;

    private Comparator<? super K> f19830e;

    private d<K, V> f19831f;

    private g<K, V>.a f19832g;

    private g<K, V>.b f19833h;

    class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override
        public final void clear() {
            g.this.clear();
        }

        @Override
        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && g.this.a((Map.Entry<?, ?>) obj) != null;
        }

        @Override
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new c(this) {
                {
                    g gVar = g.this;
                }

                @Override
                public final Object next() {
                    return a();
                }
            };
        }

        @Override
        public final boolean remove(Object obj) {
            d<K, V> dVarA;
            if (!(obj instanceof Map.Entry) || (dVarA = g.this.a((Map.Entry<?, ?>) obj)) == null) {
                return false;
            }
            g.this.a((d) dVarA, true);
            return true;
        }

        @Override
        public final int size() {
            return g.this.f19827a;
        }
    }

    final class b extends AbstractSet<K> {
        b() {
        }

        @Override
        public final void clear() {
            g.this.clear();
        }

        @Override
        public final boolean contains(Object obj) {
            return g.this.containsKey(obj);
        }

        @Override
        public final Iterator<K> iterator() {
            return new c(this) {
                {
                    g gVar = g.this;
                }

                @Override
                public final K next() {
                    return a().f19845f;
                }
            };
        }

        @Override
        public final boolean remove(Object obj) {
            return g.this.a(obj) != null;
        }

        @Override
        public final int size() {
            return g.this.f19827a;
        }
    }

    abstract class c<T> implements Iterator<T> {

        private d<K, V> f19836a;

        private d<K, V> f19837b = null;

        private int f19838c;

        c() {
            this.f19836a = g.this.f19829c.f19843d;
            this.f19838c = g.this.f19828b;
        }

        final d<K, V> a() {
            d<K, V> dVar = this.f19836a;
            g gVar = g.this;
            if (dVar == gVar.f19829c) {
                throw new NoSuchElementException();
            }
            if (gVar.f19828b != this.f19838c) {
                throw new ConcurrentModificationException();
            }
            this.f19836a = dVar.f19843d;
            this.f19837b = dVar;
            return dVar;
        }

        @Override
        public final boolean hasNext() {
            return this.f19836a != g.this.f19829c;
        }

        @Override
        public final void remove() {
            d<K, V> dVar = this.f19837b;
            if (dVar == null) {
                throw new IllegalStateException();
            }
            g.this.a((d) dVar, true);
            this.f19837b = null;
            this.f19838c = g.this.f19828b;
        }
    }

    public g() {
        this(f19825d);
    }

    private d<K, V> a(K k10, boolean z10) {
        int iCompareTo;
        d<K, V> dVar;
        Comparator<? super K> comparator = this.f19830e;
        d<K, V> dVar2 = this.f19831f;
        if (dVar2 != null) {
            Comparable comparable = comparator == f19825d ? (Comparable) k10 : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(dVar2.f19845f) : comparator.compare(k10, dVar2.f19845f);
                if (iCompareTo != 0) {
                    d<K, V> dVar3 = iCompareTo < 0 ? dVar2.f19841b : dVar2.f19842c;
                    if (dVar3 == null) {
                        break;
                    }
                    dVar2 = dVar3;
                } else {
                    return dVar2;
                }
            }
        } else {
            iCompareTo = 0;
        }
        if (!z10) {
            return null;
        }
        d<K, V> dVar4 = this.f19829c;
        if (dVar2 != null) {
            dVar = new d<>(dVar2, k10, dVar4, dVar4.f19844e);
            if (iCompareTo < 0) {
                dVar2.f19841b = dVar;
            } else {
                dVar2.f19842c = dVar;
            }
            b(dVar2, true);
        } else {
            if (comparator == f19825d && !(k10 instanceof Comparable)) {
                throw new ClassCastException(k10.getClass().getName() + " is not Comparable");
            }
            dVar = new d<>(dVar2, k10, dVar4, dVar4.f19844e);
            this.f19831f = dVar;
        }
        this.f19827a++;
        this.f19828b++;
        return dVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private d<K, V> b(Object obj) {
        if (obj != 0) {
            try {
                return a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return null;
    }

    @Override
    public final void clear() {
        this.f19831f = null;
        this.f19827a = 0;
        this.f19828b++;
        d<K, V> dVar = this.f19829c;
        dVar.f19844e = dVar;
        dVar.f19843d = dVar;
    }

    @Override
    public final boolean containsKey(Object obj) {
        return b(obj) != null;
    }

    @Override
    public final Set<Map.Entry<K, V>> entrySet() {
        g<K, V>.a aVar = this.f19832g;
        if (aVar != null) {
            return aVar;
        }
        g<K, V>.a aVar2 = new a();
        this.f19832g = aVar2;
        return aVar2;
    }

    @Override
    public final V get(Object obj) {
        d<K, V> dVarB = b(obj);
        if (dVarB != null) {
            return dVarB.f19846g;
        }
        return null;
    }

    @Override
    public final Set<K> keySet() {
        g<K, V>.b bVar = this.f19833h;
        if (bVar != null) {
            return bVar;
        }
        g<K, V>.b bVar2 = new b();
        this.f19833h = bVar2;
        return bVar2;
    }

    @Override
    public final V put(K k10, V v10) {
        if (k10 == null) {
            throw new NullPointerException("key == null");
        }
        d<K, V> dVarA = a((Object) k10, true);
        V v11 = dVarA.f19846g;
        dVarA.f19846g = v10;
        return v11;
    }

    @Override
    public final V remove(Object obj) {
        d<K, V> dVarA = a(obj);
        if (dVarA != null) {
            return dVarA.f19846g;
        }
        return null;
    }

    @Override
    public final int size() {
        return this.f19827a;
    }

    private g(Comparator<? super K> comparator) {
        this.f19827a = 0;
        this.f19828b = 0;
        this.f19829c = new d<>();
        this.f19830e = comparator == null ? f19825d : comparator;
    }

    private void b(d<K, V> dVar, boolean z10) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.f19841b;
            d<K, V> dVar3 = dVar.f19842c;
            int i10 = dVar2 != null ? dVar2.f19847h : 0;
            int i11 = dVar3 != null ? dVar3.f19847h : 0;
            int i12 = i10 - i11;
            if (i12 == -2) {
                d<K, V> dVar4 = dVar3.f19841b;
                d<K, V> dVar5 = dVar3.f19842c;
                int i13 = (dVar4 != null ? dVar4.f19847h : 0) - (dVar5 != null ? dVar5.f19847h : 0);
                if (i13 == -1 || (i13 == 0 && !z10)) {
                    a((d) dVar);
                } else {
                    if (!f19826i && i13 != 1) {
                        throw new AssertionError();
                    }
                    b((d) dVar3);
                    a((d) dVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 2) {
                d<K, V> dVar6 = dVar2.f19841b;
                d<K, V> dVar7 = dVar2.f19842c;
                int i14 = (dVar6 != null ? dVar6.f19847h : 0) - (dVar7 != null ? dVar7.f19847h : 0);
                if (i14 == 1 || (i14 == 0 && !z10)) {
                    b((d) dVar);
                } else {
                    if (!f19826i && i14 != -1) {
                        throw new AssertionError();
                    }
                    a((d) dVar2);
                    b((d) dVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 0) {
                dVar.f19847h = i10 + 1;
                if (z10) {
                    return;
                }
            } else {
                if (!f19826i && i12 != -1 && i12 != 1) {
                    throw new AssertionError();
                }
                dVar.f19847h = Math.max(i10, i11) + 1;
                if (!z10) {
                    return;
                }
            }
            dVar = dVar.f19840a;
        }
    }

    static final class d<K, V> implements Map.Entry<K, V> {

        d<K, V> f19840a;

        d<K, V> f19841b;

        d<K, V> f19842c;

        d<K, V> f19843d;

        d<K, V> f19844e;

        final K f19845f;

        V f19846g;

        int f19847h;

        d() {
            this.f19845f = null;
            this.f19844e = this;
            this.f19843d = this;
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k10 = this.f19845f;
                if (k10 != null ? k10.equals(entry.getKey()) : entry.getKey() == null) {
                    V v10 = this.f19846g;
                    if (v10 == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (v10.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override
        public final K getKey() {
            return this.f19845f;
        }

        @Override
        public final V getValue() {
            return this.f19846g;
        }

        @Override
        public final int hashCode() {
            K k10 = this.f19845f;
            int iHashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f19846g;
            return iHashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override
        public final V setValue(V v10) {
            V v11 = this.f19846g;
            this.f19846g = v10;
            return v11;
        }

        public final String toString() {
            return this.f19845f + UrlUtils.EQUAL_MARK + this.f19846g;
        }

        d(d<K, V> dVar, K k10, d<K, V> dVar2, d<K, V> dVar3) {
            this.f19840a = dVar;
            this.f19845f = k10;
            this.f19847h = 1;
            this.f19843d = dVar2;
            this.f19844e = dVar3;
            dVar3.f19843d = this;
            dVar2.f19844e = this;
        }
    }

    final d<K, V> a(Map.Entry<?, ?> entry) {
        d<K, V> dVarB = b(entry.getKey());
        if (dVarB == null) {
            return null;
        }
        V v10 = dVarB.f19846g;
        Object value = entry.getValue();
        if (v10 == value || (v10 != null && v10.equals(value))) {
            return dVarB;
        }
        return null;
    }

    final void a(d<K, V> dVar, boolean z10) {
        int i10;
        if (z10) {
            d<K, V> dVar2 = dVar.f19844e;
            dVar2.f19843d = dVar.f19843d;
            dVar.f19843d.f19844e = dVar2;
        }
        d<K, V> dVar3 = dVar.f19841b;
        d<K, V> dVar4 = dVar.f19842c;
        d<K, V> dVar5 = dVar.f19840a;
        int i11 = 0;
        if (dVar3 != null && dVar4 != null) {
            if (dVar3.f19847h > dVar4.f19847h) {
                d<K, V> dVar6 = dVar3.f19842c;
                while (true) {
                    d<K, V> dVar7 = dVar6;
                    dVar4 = dVar3;
                    dVar3 = dVar7;
                    if (dVar3 == null) {
                        break;
                    } else {
                        dVar6 = dVar3.f19842c;
                    }
                }
            } else {
                while (true) {
                    d<K, V> dVar8 = dVar4.f19841b;
                    if (dVar8 == null) {
                        break;
                    } else {
                        dVar4 = dVar8;
                    }
                }
            }
            a((d) dVar4, false);
            d<K, V> dVar9 = dVar.f19841b;
            if (dVar9 != null) {
                i10 = dVar9.f19847h;
                dVar4.f19841b = dVar9;
                dVar9.f19840a = dVar4;
                dVar.f19841b = null;
            } else {
                i10 = 0;
            }
            d<K, V> dVar10 = dVar.f19842c;
            if (dVar10 != null) {
                i11 = dVar10.f19847h;
                dVar4.f19842c = dVar10;
                dVar10.f19840a = dVar4;
                dVar.f19842c = null;
            }
            dVar4.f19847h = Math.max(i10, i11) + 1;
            a(dVar, dVar4);
            return;
        }
        if (dVar3 != null) {
            a(dVar, dVar3);
            dVar.f19841b = null;
        } else if (dVar4 != null) {
            a(dVar, dVar4);
            dVar.f19842c = null;
        } else {
            a(dVar, (d) null);
        }
        b(dVar5, false);
        this.f19827a--;
        this.f19828b++;
    }

    private void b(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f19841b;
        d<K, V> dVar3 = dVar.f19842c;
        d<K, V> dVar4 = dVar2.f19841b;
        d<K, V> dVar5 = dVar2.f19842c;
        dVar.f19841b = dVar5;
        if (dVar5 != null) {
            dVar5.f19840a = dVar;
        }
        a(dVar, dVar2);
        dVar2.f19842c = dVar;
        dVar.f19840a = dVar2;
        int iMax = Math.max(dVar3 != null ? dVar3.f19847h : 0, dVar5 != null ? dVar5.f19847h : 0) + 1;
        dVar.f19847h = iMax;
        dVar2.f19847h = Math.max(iMax, dVar4 != null ? dVar4.f19847h : 0) + 1;
    }

    final d<K, V> a(Object obj) {
        d<K, V> dVarB = b(obj);
        if (dVarB != null) {
            a((d) dVarB, true);
        }
        return dVarB;
    }

    private void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f19840a;
        dVar.f19840a = null;
        if (dVar2 != null) {
            dVar2.f19840a = dVar3;
        }
        if (dVar3 != null) {
            if (dVar3.f19841b == dVar) {
                dVar3.f19841b = dVar2;
                return;
            } else {
                if (!f19826i && dVar3.f19842c != dVar) {
                    throw new AssertionError();
                }
                dVar3.f19842c = dVar2;
                return;
            }
        }
        this.f19831f = dVar2;
    }

    private void a(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f19841b;
        d<K, V> dVar3 = dVar.f19842c;
        d<K, V> dVar4 = dVar3.f19841b;
        d<K, V> dVar5 = dVar3.f19842c;
        dVar.f19842c = dVar4;
        if (dVar4 != null) {
            dVar4.f19840a = dVar;
        }
        a(dVar, dVar3);
        dVar3.f19841b = dVar;
        dVar.f19840a = dVar3;
        int iMax = Math.max(dVar2 != null ? dVar2.f19847h : 0, dVar4 != null ? dVar4.f19847h : 0) + 1;
        dVar.f19847h = iMax;
        dVar3.f19847h = Math.max(iMax, dVar5 != null ? dVar5.f19847h : 0) + 1;
    }
}
