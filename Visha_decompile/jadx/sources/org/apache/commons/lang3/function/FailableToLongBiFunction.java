package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableToLongBiFunction;

@FunctionalInterface
public interface FailableToLongBiFunction<T, U, E extends Throwable> {
    public static final FailableToLongBiFunction NOP = new FailableToLongBiFunction() {
        @Override
        public final long applyAsLong(Object obj, Object obj2) {
            return FailableToLongBiFunction.lambda$static$0(obj, obj2);
        }
    };

    static long lambda$static$0(Object obj, Object obj2) throws Throwable {
        return 0L;
    }

    static <T, U, E extends Throwable> FailableToLongBiFunction<T, U, E> nop() {
        return NOP;
    }

    long applyAsLong(T t, U u) throws Throwable;
}
