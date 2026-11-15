package defpackage;

import com.google.common.collect.Iterators;
import com.google.common.collect.Lists;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

public abstract class v55 {

    public class a extends a24 {
        public final Iterable c;
        public final he8 d;

        public a(Iterable iterable, he8 he8Var) {
            this.c = iterable;
            this.d = he8Var;
        }

        @Override
        public Iterator iterator() {
            return Iterators.k(this.c.iterator(), this.d);
        }
    }

    public class b extends a24 {
        public final Iterable c;
        public final o74 d;

        public b(Iterable iterable, o74 o74Var) {
            this.c = iterable;
            this.d = o74Var;
        }

        @Override
        public Iterator iterator() {
            return Iterators.A(this.c.iterator(), this.d);
        }
    }

    public class c extends a24 {
        public final Iterable c;
        public final int d;

        public class a implements Iterator {
            public boolean b = true;
            public final Iterator c;
            public final c d;

            public a(c cVar, Iterator it) {
                this.c = it;
                this.d = cVar;
            }

            @Override
            public boolean hasNext() {
                return this.c.hasNext();
            }

            @Override
            public Object next() {
                Object next = this.c.next();
                this.b = false;
                return next;
            }

            @Override
            public void remove() {
                k71.e(!this.b);
                this.c.remove();
            }
        }

        public c(Iterable iterable, int i) {
            this.c = iterable;
            this.d = i;
        }

        @Override
        public Iterator iterator() {
            Iterable iterable = this.c;
            if (iterable instanceof List) {
                List list = (List) iterable;
                return list.subList(Math.min(list.size(), this.d), list.size()).iterator();
            }
            Iterator it = iterable.iterator();
            Iterators.b(it, this.d);
            return new a(this, it);
        }
    }

    public static boolean a(Collection collection, Iterable iterable) {
        return iterable instanceof Collection ? collection.addAll((Collection) iterable) : Iterators.a(collection, ((Iterable) xd8.o(iterable)).iterator());
    }

    public static boolean b(Iterable iterable, he8 he8Var) {
        return Iterators.c(iterable.iterator(), he8Var);
    }

    public static Collection c(Iterable iterable) {
        return iterable instanceof Collection ? (Collection) iterable : Lists.k(iterable.iterator());
    }

    public static Iterable d(Iterable iterable, Iterable iterable2) {
        return a24.b(iterable, iterable2);
    }

    public static Iterable e(Iterable iterable, he8 he8Var) {
        xd8.o(iterable);
        xd8.o(he8Var);
        return new a(iterable, he8Var);
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

    public static Object i(List list) {
        return list.get(list.size() - 1);
    }

    public static Object j(Iterable iterable) {
        return Iterators.p(iterable.iterator());
    }

    public static boolean k(Iterable iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).isEmpty() : !iterable.iterator().hasNext();
    }

    public static boolean l(Iterable iterable, he8 he8Var) {
        return ((iterable instanceof RandomAccess) && (iterable instanceof List)) ? m((List) iterable, (he8) xd8.o(he8Var)) : Iterators.v(iterable.iterator(), he8Var);
    }

    public static boolean m(List list, he8 he8Var) {
        int i = 0;
        int i2 = 0;
        while (i < list.size()) {
            Object obj = list.get(i);
            if (!he8Var.apply(obj)) {
                if (i > i2) {
                    try {
                        list.set(i2, obj);
                    } catch (IllegalArgumentException unused) {
                        p(list, he8Var, i2, i);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        p(list, he8Var, i2, i);
                        return true;
                    }
                }
                i2++;
            }
            i++;
        }
        list.subList(i2, list.size()).clear();
        return i != i2;
    }

    public static int n(Iterable iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).size() : Iterators.y(iterable.iterator());
    }

    public static Iterable o(Iterable iterable, int i) {
        xd8.o(iterable);
        xd8.e(i >= 0, "number to skip cannot be negative");
        return new c(iterable, i);
    }

    public static void p(List list, he8 he8Var, int i, int i2) {
        for (int size = list.size() - 1; size > i2; size--) {
            if (he8Var.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            list.remove(i3);
        }
    }

    public static Object[] q(Iterable iterable) {
        return c(iterable).toArray();
    }

    public static Object[] r(Iterable iterable, Object[] objArr) {
        return c(iterable).toArray(objArr);
    }

    public static String s(Iterable iterable) {
        return Iterators.z(iterable.iterator());
    }

    public static Iterable t(Iterable iterable, o74 o74Var) {
        xd8.o(iterable);
        xd8.o(o74Var);
        return new b(iterable, o74Var);
    }
}
