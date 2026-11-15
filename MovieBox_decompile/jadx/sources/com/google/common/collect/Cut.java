package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;

abstract class Cut<C extends Comparable> implements Comparable<Cut<C>>, Serializable {
    private static final long serialVersionUID = 0;
    final C endpoint;

    private static final class AboveAll extends Cut<Comparable<?>> {

        private static final AboveAll f29546a = new AboveAll();
        private static final long serialVersionUID = 0;

        private AboveAll() {
            super("");
        }

        private Object readResolve() {
            return f29546a;
        }

        @Override
        public int compareTo(Cut<Comparable<?>> cut) {
            return cut == this ? 0 : 1;
        }

        @Override
        void describeAsLowerBound(StringBuilder sb2) {
            throw new AssertionError();
        }

        @Override
        void describeAsUpperBound(StringBuilder sb2) {
            sb2.append("+∞)");
        }

        @Override
        Comparable<?> endpoint() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override
        Comparable<?> greatestValueBelow(DiscreteDomain discreteDomain) {
            return discreteDomain.maxValue();
        }

        @Override
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override
        boolean isLessThan(Comparable<?> comparable) {
            return false;
        }

        @Override
        Comparable<?> leastValueAbove(DiscreteDomain discreteDomain) {
            throw new AssertionError();
        }

        public String toString() {
            return "+∞";
        }

        @Override
        BoundType typeAsLowerBound() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override
        BoundType typeAsUpperBound() {
            throw new IllegalStateException();
        }

        @Override
        Cut<Comparable<?>> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override
        Cut<Comparable<?>> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new IllegalStateException();
        }
    }

    private static final class AboveValue<C extends Comparable> extends Cut<C> {
        private static final long serialVersionUID = 0;

        AboveValue(C c10) {
            super((Comparable) com.google.common.base.m.o(c10));
        }

        @Override
        Cut<C> canonical(DiscreteDomain discreteDomain) {
            Comparable comparableLeastValueAbove = leastValueAbove(discreteDomain);
            return comparableLeastValueAbove != null ? Cut.belowValue(comparableLeastValueAbove) : Cut.aboveAll();
        }

        @Override
        public int compareTo(Object obj) {
            return super.compareTo((Cut) obj);
        }

        @Override
        void describeAsLowerBound(StringBuilder sb2) {
            sb2.append('(');
            sb2.append(this.endpoint);
        }

        @Override
        void describeAsUpperBound(StringBuilder sb2) {
            sb2.append(this.endpoint);
            sb2.append(']');
        }

        @Override
        C greatestValueBelow(DiscreteDomain discreteDomain) {
            return this.endpoint;
        }

        @Override
        public int hashCode() {
            return ~this.endpoint.hashCode();
        }

        @Override
        boolean isLessThan(C c10) {
            return Range.compareOrThrow(this.endpoint, c10) < 0;
        }

        @Override
        C leastValueAbove(DiscreteDomain discreteDomain) {
            return (C) discreteDomain.next(this.endpoint);
        }

        public String toString() {
            return "/" + this.endpoint + "\\";
        }

        @Override
        BoundType typeAsLowerBound() {
            return BoundType.OPEN;
        }

        @Override
        BoundType typeAsUpperBound() {
            return BoundType.CLOSED;
        }

        @Override
        Cut<C> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            int i10 = a.f29548a[boundType.ordinal()];
            if (i10 == 1) {
                Comparable next = discreteDomain.next(this.endpoint);
                return next == null ? Cut.belowAll() : Cut.belowValue(next);
            }
            if (i10 == 2) {
                return this;
            }
            throw new AssertionError();
        }

        @Override
        Cut<C> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            int i10 = a.f29548a[boundType.ordinal()];
            if (i10 == 1) {
                return this;
            }
            if (i10 != 2) {
                throw new AssertionError();
            }
            Comparable next = discreteDomain.next(this.endpoint);
            return next == null ? Cut.aboveAll() : Cut.belowValue(next);
        }
    }

    private static final class BelowAll extends Cut<Comparable<?>> {

        private static final BelowAll f29547a = new BelowAll();
        private static final long serialVersionUID = 0;

        private BelowAll() {
            super("");
        }

        private Object readResolve() {
            return f29547a;
        }

        @Override
        Cut<Comparable<?>> canonical(DiscreteDomain discreteDomain) {
            try {
                return Cut.belowValue(discreteDomain.minValue());
            } catch (NoSuchElementException unused) {
                return this;
            }
        }

        @Override
        public int compareTo(Cut<Comparable<?>> cut) {
            return cut == this ? 0 : -1;
        }

        @Override
        void describeAsLowerBound(StringBuilder sb2) {
            sb2.append("(-∞");
        }

        @Override
        void describeAsUpperBound(StringBuilder sb2) {
            throw new AssertionError();
        }

        @Override
        Comparable<?> endpoint() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override
        Comparable<?> greatestValueBelow(DiscreteDomain discreteDomain) {
            throw new AssertionError();
        }

        @Override
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override
        boolean isLessThan(Comparable<?> comparable) {
            return true;
        }

        @Override
        Comparable<?> leastValueAbove(DiscreteDomain discreteDomain) {
            return discreteDomain.minValue();
        }

        public String toString() {
            return "-∞";
        }

        @Override
        BoundType typeAsLowerBound() {
            throw new IllegalStateException();
        }

        @Override
        BoundType typeAsUpperBound() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override
        Cut<Comparable<?>> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new IllegalStateException();
        }

        @Override
        Cut<Comparable<?>> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new AssertionError("this statement should be unreachable");
        }
    }

    private static final class BelowValue<C extends Comparable> extends Cut<C> {
        private static final long serialVersionUID = 0;

        BelowValue(C c10) {
            super((Comparable) com.google.common.base.m.o(c10));
        }

        @Override
        public int compareTo(Object obj) {
            return super.compareTo((Cut) obj);
        }

        @Override
        void describeAsLowerBound(StringBuilder sb2) {
            sb2.append('[');
            sb2.append(this.endpoint);
        }

        @Override
        void describeAsUpperBound(StringBuilder sb2) {
            sb2.append(this.endpoint);
            sb2.append(')');
        }

        @Override
        C greatestValueBelow(DiscreteDomain discreteDomain) {
            return (C) discreteDomain.previous(this.endpoint);
        }

        @Override
        public int hashCode() {
            return this.endpoint.hashCode();
        }

        @Override
        boolean isLessThan(C c10) {
            return Range.compareOrThrow(this.endpoint, c10) <= 0;
        }

        @Override
        C leastValueAbove(DiscreteDomain discreteDomain) {
            return this.endpoint;
        }

        public String toString() {
            return "\\" + this.endpoint + "/";
        }

        @Override
        BoundType typeAsLowerBound() {
            return BoundType.CLOSED;
        }

        @Override
        BoundType typeAsUpperBound() {
            return BoundType.OPEN;
        }

        @Override
        Cut<C> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            int i10 = a.f29548a[boundType.ordinal()];
            if (i10 == 1) {
                return this;
            }
            if (i10 != 2) {
                throw new AssertionError();
            }
            Comparable comparablePrevious = discreteDomain.previous(this.endpoint);
            return comparablePrevious == null ? Cut.belowAll() : new AboveValue(comparablePrevious);
        }

        @Override
        Cut<C> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            int i10 = a.f29548a[boundType.ordinal()];
            if (i10 == 1) {
                Comparable comparablePrevious = discreteDomain.previous(this.endpoint);
                return comparablePrevious == null ? Cut.aboveAll() : new AboveValue(comparablePrevious);
            }
            if (i10 == 2) {
                return this;
            }
            throw new AssertionError();
        }
    }

    static class a {

        static final int[] f29548a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f29548a = iArr;
            try {
                iArr[BoundType.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29548a[BoundType.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    Cut(C c10) {
        this.endpoint = c10;
    }

    static <C extends Comparable> Cut<C> aboveAll() {
        return AboveAll.f29546a;
    }

    static <C extends Comparable> Cut<C> aboveValue(C c10) {
        return new AboveValue(c10);
    }

    static <C extends Comparable> Cut<C> belowAll() {
        return BelowAll.f29547a;
    }

    static <C extends Comparable> Cut<C> belowValue(C c10) {
        return new BelowValue(c10);
    }

    Cut<C> canonical(DiscreteDomain discreteDomain) {
        return this;
    }

    abstract void describeAsLowerBound(StringBuilder sb2);

    abstract void describeAsUpperBound(StringBuilder sb2);

    C endpoint() {
        return this.endpoint;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Cut)) {
            return false;
        }
        try {
            return compareTo((Cut) obj) == 0;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    abstract C greatestValueBelow(DiscreteDomain discreteDomain);

    public abstract int hashCode();

    abstract boolean isLessThan(C c10);

    abstract C leastValueAbove(DiscreteDomain discreteDomain);

    abstract BoundType typeAsLowerBound();

    abstract BoundType typeAsUpperBound();

    abstract Cut<C> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain);

    abstract Cut<C> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain);

    @Override
    public int compareTo(Cut<C> cut) {
        if (cut == belowAll()) {
            return 1;
        }
        if (cut == aboveAll()) {
            return -1;
        }
        int iCompareOrThrow = Range.compareOrThrow(this.endpoint, cut.endpoint);
        return iCompareOrThrow != 0 ? iCompareOrThrow : Boolean.compare(this instanceof AboveValue, cut instanceof AboveValue);
    }
}
