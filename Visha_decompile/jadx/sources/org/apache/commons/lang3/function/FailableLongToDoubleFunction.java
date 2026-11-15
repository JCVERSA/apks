package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableLongToDoubleFunction;

@FunctionalInterface
public interface FailableLongToDoubleFunction<E extends Throwable> {
    public static final FailableLongToDoubleFunction NOP = new FailableLongToDoubleFunction() {
        @Override
        public final double applyAsDouble(long j) {
            return FailableLongToDoubleFunction.lambda$static$0(j);
        }
    };

    static double lambda$static$0(long j) throws Throwable {
        return 0.0d;
    }

    static <E extends Throwable> FailableLongToDoubleFunction<E> nop() {
        return NOP;
    }

    double applyAsDouble(long j) throws Throwable;
}
