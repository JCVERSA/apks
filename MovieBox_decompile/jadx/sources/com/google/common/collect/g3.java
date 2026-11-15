package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

public abstract class g3 {

    class a extends j2 {

        final Iterable f29964b;

        final com.google.common.base.n f29965c;

        a(Iterable iterable, com.google.common.base.n nVar) {
            this.f29964b = iterable;
            this.f29965c = nVar;
        }

        @Override
        public Iterator iterator() {
            return Iterators.k(this.f29964b.iterator(), this.f29965c);
        }
    }

    class b extends j2 {

        final Iterable f29966b;

        final com.google.common.base.f f29967c;

        b(Iterable iterable, com.google.common.base.f fVar) {
            this.f29966b = iterable;
            this.f29967c = fVar;
        }

        @Override
        public Iterator iterator() {
            return Iterators.A(this.f29966b.iterator(), this.f29967c);
        }
    }

    class c extends j2 {

        final Iterable f29968b;

        final int f29969c;

        class a implements Iterator {

            boolean f29970a = true;

            final Iterator f29971b;

            final c f29972c;

            a(c cVar, Iterator it) {
                this.f29971b = it;
                this.f29972c = cVar;
            }

            @Override
            public boolean hasNext() {
                return this.f29971b.hasNext();
            }

            @Override
            public Object next() {
                Object next = this.f29971b.next();
                this.f29970a = false;
                return next;
            }

            @Override
            public void remove() {
                e2.e(!this.f29970a);
                this.f29971b.remove();
            }
        }

        c(Iterable iterable, int i10) {
            this.f29968b = iterable;
            this.f29969c = i10;
        }

        @Override
        public Iterator iterator() {
            Iterable iterable = this.f29968b;
            if (iterable instanceof List) {
                List list = (List) iterable;
                return list.subList(Math.min(list.size(), this.f29969c), list.size()).iterator();
            }
            Iterator it = iterable.iterator();
            Iterators.b(it, this.f29969c);
            return new a(this, it);
        }
    }

    public static boolean a(Collection collection, Iterable iterable) {
        return iterable instanceof Collection ? collection.addAll((Collection) iterable) : Iterators.a(collection, ((Iterable) com.google.common.base.m.o(iterable)).iterator());
    }

    public static boolean b(Iterable iterable, com.google.common.base.n nVar) {
        return Iterators.c(iterable.iterator(), nVar);
    }

    private static Collection c(Iterable iterable) {
        return iterable instanceof Collection ? (Collection) iterable : Lists.k(iterable.iterator());
    }

    public static Iterable d(Iterable iterable, Iterable iterable2) {
        return j2.a(iterable, iterable2);
    }

    public static Iterable e(Iterable iterable, com.google.common.base.n nVar) {
        com.google.common.base.m.o(iterable);
        com.google.common.base.m.o(nVar);
        return new a(iterable, nVar);
    }

    public static Object f(Iterable iterable, Object obj) {
        return Iterators.o(iterable.iterator(), obj);
    }

    public static Object g(Iterable iterable) {
        if (!(iterable instanceof List)) {
            return Iterators.m(iterable.iterator());
        }
        List list = (List) iterable;
        if (list.isEmpty()) {
            throw new NoSuchElementException();
        }
        return i(list);
    }

    public static Object h(Iterable iterable, Object obj) {
        if (iterable instanceof Collection) {
            if (((Collection) iterable).isEmpty()) {
                return obj;
            }
            if (iterable instanceof List) {
                return i(Lists.b(iterable));
            }
        }
        return Iterators.n(iterable.iterator(), obj);
    }

    private static Object i(List list) {
        return list.get(list.size() - 1);
    }

    public static Object j(Iterable iterable) {
        return Iterators.p(iterable.iterator());
    }

    public static boolean k(Iterable iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).isEmpty() : !iterable.iterator().hasNext();
    }

    public static boolean l(Iterable iterable, com.google.common.base.n nVar) {
        return ((iterable instanceof RandomAccess) && (iterable instanceof List)) ? m((List) iterable, (com.google.common.base.n) com.google.common.base.m.o(nVar)) : Iterators.v(iterable.iterator(), nVar);
    }

    private static boolean m(List list, com.google.common.base.n nVar) {
        int i10 = 0;
        int i11 = 0;
        while (i10 < list.size()) {
            Object obj = list.get(i10);
            if (!nVar.apply(obj)) {
                if (i10 > i11) {
                    try {
                        list.set(i11, obj);
                    } catch (IllegalArgumentException unused) {
                        o(list, nVar, i11, i10);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        o(list, nVar, i11, i10);
                        return true;
                    }
                }
                i11++;
            }
            i10++;
        }
        list.subList(i11, list.size()).clear();
        return i10 != i11;
    }

    public static Iterable n(Iterable iterable, int i10) {
        com.google.common.base.m.o(iterable);
        com.google.common.base.m.e(i10 >= 0, "number to skip cannot be negative");
        return new c(iterable, i10);
    }

    private static void o(List list, com.google.common.base.n nVar, int i10, int i11) {
        for (int size = list.size() - 1; size > i11; size--) {
            if (nVar.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            list.remove(i12);
        }
    }

    static Object[] p(Iterable iterable) {
        return c(iterable).toArray();
    }

    static Object[] q(Iterable iterable, Object[] objArr) {
        return c(iterable).toArray(objArr);
    }

    public static String r(Iterable iterable) {
        return Iterators.z(iterable.iterator());
    }

    public static Iterable s(Iterable iterable, com.google.common.base.f fVar) {
        com.google.common.base.m.o(iterable);
        com.google.common.base.m.o(fVar);
        return new b(iterable, fVar);
    }
}
