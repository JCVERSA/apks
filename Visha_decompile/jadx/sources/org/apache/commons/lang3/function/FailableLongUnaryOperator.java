package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableLongUnaryOperator;

public interface FailableLongUnaryOperator<E extends Throwable> {
    public static final FailableLongUnaryOperator NOP = new FailableLongUnaryOperator() {
        @Override
        public final long applyAsLong(long j) {
            return FailableLongUnaryOperator.lambda$static$0(j);
        }
    };

    static <E extends Throwable> FailableLongUnaryOperator<E> identity() {
        return new FailableLongUnaryOperator() {
            @Override
            public final long applyAsLong(long j) {
                return FailableLongUnaryOperator.lambda$identity$1(j);
            }
        };
    }

    default long lambda$andThen$2(FailableLongUnaryOperator failableLongUnaryOperator, long j) throws Throwable {
        return failableLongUnaryOperator.applyAsLong(applyAsLong(j));
    }

    default long lambda$compose$3(FailableLongUnaryOperator failableLongUnaryOperator, long j) throws Throwable {
        return applyAsLong(failableLongUnaryOperator.applyAsLong(j));
    }

    static long lambda$identity$1(long j) throws Throwable {
        return j;
    }

    static long lambda$static$0(long j) throws Throwable {
        return 0L;
    }

    static <E extends Throwable> FailableLongUnaryOperator<E> nop() {
        return NOP;
    }

    default FailableLongUnaryOperator<E> andThen(final FailableLongUnaryOperator<E> failableLongUnaryOperator) {
        Objects.requireNonNull(failableLongUnaryOperator);
        return new FailableLongUnaryOperator() {
            @Override
            public final long applyAsLong(long j) {
                return this.a.lambda$andThen$2(failableLongUnaryOperator, j);
            }
        };
    }

    long applyAsLong(long j) throws Throwable;

    default FailableLongUnaryOperator<E> compose(final FailableLongUnaryOperator<E> failableLongUnaryOperator) {
        Objects.requireNonNull(failableLongUnaryOperator);
        return new FailableLongUnaryOperator() {
            @Override
            public final long applyAsLong(long j) {
                return this.a.lambda$compose$3(failableLongUnaryOperator, j);
            }
        };
    }
}
