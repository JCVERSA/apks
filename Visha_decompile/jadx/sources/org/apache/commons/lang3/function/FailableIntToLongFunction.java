package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableIntToLongFunction;

@FunctionalInterface
public interface FailableIntToLongFunction<E extends Throwable> {
    public static final FailableIntToLongFunction NOP = new FailableIntToLongFunction() {
        @Override
        public final long applyAsLong(int i) {
            return FailableIntToLongFunction.lambda$static$0(i);
        }
    };

    static long lambda$static$0(int i) throws Throwable {
        return 0L;
    }

    static <E extends Throwable> FailableIntToLongFunction<E> nop() {
        return NOP;
    }

    long applyAsLong(int i) throws Throwable;
}
