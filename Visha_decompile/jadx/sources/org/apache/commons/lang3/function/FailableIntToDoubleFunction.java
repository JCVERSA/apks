package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableIntToDoubleFunction;

@FunctionalInterface
public interface FailableIntToDoubleFunction<E extends Throwable> {
    public static final FailableIntToDoubleFunction NOP = new FailableIntToDoubleFunction() {
        @Override
        public final double applyAsDouble(int i) {
            return FailableIntToDoubleFunction.lambda$static$0(i);
        }
    };

    static double lambda$static$0(int i) throws Throwable {
        return 0.0d;
    }

    static <E extends Throwable> FailableIntToDoubleFunction<E> nop() {
        return NOP;
    }

    double applyAsDouble(int i) throws Throwable;
}
