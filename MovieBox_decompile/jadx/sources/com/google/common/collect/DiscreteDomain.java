package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.NoSuchElementException;

public abstract class DiscreteDomain {
    final boolean supportsFastOffset;

    private static final class BigIntegerDomain extends DiscreteDomain implements Serializable {

        private static final BigIntegerDomain f29553a = new BigIntegerDomain();

        private static final BigInteger f29554b = BigInteger.valueOf(Long.MIN_VALUE);

        private static final BigInteger f29555c = BigInteger.valueOf(Long.MAX_VALUE);
        private static final long serialVersionUID = 0;

        BigIntegerDomain() {
            super(true);
        }

        private Object readResolve() {
            return f29553a;
        }

        public String toString() {
            return "DiscreteDomain.bigIntegers()";
        }

        @Override
        public long distance(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger2.subtract(bigInteger).max(f29554b).min(f29555c).longValue();
        }

        @Override
        public BigInteger next(BigInteger bigInteger) {
            return bigInteger.add(BigInteger.ONE);
        }

        @Override
        public BigInteger offset(BigInteger bigInteger, long j10) {
            e2.c(j10, "distance");
            return bigInteger.add(BigInteger.valueOf(j10));
        }

        @Override
        public BigInteger previous(BigInteger bigInteger) {
            return bigInteger.subtract(BigInteger.ONE);
        }
    }

    private static final class IntegerDomain extends DiscreteDomain implements Serializable {

        private static final IntegerDomain f29556a = new IntegerDomain();
        private static final long serialVersionUID = 0;

        IntegerDomain() {
            super(true);
        }

        private Object readResolve() {
            return f29556a;
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
        public Integer offset(Integer num, long j10) {
            e2.c(j10, "distance");
            return Integer.valueOf(Ints.d(num.longValue() + j10));
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

    private static final class LongDomain extends DiscreteDomain implements Serializable {

        private static final LongDomain f29557a = new LongDomain();
        private static final long serialVersionUID = 0;

        LongDomain() {
            super(true);
        }

        private Object readResolve() {
            return f29557a;
        }

        public String toString() {
            return "DiscreteDomain.longs()";
        }

        @Override
        public long distance(Long l10, Long l11) {
            long jLongValue = l11.longValue() - l10.longValue();
            if (l11.longValue() > l10.longValue() && jLongValue < 0) {
                return Long.MAX_VALUE;
            }
            if (l11.longValue() >= l10.longValue() || jLongValue <= 0) {
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
        public Long next(Long l10) {
            long jLongValue = l10.longValue();
            if (jLongValue == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue + 1);
        }

        @Override
        public Long offset(Long l10, long j10) {
            e2.c(j10, "distance");
            long jLongValue = l10.longValue() + j10;
            if (jLongValue < 0) {
                com.google.common.base.m.e(l10.longValue() < 0, "overflow");
            }
            return Long.valueOf(jLongValue);
        }

        @Override
        public Long previous(Long l10) {
            long jLongValue = l10.longValue();
            if (jLongValue == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue - 1);
        }
    }

    public static DiscreteDomain bigIntegers() {
        return BigIntegerDomain.f29553a;
    }

    public static DiscreteDomain integers() {
        return IntegerDomain.f29556a;
    }

    public static DiscreteDomain longs() {
        return LongDomain.f29557a;
    }

    public abstract long distance(Comparable comparable, Comparable comparable2);

    public Comparable maxValue() {
        throw new NoSuchElementException();
    }

    public Comparable minValue() {
        throw new NoSuchElementException();
    }

    public abstract Comparable next(Comparable comparable);

    abstract Comparable offset(Comparable comparable, long j10);

    public abstract Comparable previous(Comparable comparable);

    protected DiscreteDomain() {
        this(false);
    }

    private DiscreteDomain(boolean z10) {
        this.supportsFastOffset = z10;
    }
}
