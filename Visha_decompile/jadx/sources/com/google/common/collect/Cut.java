package com.google.common.collect;

import defpackage.xd8;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;

public abstract class Cut<C extends Comparable> implements Comparable<Cut<C>>, Serializable {
    private static final long serialVersionUID = 0;
    final C endpoint;

    public static final class AboveAll extends Cut<Comparable<?>> {
        public static final AboveAll b = new AboveAll();
        private static final long serialVersionUID = 0;

        private AboveAll() {
            super("");
        }

        private Object readResolve() {
            return b;
        }

        @Override
        public int compareTo(Cut<Comparable<?>> cut) {
            return cut == this ? 0 : 1;
        }

        @Override
        public void describeAsLowerBound(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override
        public void describeAsUpperBound(StringBuilder sb) {
            sb.append("+∞)");
        }

        @Override
        public Comparable<?> endpoint() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override
        public Comparable<?> greatestValueBelow(DiscreteDomain discreteDomain) {
            return discreteDomain.maxValue();
        }

        @Override
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override
        public boolean isLessThan(Comparable<?> comparable) {
            return false;
        }

        @Override
        public Comparable<?> leastValueAbove(DiscreteDomain discreteDomain) {
            throw new AssertionError();
        }

        public String toString() {
            return "+∞";
        }

        @Override
        public BoundType typeAsLowerBound() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override
        public BoundType typeAsUpperBound() {
            throw new IllegalStateException();
        }

        @Override
        public Cut<Comparable<?>> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override
        public Cut<Comparable<?>> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new IllegalStateException();
        }
    }

    public static final class AboveValue<C extends Comparable> extends Cut<C> {
        private static final long serialVersionUID = 0;

        public AboveValue(C c) {
            super((Comparable) xd8.o(c));
        }

        @Override
        public Cut<C> canonical(DiscreteDomain discreteDomain) {
            Comparable comparableLeastValueAbove = leastValueAbove(discreteDomain);
            return comparableLeastValueAbove != null ? Cut.belowValue(comparableLeastValueAbove) : Cut.aboveAll();
        }

        @Override
        public int compareTo(Object obj) {
            return super.compareTo((Cut) obj);
        }

        @Override
        public void describeAsLowerBound(StringBuilder sb) {
            sb.append('(');
            sb.append(this.endpoint);
        }

        @Override
        public void describeAsUpperBound(StringBuilder sb) {
            sb.append(this.endpoint);
            sb.append(']');
        }

        @Override
        public C greatestValueBelow(DiscreteDomain discreteDomain) {
            return this.endpoint;
        }

        @Override
        public int hashCode() {
            return ~this.endpoint.hashCode();
        }

        @Override
        public boolean isLessThan(C c) {
            return Range.compareOrThrow(this.endpoint, c) < 0;
        }

        @Override
        public C leastValueAbove(DiscreteDomain discreteDomain) {
            return (C) discreteDomain.next(this.endpoint);
        }

        public String toString() {
            return "/" + this.endpoint + "\\";
        }

        @Override
        public BoundType typeAsLowerBound() {
            return BoundType.OPEN;
        }

        @Override
        public BoundType typeAsUpperBound() {
            return BoundType.CLOSED;
        }

        @Override
        public Cut<C> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            int i = a.a[boundType.ordinal()];
            if (i == 1) {
                Comparable next = discreteDomain.next(this.endpoint);
                return next == null ? Cut.belowAll() : Cut.belowValue(next);
            }
            if (i == 2) {
                return this;
            }
            throw new AssertionError();
        }

        @Override
        public Cut<C> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            int i = a.a[boundType.ordinal()];
            if (i == 1) {
                return this;
            }
            if (i != 2) {
                throw new AssertionError();
            }
            Comparable next = discreteDomain.next(this.endpoint);
            return next == null ? Cut.aboveAll() : Cut.belowValue(next);
        }
    }

    public static final class BelowAll extends Cut<Comparable<?>> {
        public static final BelowAll b = new BelowAll();
        private static final long serialVersionUID = 0;

        private BelowAll() {
            super("");
        }

        private Object readResolve() {
            return b;
        }

        @Override
        public Cut<Comparable<?>> canonical(DiscreteDomain discreteDomain) {
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
        public void describeAsLowerBound(StringBuilder sb) {
            sb.append("(-∞");
        }

        @Override
        public void describeAsUpperBound(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override
        public Comparable<?> endpoint() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override
        public Comparable<?> greatestValueBelow(DiscreteDomain discreteDomain) {
            throw new AssertionError();
        }

        @Override
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override
        public boolean isLessThan(Comparable<?> comparable) {
            return true;
        }

        @Override
        public Comparable<?> leastValueAbove(DiscreteDomain discreteDomain) {
            return discreteDomain.minValue();
        }

        public String toString() {
            return "-∞";
        }

        @Override
        public BoundType typeAsLowerBound() {
            throw new IllegalStateException();
        }

        @Override
        public BoundType typeAsUpperBound() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override
        public Cut<Comparable<?>> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new IllegalStateException();
        }

        @Override
        public Cut<Comparable<?>> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            throw new AssertionError("this statement should be unreachable");
        }
    }

    public static final class BelowValue<C extends Comparable> extends Cut<C> {
        private static final long serialVersionUID = 0;

        public BelowValue(C c) {
            super((Comparable) xd8.o(c));
        }

        @Override
        public int compareTo(Object obj) {
            return super.compareTo((Cut) obj);
        }

        @Override
        public void describeAsLowerBound(StringBuilder sb) {
            sb.append('[');
            sb.append(this.endpoint);
        }

        @Override
        public void describeAsUpperBound(StringBuilder sb) {
            sb.append(this.endpoint);
            sb.append(')');
        }

        @Override
        public C greatestValueBelow(DiscreteDomain discreteDomain) {
            return (C) discreteDomain.previous(this.endpoint);
        }

        @Override
        public int hashCode() {
            return this.endpoint.hashCode();
        }

        @Override
        public boolean isLessThan(C c) {
            return Range.compareOrThrow(this.endpoint, c) <= 0;
        }

        @Override
        public C leastValueAbove(DiscreteDomain discreteDomain) {
            return this.endpoint;
        }

        public String toString() {
            return "\\" + this.endpoint + "/";
        }

        @Override
        public BoundType typeAsLowerBound() {
            return BoundType.CLOSED;
        }

        @Override
        public BoundType typeAsUpperBound() {
            return BoundType.OPEN;
        }

        @Override
        public Cut<C> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            int i = a.a[boundType.ordinal()];
            if (i == 1) {
                return this;
            }
            if (i != 2) {
                throw new AssertionError();
            }
            Comparable comparablePrevious = discreteDomain.previous(this.endpoint);
            return comparablePrevious == null ? Cut.belowAll() : new AboveValue(comparablePrevious);
        }

        @Override
        public Cut<C> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain) {
            int i = a.a[boundType.ordinal()];
            if (i == 1) {
                Comparable comparablePrevious = discreteDomain.previous(this.endpoint);
                return comparablePrevious == null ? Cut.aboveAll() : new AboveValue(comparablePrevious);
            }
            if (i == 2) {
                return this;
            }
            throw new AssertionError();
        }
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[BoundType.values().length];
            a = iArr;
            try {
                iArr[BoundType.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[BoundType.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public Cut(C c) {
        this.endpoint = c;
    }

    public static <C extends Comparable> Cut<C> aboveAll() {
        return AboveAll.b;
    }

    public static <C extends Comparable> Cut<C> aboveValue(C c) {
        return new AboveValue(c);
    }

    public static <C extends Comparable> Cut<C> belowAll() {
        return BelowAll.b;
    }

    public static <C extends Comparable> Cut<C> belowValue(C c) {
        return new BelowValue(c);
    }

    public Cut<C> canonical(DiscreteDomain discreteDomain) {
        return this;
    }

    public abstract void describeAsLowerBound(StringBuilder sb);

    public abstract void describeAsUpperBound(StringBuilder sb);

    public C endpoint() {
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

    public abstract C greatestValueBelow(DiscreteDomain discreteDomain);

    public abstract int hashCode();

    public abstract boolean isLessThan(C c);

    public abstract C leastValueAbove(DiscreteDomain discreteDomain);

    public abstract BoundType typeAsLowerBound();

    public abstract BoundType typeAsUpperBound();

    public abstract Cut<C> withLowerBoundType(BoundType boundType, DiscreteDomain discreteDomain);

    public abstract Cut<C> withUpperBoundType(BoundType boundType, DiscreteDomain discreteDomain);

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
