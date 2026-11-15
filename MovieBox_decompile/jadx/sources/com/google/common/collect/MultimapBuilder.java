package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public abstract class MultimapBuilder {

    private static final class ArrayListSupplier<V> implements com.google.common.base.q, Serializable {
        private final int expectedValuesPerKey;

        ArrayListSupplier(int i10) {
            this.expectedValuesPerKey = e2.b(i10, "expectedValuesPerKey");
        }

        @Override
        public List<V> get() {
            return new ArrayList(this.expectedValuesPerKey);
        }
    }

    private static final class LinkedHashSetSupplier<V> implements com.google.common.base.q, Serializable {
        private final int expectedValuesPerKey;

        LinkedHashSetSupplier(int i10) {
            this.expectedValuesPerKey = e2.b(i10, "expectedValuesPerKey");
        }

        @Override
        public Set<V> get() {
            return r3.g(this.expectedValuesPerKey);
        }
    }

    class a extends e {

        final int f29776a;

        a(int i10) {
            this.f29776a = i10;
        }

        @Override
        Map c() {
            return r3.d(this.f29776a);
        }
    }

    class b extends e {

        final int f29777a;

        b(int i10) {
            this.f29777a = i10;
        }

        @Override
        Map c() {
            return r3.f(this.f29777a);
        }
    }

    class c extends e {

        final Comparator f29778a;

        c(Comparator comparator) {
            this.f29778a = comparator;
        }

        @Override
        Map c() {
            return new TreeMap(this.f29778a);
        }
    }

    public static abstract class d extends MultimapBuilder {
        d() {
            super(null);
        }

        public abstract i3 g();
    }

    public static abstract class e {

        class a extends d {

            final int f29779a;

            final e f29780b;

            a(e eVar, int i10) {
                this.f29779a = i10;
                this.f29780b = eVar;
            }

            @Override
            public i3 g() {
                return Multimaps.b(this.f29780b.c(), new ArrayListSupplier(this.f29779a));
            }
        }

        class b extends f {

            final int f29781a;

            final e f29782b;

            b(e eVar, int i10) {
                this.f29781a = i10;
                this.f29782b = eVar;
            }

            @Override
            public x3 g() {
                return Multimaps.c(this.f29782b.c(), new LinkedHashSetSupplier(this.f29781a));
            }
        }

        e() {
        }

        public d a() {
            return b(2);
        }

        public d b(int i10) {
            e2.b(i10, "expectedValuesPerKey");
            return new a(this, i10);
        }

        abstract Map c();

        public f d() {
            return e(2);
        }

        public f e(int i10) {
            e2.b(i10, "expectedValuesPerKey");
            return new b(this, i10);
        }
    }

    public static abstract class f extends MultimapBuilder {
        f() {
            super(null);
        }

        public abstract x3 g();
    }

    MultimapBuilder(a aVar) {
        this();
    }

    public static e a() {
        return b(8);
    }

    public static e b(int i10) {
        e2.b(i10, "expectedKeys");
        return new a(i10);
    }

    public static e c() {
        return d(8);
    }

    public static e d(int i10) {
        e2.b(i10, "expectedKeys");
        return new b(i10);
    }

    public static e e() {
        return f(Ordering.natural());
    }

    public static e f(Comparator comparator) {
        com.google.common.base.m.o(comparator);
        return new c(comparator);
    }

    private MultimapBuilder() {
    }
}
