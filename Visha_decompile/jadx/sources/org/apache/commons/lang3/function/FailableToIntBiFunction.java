package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableToIntBiFunction;

@FunctionalInterface
public interface FailableToIntBiFunction<T, U, E extends Throwable> {
    public static final FailableToIntBiFunction NOP = new FailableToIntBiFunction() {
        @Override
        public final int applyAsInt(Object obj, Object obj2) {
            return FailableToIntBiFunction.lambda$static$0(obj, obj2);
        }
    };

    static int lambda$static$0(Object obj, Object obj2) throws Throwable {
        return 0;
    }

    static <T, U, E extends Throwable> FailableToIntBiFunction<T, U, E> nop() {
        return NOP;
    }

    int applyAsInt(T t, U u) throws Throwable;
}
