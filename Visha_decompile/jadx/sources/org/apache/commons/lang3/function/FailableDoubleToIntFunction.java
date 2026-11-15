package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableDoubleToIntFunction;

@FunctionalInterface
public interface FailableDoubleToIntFunction<E extends Throwable> {
    public static final FailableDoubleToIntFunction NOP = new FailableDoubleToIntFunction() {
        @Override
        public final int applyAsInt(double d) {
            return FailableDoubleToIntFunction.lambda$static$0(d);
        }
    };

    static int lambda$static$0(double d) throws Throwable {
        return 0;
    }

    static <E extends Throwable> FailableDoubleToIntFunction<E> nop() {
        return NOP;
    }

    int applyAsInt(double d) throws Throwable;
}
