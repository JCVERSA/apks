package defpackage;

import java.util.Comparator;

public abstract class cb1 {
    public static final cb1 a = new a();
    public static final cb1 b = new b(-1);
    public static final cb1 c = new b(1);

    public class a extends cb1 {
        public a() {
            super(null);
        }

        @Override
        public cb1 d(int i, int i2) {
            return l(Integer.compare(i, i2));
        }

        @Override
        public cb1 e(long j, long j2) {
            return l(Long.compare(j, j2));
        }

        @Override
        public cb1 f(Comparable comparable, Comparable comparable2) {
            return l(comparable.compareTo(comparable2));
        }

        @Override
        public cb1 g(Object obj, Object obj2, Comparator comparator) {
            return l(comparator.compare(obj, obj2));
        }

        @Override
        public cb1 h(boolean z, boolean z2) {
            return l(Boolean.compare(z, z2));
        }

        @Override
        public cb1 i(boolean z, boolean z2) {
            return l(Boolean.compare(z2, z));
        }

        @Override
        public int j() {
            return 0;
        }

        public cb1 l(int i) {
            if (i < 0) {
                return cb1.b;
            }
            return i > 0 ? cb1.c : cb1.a;
        }
    }

    public static final class b extends cb1 {
        public final int d;

        public b(int i) {
            super(null);
            this.d = i;
        }

        @Override
        public cb1 d(int i, int i2) {
            return this;
        }

        @Override
        public cb1 e(long j, long j2) {
            return this;
        }

        @Override
        public cb1 f(Comparable comparable, Comparable comparable2) {
            return this;
        }

        @Override
        public cb1 g(Object obj, Object obj2, Comparator comparator) {
            return this;
        }

        @Override
        public cb1 h(boolean z, boolean z2) {
            return this;
        }

        @Override
        public cb1 i(boolean z, boolean z2) {
            return this;
        }

        @Override
        public int j() {
            return this.d;
        }
    }

    public cb1(a aVar) {
        this();
    }

    public static cb1 k() {
        return a;
    }

    public abstract cb1 d(int i, int i2);

    public abstract cb1 e(long j, long j2);

    public abstract cb1 f(Comparable comparable, Comparable comparable2);

    public abstract cb1 g(Object obj, Object obj2, Comparator comparator);

    public abstract cb1 h(boolean z, boolean z2);

    public abstract cb1 i(boolean z, boolean z2);

    public abstract int j();

    public cb1() {
    }
}
