package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableLongConsumer;

@FunctionalInterface
public interface FailableLongConsumer<E extends Throwable> {
    public static final FailableLongConsumer NOP = new FailableLongConsumer() {
        @Override
        public final void accept(long j) throws Throwable {
            FailableLongConsumer.lambda$static$0(j);
        }
    };

    default void lambda$andThen$1(FailableLongConsumer failableLongConsumer, long j) throws Throwable {
        accept(j);
        failableLongConsumer.accept(j);
    }

    static void lambda$static$0(long j) throws Throwable {
    }

    static <E extends Throwable> FailableLongConsumer<E> nop() {
        return NOP;
    }

    void accept(long j) throws Throwable;

    default FailableLongConsumer<E> andThen(final FailableLongConsumer<E> failableLongConsumer) {
        Objects.requireNonNull(failableLongConsumer);
        return new FailableLongConsumer() {
            @Override
            public final void accept(long j) throws Throwable {
                this.a.lambda$andThen$1(failableLongConsumer, j);
            }
        };
    }
}
