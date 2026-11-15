package com.google.common.collect;

import com.google.common.base.Optional;
import java.util.Iterator;

public abstract class j2 implements Iterable {

    private final Optional f29991a;

    class a extends j2 {

        final Iterable f29992b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Iterable iterable, Iterable iterable2) {
            super(iterable);
            this.f29992b = iterable2;
        }

        @Override
        public Iterator iterator() {
            return this.f29992b.iterator();
        }
    }

    class b extends j2 {

        final Iterable[] f29993b;

        class a extends com.google.common.collect.a {
            a(int i10) {
                super(i10);
            }

            @Override
            public Iterator a(int i10) {
                return b.this.f29993b[i10].iterator();
            }
        }

        b(Iterable[] iterableArr) {
            this.f29993b = iterableArr;
        }

        @Override
        public Iterator iterator() {
            return Iterators.e(new a(this.f29993b.length));
        }
    }

    protected j2() {
        this.f29991a = Optional.absent();
    }

    public static j2 a(Iterable iterable, Iterable iterable2) {
        return b(iterable, iterable2);
    }

    private static j2 b(Iterable... iterableArr) {
        for (Iterable iterable : iterableArr) {
            com.google.common.base.m.o(iterable);
        }
        return new b(iterableArr);
    }

    public static j2 e(Iterable iterable) {
        return iterable instanceof j2 ? (j2) iterable : new a(iterable, iterable);
    }

    private Iterable f() {
        return (Iterable) this.f29991a.or(this);
    }

    public final j2 c(com.google.common.base.n nVar) {
        return e(g3.e(f(), nVar));
    }

    public final ImmutableSet g() {
        return ImmutableSet.copyOf(f());
    }

    public String toString() {
        return g3.r(f());
    }

    j2(Iterable iterable) {
        this.f29991a = Optional.of(iterable);
    }
}
