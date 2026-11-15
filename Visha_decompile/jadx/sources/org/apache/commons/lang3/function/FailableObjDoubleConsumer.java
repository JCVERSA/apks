package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableObjDoubleConsumer;

@FunctionalInterface
public interface FailableObjDoubleConsumer<T, E extends Throwable> {
    public static final FailableObjDoubleConsumer NOP = new FailableObjDoubleConsumer() {
        @Override
        public final void accept(Object obj, double d) throws Throwable {
            FailableObjDoubleConsumer.lambda$static$0(obj, d);
        }
    };

    static void lambda$static$0(Object obj, double d) throws Throwable {
    }

    static <T, E extends Throwable> FailableObjDoubleConsumer<T, E> nop() {
        return NOP;
    }

    void accept(T t, double d) throws Throwable;
}
