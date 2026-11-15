package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableLongFunction;

@FunctionalInterface
public interface FailableLongFunction<R, E extends Throwable> {
    public static final FailableLongFunction NOP = new FailableLongFunction() {
        @Override
        public final Object apply(long j) {
            return FailableLongFunction.lambda$static$0(j);
        }
    };

    static Object lambda$static$0(long j) throws Throwable {
        return null;
    }

    static <R, E extends Throwable> FailableLongFunction<R, E> nop() {
        return NOP;
    }

    R apply(long j) throws Throwable;
}
