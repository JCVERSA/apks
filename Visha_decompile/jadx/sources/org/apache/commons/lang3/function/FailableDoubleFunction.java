package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableDoubleFunction;

@FunctionalInterface
public interface FailableDoubleFunction<R, E extends Throwable> {
    public static final FailableDoubleFunction NOP = new FailableDoubleFunction() {
        @Override
        public final Object apply(double d) {
            return FailableDoubleFunction.lambda$static$0(d);
        }
    };

    static Object lambda$static$0(double d) throws Throwable {
        return null;
    }

    static <R, E extends Throwable> FailableDoubleFunction<R, E> nop() {
        return NOP;
    }

    R apply(double d) throws Throwable;
}
