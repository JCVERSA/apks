package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.PriorityQueue;
import java.util.Queue;

public abstract class Iterators {

    private enum EmptyModifiableIterator implements Iterator<Object> {
        INSTANCE;

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
            e2.e(false);
        }
    }

    class a extends r4 {

        final Iterator f29650a;

        a(Iterator it) {
            this.f29650a = it;
        }

        @Override
        public boolean hasNext() {
            return this.f29650a.hasNext();
        }

        @Override
        public Object next() {
            return this.f29650a.next();
        }
    }

    class b extends AbstractIterator {

        final Iterator f29651c;

        final com.google.common.base.n f29652d;

        b(Iterator it, com.google.common.base.n nVar) {
            this.f29651c = it;
            this.f29652d = nVar;
        }

        @Override
        protected Object a() {
            while (this.f29651c.hasNext()) {
                Object next = this.f29651c.next();
                if (this.f29652d.apply(next)) {
                    return next;
                }
            }
            return b();
        }
    }

    class c extends o4 {

        final com.google.common.base.f f29653b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Iterator it, com.google.common.base.f fVar) {
            super(it);
            this.f29653b = fVar;
        }

        @Override
        Object a(Object obj) {
            return this.f29653b.apply(obj);
        }
    }

    private static final class d extends com.google.common.collect.a {

        static final s4 f29654d = new d(new Object[0], 0);

        private final Object[] f29655c;

        d(Object[] objArr, int i10) {
            super(objArr.length, i10);
            this.f29655c = objArr;
        }

        @Override
        protected Object a(int i10) {
            return this.f29655c[i10];
        }
    }

    private static class e implements Iterator {

        private Iterator f29656a;

        private Iterator f29657b = Iterators.h();

        private Iterator f29658c;

        private Deque f29659d;

        e(Iterator it) {
            this.f29658c = (Iterator) com.google.common.base.m.o(it);
        }

        private Iterator a() {
            while (true) {
                Iterator it = this.f29658c;
                if (it != null && it.hasNext()) {
                    return this.f29658c;
                }
                Deque deque = this.f29659d;
                if (deque == null || deque.isEmpty()) {
                    return null;
                }
                this.f29658c = (Iterator) this.f29659d.removeFirst();
            }
        }

        @Override
        public boolean hasNext() {
            while (!((Iterator) com.google.common.base.m.o(this.f29657b)).hasNext()) {
                Iterator itA = a();
                this.f29658c = itA;
                if (itA == null) {
                    return false;
                }
                Iterator it = (Iterator) itA.next();
                this.f29657b = it;
                if (it instanceof e) {
                    e eVar = (e) it;
                    this.f29657b = eVar.f29657b;
                    if (this.f29659d == null) {
                        this.f29659d = new ArrayDeque();
                    }
                    this.f29659d.addFirst(this.f29658c);
                    if (eVar.f29659d != null) {
                        while (!eVar.f29659d.isEmpty()) {
                            this.f29659d.addFirst((Iterator) eVar.f29659d.removeLast());
                        }
                    }
                    this.f29658c = eVar.f29658c;
                }
            }
            return true;
        }

        @Override
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Iterator it = this.f29657b;
            this.f29656a = it;
            return it.next();
        }

        @Override
        public void remove() {
            Iterator it = this.f29656a;
            if (it == null) {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            it.remove();
            this.f29656a = null;
        }
    }

    static class f extends r4 {

        final Queue f29660a;

        public f(Iterable iterable, final Comparator comparator) {
            this.f29660a = new PriorityQueue(2, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return Iterators.f.b(comparator, (q3) obj, (q3) obj2);
                }
            });
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                Iterator it2 = (Iterator) it.next();
                if (it2.hasNext()) {
                    this.f29660a.add(Iterators.s(it2));
                }
            }
        }

        public static int b(Comparator comparator, q3 q3Var, q3 q3Var2) {
            return comparator.compare(q3Var.peek(), q3Var2.peek());
        }

        @Override
        public boolean hasNext() {
            return !this.f29660a.isEmpty();
        }

        @Override
        public Object next() {
            q3 q3Var = (q3) this.f29660a.remove();
            Object next = q3Var.next();
            if (q3Var.hasNext()) {
                this.f29660a.add(q3Var);
            }
            return next;
        }
    }

    private static class g implements q3 {

        private final Iterator f29661a;

        private boolean f29662b;

        private Object f29663c;

        public g(Iterator it) {
            this.f29661a = (Iterator) com.google.common.base.m.o(it);
        }

        @Override
        public boolean hasNext() {
            return this.f29662b || this.f29661a.hasNext();
        }

        @Override
        public Object next() {
            if (!this.f29662b) {
                return this.f29661a.next();
            }
            Object objA = m3.a(this.f29663c);
            this.f29662b = false;
            this.f29663c = null;
            return objA;
        }

        @Override
        public Object peek() {
            if (!this.f29662b) {
                this.f29663c = this.f29661a.next();
                this.f29662b = true;
            }
            return m3.a(this.f29663c);
        }

        @Override
        public void remove() {
            com.google.common.base.m.v(!this.f29662b, "Can't remove after you've peeked at next");
            this.f29661a.remove();
        }
    }

    private static final class h extends r4 {

        private final Object f29664a;

        private boolean f29665b;

        h(Object obj) {
            this.f29664a = obj;
        }

        @Override
        public boolean hasNext() {
            return !this.f29665b;
        }

        @Override
        public Object next() {
            if (this.f29665b) {
                throw new NoSuchElementException();
            }
            this.f29665b = true;
            return this.f29664a;
        }
    }

    public static Iterator A(Iterator it, com.google.common.base.f fVar) {
        com.google.common.base.m.o(fVar);
        return new c(it, fVar);
    }

    public static r4 B(Iterator it) {
        com.google.common.base.m.o(it);
        return it instanceof r4 ? (r4) it : new a(it);
    }

    public static boolean a(Collection collection, Iterator it) {
        com.google.common.base.m.o(collection);
        com.google.common.base.m.o(it);
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= collection.add(it.next());
        }
        return zAdd;
    }

    public static int b(Iterator it, int i10) {
        com.google.common.base.m.o(it);
        int i11 = 0;
        com.google.common.base.m.e(i10 >= 0, "numberToAdvance must be nonnegative");
        while (i11 < i10 && it.hasNext()) {
            it.next();
            i11++;
        }
        return i11;
    }

    public static boolean c(Iterator it, com.google.common.base.n nVar) {
        return q(it, nVar) != -1;
    }

    static void d(Iterator it) {
        com.google.common.base.m.o(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static Iterator e(Iterator it) {
        return new e(it);
    }

    public static boolean f(Iterator it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean g(Iterator it, Iterator it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !com.google.common.base.j.a(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    static r4 h() {
        return i();
    }

    static s4 i() {
        return d.f29654d;
    }

    static Iterator j() {
        return EmptyModifiableIterator.INSTANCE;
    }

    public static r4 k(Iterator it, com.google.common.base.n nVar) {
        com.google.common.base.m.o(it);
        com.google.common.base.m.o(nVar);
        return new b(it, nVar);
    }

    public static Object l(Iterator it, com.google.common.base.n nVar) {
        com.google.common.base.m.o(it);
        com.google.common.base.m.o(nVar);
        while (it.hasNext()) {
            Object next = it.next();
            if (nVar.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    public static Object m(Iterator it) {
        Object next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static Object n(Iterator it, Object obj) {
        return it.hasNext() ? m(it) : obj;
    }

    public static Object o(Iterator it, Object obj) {
        return it.hasNext() ? it.next() : obj;
    }

    public static Object p(Iterator it) {
        Object next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("expected one element but was: <");
        sb2.append(next);
        for (int i10 = 0; i10 < 4 && it.hasNext(); i10++) {
            sb2.append(", ");
            sb2.append(it.next());
        }
        if (it.hasNext()) {
            sb2.append(", ...");
        }
        sb2.append('>');
        throw new IllegalArgumentException(sb2.toString());
    }

    public static int q(Iterator it, com.google.common.base.n nVar) {
        com.google.common.base.m.p(nVar, "predicate");
        int i10 = 0;
        while (it.hasNext()) {
            if (nVar.apply(it.next())) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static r4 r(Iterable iterable, Comparator comparator) {
        com.google.common.base.m.p(iterable, "iterators");
        com.google.common.base.m.p(comparator, "comparator");
        return new f(iterable, comparator);
    }

    public static q3 s(Iterator it) {
        return it instanceof g ? (g) it : new g(it);
    }

    static Object t(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        it.remove();
        return next;
    }

    public static boolean u(Iterator it, Collection collection) {
        com.google.common.base.m.o(collection);
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static boolean v(Iterator it, com.google.common.base.n nVar) {
        com.google.common.base.m.o(nVar);
        boolean z10 = false;
        while (it.hasNext()) {
            if (nVar.apply(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static boolean w(Iterator it, Collection collection) {
        com.google.common.base.m.o(collection);
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static r4 x(Object obj) {
        return new h(obj);
    }

    public static int y(Iterator it) {
        long j10 = 0;
        while (it.hasNext()) {
            it.next();
            j10++;
        }
        return Ints.n(j10);
    }

    public static String z(Iterator it) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        boolean z10 = true;
        while (it.hasNext()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append(it.next());
            z10 = false;
        }
        sb2.append(']');
        return sb2.toString();
    }
}
