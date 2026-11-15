package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableToDoubleFunction;

@FunctionalInterface
public interface FailableToDoubleFunction<T, E extends Throwable> {
    public static final FailableToDoubleFunction NOP = new FailableToDoubleFunction() {
        @Override
        public final double applyAsDouble(Object obj) {
            return FailableToDoubleFunction.lambda$static$0(obj);
        }
    };

    static double lambda$static$0(Object obj) throws Throwable {
        return 0.0d;
    }

    static <T, E extends Throwable> FailableToDoubleFunction<T, E> nop() {
        return NOP;
    }

    double applyAsDouble(T t) throws Throwable;
}
