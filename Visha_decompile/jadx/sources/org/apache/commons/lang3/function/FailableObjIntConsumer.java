package org.apache.commons.lang3.function;

import java.lang.Throwable;
import org.apache.commons.lang3.function.FailableObjIntConsumer;

@FunctionalInterface
public interface FailableObjIntConsumer<T, E extends Throwable> {
    public static final FailableObjIntConsumer NOP = new FailableObjIntConsumer() {
        @Override
        public final void accept(Object obj, int i) throws Throwable {
            FailableObjIntConsumer.lambda$static$0(obj, i);
        }
    };

    static void lambda$static$0(Object obj, int i) throws Throwable {
    }

    static <T, E extends Throwable> FailableObjIntConsumer<T, E> nop() {
        return NOP;
    }

    void accept(T t, int i) throws Throwable;
}
