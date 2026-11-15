package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableIntFunction;

@FunctionalInterface
public interface FailableIntFunction<R, E extends Throwable> {
    public static final FailableIntFunction NOP = new FailableIntFunction() {
        @Override
        public final Object apply(int i) {
            return FailableIntFunction.lambda$static$0(i);
        }
    };

    static Object lambda$static$0(int i) throws Throwable {
        return null;
    }

    static <R, E extends Throwable> FailableIntFunction<R, E> nop() {
        return NOP;
    }

    R apply(int i) throws Throwable;
}
