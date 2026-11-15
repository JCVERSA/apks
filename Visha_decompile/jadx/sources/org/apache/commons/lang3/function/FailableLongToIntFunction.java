package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableLongToIntFunction;

@FunctionalInterface
public interface FailableLongToIntFunction<E extends Throwable> {
    public static final FailableLongToIntFunction NOP = new FailableLongToIntFunction() {
        @Override
        public final int applyAsInt(long j) {
            return FailableLongToIntFunction.lambda$static$0(j);
        }
    };

    static int lambda$static$0(long j) throws Throwable {
        return 0;
    }

    static <E extends Throwable> FailableLongToIntFunction<E> nop() {
        return NOP;
    }

    int applyAsInt(long j) throws Throwable;
}
