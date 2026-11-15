package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableIntConsumer;

@FunctionalInterface
public interface FailableIntConsumer<E extends Throwable> {
    public static final FailableIntConsumer NOP = new FailableIntConsumer() {
        @Override
        public final void accept(int i) throws Throwable {
            FailableIntConsumer.lambda$static$0(i);
        }
    };

    default void lambda$andThen$1(FailableIntConsumer failableIntConsumer, int i) throws Throwable {
        accept(i);
        failableIntConsumer.accept(i);
    }

    static void lambda$static$0(int i) throws Throwable {
    }

    static <E extends Throwable> FailableIntConsumer<E> nop() {
        return NOP;
    }

    void accept(int i) throws Throwable;

    default FailableIntConsumer<E> andThen(final FailableIntConsumer<E> failableIntConsumer) {
        Objects.requireNonNull(failableIntConsumer);
        return new FailableIntConsumer() {
            @Override
            public final void accept(int i) throws Throwable {
                this.a.lambda$andThen$1(failableIntConsumer, i);
            }
        };
    }
}
