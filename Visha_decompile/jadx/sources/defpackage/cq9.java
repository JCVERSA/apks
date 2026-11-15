package defpackage;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class cq9 extends AbstractSet {
    public static final b d = new b(null);
    public Object b;
    public int c;

    public static final class a implements Iterator, qe5 {
        public final Iterator b;

        public a(Object[] objArr) {
            y45.j(objArr, "array");
            this.b = xg.a(objArr);
        }

        @Override
        public Void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean hasNext() {
            return this.b.hasNext();
        }

        @Override
        public Object next() {
            return this.b.next();
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final cq9 a() {
            return new cq9(null);
        }

        public final cq9 b(Collection collection) {
            y45.j(collection, "set");
            cq9 cq9Var = new cq9(null);
            cq9Var.addAll(collection);
            return cq9Var;
        }

        public b() {
        }
    }

    public static final class c implements Iterator, qe5 {
        public final Object b;
        public boolean c = true;

        public c(Object obj) {
            this.b = obj;
        }

        @Override
        public Void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean hasNext() {
            return this.c;
        }

        @Override
        public Object next() {
            if (!this.c) {
                throw new NoSuchElementException();
            }
            this.c = false;
            return this.b;
        }
    }

    public cq9(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final cq9 b() {
        return d.a();
    }

    @Override
    public boolean add(Object obj) {
        Object obj2;
        if (size() == 0) {
            this.b = obj;
        } else if (size() == 1) {
            if (y45.e(this.b, obj)) {
                return false;
            }
            this.b = new Object[]{this.b, obj};
        } else if (size() < 5) {
            Object obj3 = this.b;
            y45.h(obj3, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            Object[] objArr = (Object[]) obj3;
            if (hi.P(objArr, obj)) {
                return false;
            }
            if (size() == 4) {
                LinkedHashSet linkedHashSetG = ye9.g(Arrays.copyOf(objArr, objArr.length));
                linkedHashSetG.add(obj);
                obj2 = linkedHashSetG;
            } else {
                Object[] objArrCopyOf = Arrays.copyOf(objArr, size() + 1);
                y45.i(objArrCopyOf, "copyOf(this, newSize)");
                objArrCopyOf[objArrCopyOf.length - 1] = obj;
                obj2 = objArrCopyOf;
            }
            this.b = obj2;
        } else {
            Object obj4 = this.b;
            y45.h(obj4, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
            if (!ccb.e(obj4).add(obj)) {
                return false;
            }
        }
        f(size() + 1);
        return true;
    }

    public int c() {
        return this.c;
    }

    @Override
    public void clear() {
        this.b = null;
        f(0);
    }

    @Override
    public boolean contains(Object obj) {
        if (size() == 0) {
            return false;
        }
        if (size() == 1) {
            return y45.e(this.b, obj);
        }
        if (size() < 5) {
            Object obj2 = this.b;
            y45.h(obj2, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            return hi.P((Object[]) obj2, obj);
        }
        Object obj3 = this.b;
        y45.h(obj3, "null cannot be cast to non-null type kotlin.collections.Set<T of org.jetbrains.kotlin.utils.SmartSet>");
        return ((Set) obj3).contains(obj);
    }

    public void f(int i) {
        this.c = i;
    }

    @Override
    public Iterator iterator() {
        Iterator aVar;
        if (size() == 0) {
            return Collections.emptySet().iterator();
        }
        if (size() == 1) {
            aVar = new c(this.b);
        } else {
            if (size() >= 5) {
                Object obj = this.b;
                y45.h(obj, "null cannot be cast to non-null type kotlin.collections.MutableSet<T of org.jetbrains.kotlin.utils.SmartSet>");
                return ccb.e(obj).iterator();
            }
            Object obj2 = this.b;
            y45.h(obj2, "null cannot be cast to non-null type kotlin.Array<T of org.jetbrains.kotlin.utils.SmartSet>");
            aVar = new a((Object[]) obj2);
        }
        return aVar;
    }

    @Override
    public final int size() {
        return c();
    }

    public cq9() {
    }
}
