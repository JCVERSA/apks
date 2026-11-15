package com.google.common.collect;

import com.google.common.primitives.Ints;
import defpackage.k71;
import defpackage.xd8;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.NoSuchElementException;

public abstract class DiscreteDomain {
    final boolean supportsFastOffset;

    public static final class BigIntegerDomain extends DiscreteDomain implements Serializable {
        public static final BigIntegerDomain b = new BigIntegerDomain();
        public static final BigInteger c = BigInteger.valueOf(Long.MIN_VALUE);
        public static final BigInteger d = BigInteger.valueOf(Long.MAX_VALUE);
        private static final long serialVersionUID = 0;

        public BigIntegerDomain() {
            super(true);
        }

        private Object readResolve() {
            return b;
        }

        public String toString() {
            return "DiscreteDomain.bigIntegers()";
        }

        @Override
        public long distance(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger2.subtract(bigInteger).max(c).min(d).longValue();
        }

        @Override
        public BigInteger next(BigInteger bigInteger) {
            return bigInteger.add(BigInteger.ONE);
        }

        @Override
        public BigInteger offset(BigInteger bigInteger, long j) {
            k71.c(j, "distance");
            return bigInteger.add(BigInteger.valueOf(j));
        }

        @Override
        public BigInteger previous(BigInteger bigInteger) {
            return bigInteger.subtract(BigInteger.ONE);
        }
    }

    public static final class IntegerDomain extends DiscreteDomain implements Serializable {
        public static final IntegerDomain b = new IntegerDomain();
        private static final long serialVersionUID = 0;

        public IntegerDomain() {
            super(true);
        }

        private Object readResolve() {
            return b;
        }

        public String toString() {
            return "DiscreteDomain.integers()";
        }

        @Override
        public long distance(Integer num, Integer num2) {
            return ((long) num2.intValue()) - ((long) num.intValue());
        }

        @Override
        public Integer maxValue() {
            return Integer.MAX_VALUE;
        }

        @Override
        public Integer minValue() {
            return Integer.MIN_VALUE;
        }

        @Override
        public Integer next(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue == Integer.MAX_VALUE) {
                return null;
            }
            return Integer.valueOf(iIntValue + 1);
        }

        @Override
        public Integer offset(Integer num, long j) {
            k71.c(j, "distance");
            return Integer.valueOf(Ints.d(num.longValue() + j));
        }

        @Override
        public Integer previous(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue == Integer.MIN_VALUE) {
                return null;
            }
            return Integer.valueOf(iIntValue - 1);
        }
    }

    public static final class LongDomain extends DiscreteDomain implements Serializable {
        public static final LongDomain b = new LongDomain();
        private static final long serialVersionUID = 0;

        public LongDomain() {
            super(true);
        }

        private Object readResolve() {
            return b;
        }

        public String toString() {
            return "DiscreteDomain.longs()";
        }

        @Override
        public long distance(Long l, Long l2) {
            long jLongValue = l2.longValue() - l.longValue();
            if (l2.longValue() > l.longValue() && jLongValue < 0) {
                return Long.MAX_VALUE;
            }
            if (l2.longValue() >= l.longValue() || jLongValue <= 0) {
                return jLongValue;
            }
            return Long.MIN_VALUE;
        }

        @Override
        public Long maxValue() {
            return Long.MAX_VALUE;
        }

        @Override
        public Long minValue() {
            return Long.MIN_VALUE;
        }

        @Override
        public Long next(Long l) {
            long jLongValue = l.longValue();
            if (jLongValue == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue + 1);
        }

        @Override
        public Long offset(Long l, long j) {
            k71.c(j, "distance");
            long jLongValue = l.longValue() + j;
            if (jLongValue < 0) {
                xd8.e(l.longValue() < 0, "overflow");
            }
            return Long.valueOf(jLongValue);
        }

        @Override
        public Long previous(Long l) {
            long jLongValue = l.longValue();
            if (jLongValue == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue - 1);
        }
    }

    public static DiscreteDomain bigIntegers() {
        return BigIntegerDomain.b;
    }

    public static DiscreteDomain integers() {
        return IntegerDomain.b;
    }

    public static DiscreteDomain longs() {
        return LongDomain.b;
    }

    public abstract long distance(Comparable comparable, Comparable comparable2);

    public Comparable maxValue() {
        throw new NoSuchElementException();
    }

    public Comparable minValue() {
        throw new NoSuchElementException();
    }

    public abstract Comparable next(Comparable comparable);

    public abstract Comparable offset(Comparable comparable, long j);

    public abstract Comparable previous(Comparable comparable);

    public DiscreteDomain() {
        this(false);
    }

    public DiscreteDomain(boolean z) {
        this.supportsFastOffset = z;
    }
}
