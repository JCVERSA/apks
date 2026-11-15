package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableDoubleUnaryOperator;

public interface FailableDoubleUnaryOperator<E extends Throwable> {
    public static final FailableDoubleUnaryOperator NOP = new FailableDoubleUnaryOperator() {
        @Override
        public final double applyAsDouble(double d) {
            return FailableDoubleUnaryOperator.lambda$static$0(d);
        }
    };

    static <E extends Throwable> FailableDoubleUnaryOperator<E> identity() {
        return new FailableDoubleUnaryOperator() {
            @Override
            public final double applyAsDouble(double d) {
                return FailableDoubleUnaryOperator.lambda$identity$1(d);
            }
        };
    }

    default double lambda$andThen$2(FailableDoubleUnaryOperator failableDoubleUnaryOperator, double d) throws Throwable {
        return failableDoubleUnaryOperator.applyAsDouble(applyAsDouble(d));
    }

    default double lambda$compose$3(FailableDoubleUnaryOperator failableDoubleUnaryOperator, double d) throws Throwable {
        return applyAsDouble(failableDoubleUnaryOperator.applyAsDouble(d));
    }

    static double lambda$identity$1(double d) throws Throwable {
        return d;
    }

    static double lambda$static$0(double d) throws Throwable {
        return 0.0d;
    }

    static <E extends Throwable> FailableDoubleUnaryOperator<E> nop() {
        return NOP;
    }

    default FailableDoubleUnaryOperator<E> andThen(final FailableDoubleUnaryOperator<E> failableDoubleUnaryOperator) {
        Objects.requireNonNull(failableDoubleUnaryOperator);
        return new FailableDoubleUnaryOperator() {
            @Override
            public final double applyAsDouble(double d) {
                return this.a.lambda$andThen$2(failableDoubleUnaryOperator, d);
            }
        };
    }

    double applyAsDouble(double d) throws Throwable;

    default FailableDoubleUnaryOperator<E> compose(final FailableDoubleUnaryOperator<E> failableDoubleUnaryOperator) {
        Objects.requireNonNull(failableDoubleUnaryOperator);
        return new FailableDoubleUnaryOperator() {
            @Override
            public final double applyAsDouble(double d) {
                return this.a.lambda$compose$3(failableDoubleUnaryOperator, d);
            }
        };
    }
}
