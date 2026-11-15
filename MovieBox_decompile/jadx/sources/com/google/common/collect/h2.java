package com.google.common.collect;

import java.util.Comparator;

public abstract class h2 {

    private static final h2 f29974a = new a();

    private static final h2 f29975b = new b(-1);

    private static final h2 f29976c = new b(1);

    class a extends h2 {
        a() {
            super(null);
        }

        @Override
        public h2 d(int i10, int i11) {
            return l(Integer.compare(i10, i11));
        }

        @Override
        public h2 e(long j10, long j11) {
            return l(Long.compare(j10, j11));
        }

        @Override
        public h2 f(Comparable comparable, Comparable comparable2) {
            return l(comparable.compareTo(comparable2));
        }

        @Override
        public h2 g(Object obj, Object obj2, Comparator comparator) {
            return l(comparator.compare(obj, obj2));
        }

        @Override
        public h2 h(boolean z10, boolean z11) {
            return l(Boolean.compare(z10, z11));
        }

        @Override
        public h2 i(boolean z10, boolean z11) {
            return l(Boolean.compare(z11, z10));
        }

        @Override
        public int j() {
            return 0;
        }

        h2 l(int i10) {
            if (i10 < 0) {
                return h2.f29975b;
            }
            return i10 > 0 ? h2.f29976c : h2.f29974a;
        }
    }

    private static final class b extends h2 {

        final int f29977d;

        b(int i10) {
            super(null);
            this.f29977d = i10;
        }

        @Override
        public h2 d(int i10, int i11) {
            return this;
        }

        @Override
        public h2 e(long j10, long j11) {
            return this;
        }

        @Override
        public h2 f(Comparable comparable, Comparable comparable2) {
            return this;
        }

        @Override
        public h2 g(Object obj, Object obj2, Comparator comparator) {
            return this;
        }

        @Override
        public h2 h(boolean z10, boolean z11) {
            return this;
        }

        @Override
        public h2 i(boolean z10, boolean z11) {
            return this;
        }

        @Override
        public int j() {
            return this.f29977d;
        }
    }

    h2(a aVar) {
        this();
    }

    public static h2 k() {
        return f29974a;
    }

    public abstract h2 d(int i10, int i11);

    public abstract h2 e(long j10, long j11);

    public abstract h2 f(Comparable comparable, Comparable comparable2);

    public abstract h2 g(Object obj, Object obj2, Comparator comparator);

    public abstract h2 h(boolean z10, boolean z11);

    public abstract h2 i(boolean z10, boolean z11);

    public abstract int j();

    private h2() {
    }
}
