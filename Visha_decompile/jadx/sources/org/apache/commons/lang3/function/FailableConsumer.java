package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableConsumer;

@FunctionalInterface
public interface FailableConsumer<T, E extends Throwable> {
    public static final FailableConsumer NOP = new FailableConsumer() {
        @Override
        public final void accept(Object obj) throws Throwable {
            FailableConsumer.lambda$static$0(obj);
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    default void lambda$andThen$1(FailableConsumer failableConsumer, Object obj) throws Throwable {
        accept(obj);
        failableConsumer.accept(obj);
    }

    static void lambda$static$0(Object obj) throws Throwable {
    }

    static <T, E extends Throwable> FailableConsumer<T, E> nop() {
        return NOP;
    }

    void accept(T t) throws Throwable;

    default FailableConsumer<T, E> andThen(final FailableConsumer<? super T, E> failableConsumer) {
        Objects.requireNonNull(failableConsumer);
        return new FailableConsumer() {
            @Override
            public final void accept(Object obj) throws Throwable {
                this.a.lambda$andThen$1(failableConsumer, obj);
            }
        };
    }
}
