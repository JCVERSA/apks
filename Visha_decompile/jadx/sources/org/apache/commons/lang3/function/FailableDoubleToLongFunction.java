package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableDoubleToLongFunction;

@FunctionalInterface
public interface FailableDoubleToLongFunction<E extends Throwable> {
    public static final FailableDoubleToLongFunction NOP = new FailableDoubleToLongFunction() {
        @Override
        public final int applyAsLong(double d) {
            return FailableDoubleToLongFunction.lambda$static$0(d);
        }
    };

    static int lambda$static$0(double d) throws Throwable {
        return 0;
    }

    static <E extends Throwable> FailableDoubleToLongFunction<E> nop() {
        return NOP;
    }

    int applyAsLong(double d) throws Throwable;
}
