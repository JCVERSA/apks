package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableObjLongConsumer;

@FunctionalInterface
public interface FailableObjLongConsumer<T, E extends Throwable> {
    public static final FailableObjLongConsumer NOP = new FailableObjLongConsumer() {
        @Override
        public final void accept(Object obj, long j) throws Throwable {
            FailableObjLongConsumer.lambda$static$0(obj, j);
        }
    };

    static void lambda$static$0(Object obj, long j) throws Throwable {
    }

    static <T, E extends Throwable> FailableObjLongConsumer<T, E> nop() {
        return NOP;
    }

    void accept(T t, long j) throws Throwable;
}
