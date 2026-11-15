package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableToLongFunction;

@FunctionalInterface
public interface FailableToLongFunction<T, E extends Throwable> {
    public static final FailableToLongFunction NOP = new FailableToLongFunction() {
        @Override
        public final long applyAsLong(Object obj) {
            return FailableToLongFunction.lambda$static$0(obj);
        }
    };

    static long lambda$static$0(Object obj) throws Throwable {
        return 0L;
    }

    static <T, E extends Throwable> FailableToLongFunction<T, E> nop() {
        return NOP;
    }

    long applyAsLong(T t) throws Throwable;
}
