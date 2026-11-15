package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableIntUnaryOperator;

public interface FailableIntUnaryOperator<E extends Throwable> {
    public static final FailableIntUnaryOperator NOP = new FailableIntUnaryOperator() {
        @Override
        public final int applyAsInt(int i) {
            return FailableIntUnaryOperator.lambda$static$0(i);
        }
    };

    static <E extends Throwable> FailableIntUnaryOperator<E> identity() {
        return new FailableIntUnaryOperator() {
            @Override
            public final int applyAsInt(int i) {
                return FailableIntUnaryOperator.lambda$identity$1(i);
            }
        };
    }

    default int lambda$andThen$2(FailableIntUnaryOperator failableIntUnaryOperator, int i) throws Throwable {
        return failableIntUnaryOperator.applyAsInt(applyAsInt(i));
    }

    default int lambda$compose$3(FailableIntUnaryOperator failableIntUnaryOperator, int i) throws Throwable {
        return applyAsInt(failableIntUnaryOperator.applyAsInt(i));
    }

    static int lambda$identity$1(int i) throws Throwable {
        return i;
    }

    static int lambda$static$0(int i) throws Throwable {
        return 0;
    }

    static <E extends Throwable> FailableIntUnaryOperator<E> nop() {
        return NOP;
    }

    default FailableIntUnaryOperator<E> andThen(final FailableIntUnaryOperator<E> failableIntUnaryOperator) {
        Objects.requireNonNull(failableIntUnaryOperator);
        return new FailableIntUnaryOperator() {
            @Override
            public final int applyAsInt(int i) {
                return this.a.lambda$andThen$2(failableIntUnaryOperator, i);
            }
        };
    }

    int applyAsInt(int i) throws Throwable;

    default FailableIntUnaryOperator<E> compose(final FailableIntUnaryOperator<E> failableIntUnaryOperator) {
        Objects.requireNonNull(failableIntUnaryOperator);
        return new FailableIntUnaryOperator() {
            @Override
            public final int applyAsInt(int i) {
                return this.a.lambda$compose$3(failableIntUnaryOperator, i);
            }
        };
    }
}
