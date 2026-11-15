package com.google.common.collect;

import defpackage.fm5;
import defpackage.k71;
import defpackage.ue9;
import defpackage.w6a;
import defpackage.xd8;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public abstract class MultimapBuilder {

    public static final class ArrayListSupplier<V> implements w6a, Serializable {
        private final int expectedValuesPerKey;

        public ArrayListSupplier(int i) {
            this.expectedValuesPerKey = k71.b(i, "expectedValuesPerKey");
        }

        @Override
        public List<V> get() {
            return new ArrayList(this.expectedValuesPerKey);
        }
    }

    public static final class LinkedHashSetSupplier<V> implements w6a, Serializable {
        private final int expectedValuesPerKey;

        public LinkedHashSetSupplier(int i) {
            this.expectedValuesPerKey = k71.b(i, "expectedValuesPerKey");
        }

        @Override
        public Set<V> get() {
            return l.g(this.expectedValuesPerKey);
        }
    }

    public class a extends e {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        @Override
        public Map c() {
            return l.d(this.a);
        }
    }

    public class b extends e {
        public final int a;

        public b(int i) {
            this.a = i;
        }

        @Override
        public Map c() {
            return l.f(this.a);
        }
    }

    public class c extends e {
        public final Comparator a;

        public c(Comparator comparator) {
            this.a = comparator;
        }

        @Override
        public Map c() {
            return new TreeMap(this.a);
        }
    }

    public static abstract class d extends MultimapBuilder {
        public d() {
            super(null);
        }

        public abstract fm5 g();
    }

    public static abstract class e {

        public class a extends d {
            public final int a;
            public final e b;

            public a(e eVar, int i) {
                this.a = i;
                this.b = eVar;
            }

            @Override
            public fm5 g() {
                return Multimaps.b(this.b.c(), new ArrayListSupplier(this.a));
            }
        }

        public class b extends f {
            public final int a;
            public final e b;

            public b(e eVar, int i) {
                this.a = i;
                this.b = eVar;
            }

            @Override
            public ue9 g() {
                return Multimaps.c(this.b.c(), new LinkedHashSetSupplier(this.a));
            }
        }

        public d a() {
            return b(2);
        }

        public d b(int i) {
            k71.b(i, "expectedValuesPerKey");
            return new a(this, i);
        }

        public abstract Map c();

        public f d() {
            return e(2);
        }

        public f e(int i) {
            k71.b(i, "expectedValuesPerKey");
            return new b(this, i);
        }
    }

    public static abstract class f extends MultimapBuilder {
        public f() {
            super(null);
        }

        public abstract ue9 g();
    }

    public MultimapBuilder(a aVar) {
        this();
    }

    public static e a() {
        return b(8);
    }

    public static e b(int i) {
        k71.b(i, "expectedKeys");
        return new a(i);
    }

    public static e c() {
        return d(8);
    }

    public static e d(int i) {
        k71.b(i, "expectedKeys");
        return new b(i);
    }

    public static e e() {
        return f(Ordering.natural());
    }

    public static e f(Comparator comparator) {
        xd8.o(comparator);
        return new c(comparator);
    }

    public MultimapBuilder() {
    }
}
