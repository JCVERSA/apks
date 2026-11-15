package com.google.common.collect;

import com.google.common.collect.Iterators;
import com.google.common.primitives.Ints;
import defpackage.a3;
import defpackage.dgb;
import defpackage.fgb;
import defpackage.he8;
import defpackage.k71;
import defpackage.kc7;
import defpackage.o74;
import defpackage.r37;
import defpackage.sy7;
import defpackage.xd8;
import defpackage.y6b;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.PriorityQueue;
import java.util.Queue;

public abstract class Iterators {

    public enum EmptyModifiableIterator implements Iterator<Object> {
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
            k71.e(false);
        }
    }

    public class a extends dgb {
        public final Iterator b;

        public a(Iterator it) {
            this.b = it;
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

    public class b extends AbstractIterator {
        public final Iterator d;
        public final he8 e;

        public b(Iterator it, he8 he8Var) {
            this.d = it;
            this.e = he8Var;
        }

        @Override
        public Object a() {
            while (this.d.hasNext()) {
                Object next = this.d.next();
                if (this.e.apply(next)) {
                    return next;
                }
            }
            return b();
        }
    }

    public class c extends y6b {
        public final o74 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Iterator it, o74 o74Var) {
            super(it);
            this.c = o74Var;
        }

        @Override
        public Object a(Object obj) {
            return this.c.apply(obj);
        }
    }

    public static final class d extends a3 {
        public static final fgb e = new d(new Object[0], 0);
        public final Object[] d;

        public d(Object[] objArr, int i) {
            super(objArr.length, i);
            this.d = objArr;
        }

        @Override
        public Object a(int i) {
            return this.d[i];
        }
    }

    public static class e implements Iterator {
        public Iterator b;
        public Iterator c = Iterators.h();
        public Iterator d;
        public Deque e;

        public e(Iterator it) {
            this.d = (Iterator) xd8.o(it);
        }

        public final Iterator a() {
            while (true) {
                Iterator it = this.d;
                if (it != null && it.hasNext()) {
                    return this.d;
                }
                Deque deque = this.e;
                if (deque == null || deque.isEmpty()) {
                    return null;
                }
                this.d = (Iterator) this.e.removeFirst();
            }
        }

        @Override
        public boolean hasNext() {
            while (!((Iterator) xd8.o(this.c)).hasNext()) {
                Iterator itA = a();
                this.d = itA;
                if (itA == null) {
                    return false;
                }
                Iterator it = (Iterator) itA.next();
                this.c = it;
                if (it instanceof e) {
                    e eVar = (e) it;
                    this.c = eVar.c;
                    if (this.e == null) {
                        this.e = new ArrayDeque();
                    }
                    this.e.addFirst(this.d);
                    if (eVar.e != null) {
                        while (!eVar.e.isEmpty()) {
                            this.e.addFirst((Iterator) eVar.e.removeLast());
                        }
                    }
                    this.d = eVar.d;
                }
            }
            return true;
        }

        @Override
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Iterator it = this.c;
            this.b = it;
            return it.next();
        }

        @Override
        public void remove() {
            Iterator it = this.b;
            if (it == null) {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            it.remove();
            this.b = null;
        }
    }

    public static class f extends dgb {
        public final Queue b;

        public f(Iterable iterable, final Comparator comparator) {
            this.b = new PriorityQueue(2, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return Iterators.f.b(comparator, (sy7) obj, (sy7) obj2);
                }
            });
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                Iterator it2 = (Iterator) it.next();
                if (it2.hasNext()) {
                    this.b.add(Iterators.s(it2));
                }
            }
        }

        public static int b(Comparator comparator, sy7 sy7Var, sy7 sy7Var2) {
            return comparator.compare(sy7Var.peek(), sy7Var2.peek());
        }

        @Override
        public boolean hasNext() {
            return !this.b.isEmpty();
        }

        @Override
        public Object next() {
            sy7 sy7Var = (sy7) this.b.remove();
            Object next = sy7Var.next();
            if (sy7Var.hasNext()) {
                this.b.add(sy7Var);
            }
            return next;
        }
    }

    public static class g implements sy7 {
        public final Iterator b;
        public boolean c;
        public Object d;

        public g(Iterator it) {
            this.b = (Iterator) xd8.o(it);
        }

        @Override
        public boolean hasNext() {
            return this.c || this.b.hasNext();
        }

        @Override
        public Object next() {
            if (!this.c) {
                return this.b.next();
            }
            Object objA = r37.a(this.d);
            this.c = false;
            this.d = null;
            return objA;
        }

        @Override
        public Object peek() {
            if (!this.c) {
                this.d = this.b.next();
                this.c = true;
            }
            return r37.a(this.d);
        }

        @Override
        public void remove() {
            xd8.v(!this.c, "Can't remove after you've peeked at next");
            this.b.remove();
        }
    }

    public static final class h extends dgb {
        public final Object b;
        public boolean c;

        public h(Object obj) {
            this.b = obj;
        }

        @Override
        public boolean hasNext() {
            return !this.c;
        }

        @Override
        public Object next() {
            if (this.c) {
                throw new NoSuchElementException();
            }
            this.c = true;
            return this.b;
        }
    }

    public static Iterator A(Iterator it, o74 o74Var) {
        xd8.o(o74Var);
        return new c(it, o74Var);
    }

    public static dgb B(Iterator it) {
        xd8.o(it);
        return it instanceof dgb ? (dgb) it : new a(it);
    }

    public static boolean a(Collection collection, Iterator it) {
        xd8.o(collection);
        xd8.o(it);
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= collection.add(it.next());
        }
        return zAdd;
    }

    public static int b(Iterator it, int i) {
        xd8.o(it);
        int i2 = 0;
        xd8.e(i >= 0, "numberToAdvance must be nonnegative");
        while (i2 < i && it.hasNext()) {
            it.next();
            i2++;
        }
        return i2;
    }

    public static boolean c(Iterator it, he8 he8Var) {
        return q(it, he8Var) != -1;
    }

    public static void d(Iterator it) {
        xd8.o(it);
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
            if (!it2.hasNext() || !kc7.a(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    public static dgb h() {
        return i();
    }

    public static fgb i() {
        return d.e;
    }

    public static Iterator j() {
        return EmptyModifiableIterator.INSTANCE;
    }

    public static dgb k(Iterator it, he8 he8Var) {
        xd8.o(it);
        xd8.o(he8Var);
        return new b(it, he8Var);
    }

    public static Object l(Iterator it, he8 he8Var) {
        xd8.o(it);
        xd8.o(he8Var);
        while (it.hasNext()) {
            Object next = it.next();
            if (he8Var.apply(next)) {
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
        StringBuilder sb = new StringBuilder();
        sb.append("expected one element but was: <");
        sb.append(next);
        for (int i = 0; i < 4 && it.hasNext(); i++) {
            sb.append(", ");
            sb.append(it.next());
        }
        if (it.hasNext()) {
            sb.append(", ...");
        }
        sb.append('>');
        throw new IllegalArgumentException(sb.toString());
    }

    public static int q(Iterator it, he8 he8Var) {
        xd8.p(he8Var, "predicate");
        int i = 0;
        while (it.hasNext()) {
            if (he8Var.apply(it.next())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static dgb r(Iterable iterable, Comparator comparator) {
        xd8.p(iterable, "iterators");
        xd8.p(comparator, "comparator");
        return new f(iterable, comparator);
    }

    public static sy7 s(Iterator it) {
        return it instanceof g ? (g) it : new g(it);
    }

    public static Object t(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        it.remove();
        return next;
    }

    public static boolean u(Iterator it, Collection collection) {
        xd8.o(collection);
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static boolean v(Iterator it, he8 he8Var) {
        xd8.o(he8Var);
        boolean z = false;
        while (it.hasNext()) {
            if (he8Var.apply(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static boolean w(Iterator it, Collection collection) {
        xd8.o(collection);
        boolean z = false;
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static dgb x(Object obj) {
        return new h(obj);
    }

    public static int y(Iterator it) {
        long j = 0;
        while (it.hasNext()) {
            it.next();
            j++;
        }
        return Ints.n(j);
    }

    public static String z(Iterator it) {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        boolean z = true;
        while (it.hasNext()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(it.next());
            z = false;
        }
        sb.append(']');
        return sb.toString();
    }
}
