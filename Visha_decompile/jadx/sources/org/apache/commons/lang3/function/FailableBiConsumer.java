package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableBiConsumer;

@FunctionalInterface
public interface FailableBiConsumer<T, U, E extends Throwable> {
    public static final FailableBiConsumer NOP = new FailableBiConsumer() {
        @Override
        public final void accept(Object obj, Object obj2) throws Throwable {
            FailableBiConsumer.lambda$static$0(obj, obj2);
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    default void lambda$andThen$1(FailableBiConsumer failableBiConsumer, Object obj, Object obj2) throws Throwable {
        accept(obj, obj2);
        failableBiConsumer.accept(obj, obj2);
    }

    static void lambda$static$0(Object obj, Object obj2) throws Throwable {
    }

    static <T, U, E extends Throwable> FailableBiConsumer<T, U, E> nop() {
        return NOP;
    }

    void accept(T t, U u) throws Throwable;

    default FailableBiConsumer<T, U, E> andThen(final FailableBiConsumer<? super T, ? super U, E> failableBiConsumer) {
        Objects.requireNonNull(failableBiConsumer);
        return new FailableBiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) throws Throwable {
                this.a.lambda$andThen$1(failableBiConsumer, obj, obj2);
            }
        };
    }
}
