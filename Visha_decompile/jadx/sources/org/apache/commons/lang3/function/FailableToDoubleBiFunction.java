package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableToDoubleBiFunction;

@FunctionalInterface
public interface FailableToDoubleBiFunction<T, U, E extends Throwable> {
    public static final FailableToDoubleBiFunction NOP = new FailableToDoubleBiFunction() {
        @Override
        public final double applyAsDouble(Object obj, Object obj2) {
            return FailableToDoubleBiFunction.lambda$static$0(obj, obj2);
        }
    };

    static double lambda$static$0(Object obj, Object obj2) throws Throwable {
        return 0.0d;
    }

    static <T, U, E extends Throwable> FailableToDoubleBiFunction<T, U, E> nop() {
        return NOP;
    }

    double applyAsDouble(T t, U u) throws Throwable;
}
