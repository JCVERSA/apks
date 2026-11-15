package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableToIntFunction;

@FunctionalInterface
public interface FailableToIntFunction<T, E extends Throwable> {
    public static final FailableToIntFunction NOP = new FailableToIntFunction() {
        @Override
        public final int applyAsInt(Object obj) {
            return FailableToIntFunction.lambda$static$0(obj);
        }
    };

    static int lambda$static$0(Object obj) throws Throwable {
        return 0;
    }

    static <T, E extends Throwable> FailableToIntFunction<T, E> nop() {
        return NOP;
    }

    int applyAsInt(T t) throws Throwable;
}
