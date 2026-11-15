package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableDoubleConsumer;

@FunctionalInterface
public interface FailableDoubleConsumer<E extends Throwable> {
    public static final FailableDoubleConsumer NOP = new FailableDoubleConsumer() {
        @Override
        public final void accept(double d) throws Throwable {
            FailableDoubleConsumer.lambda$static$0(d);
        }
    };

    default void lambda$andThen$1(FailableDoubleConsumer failableDoubleConsumer, double d) throws Throwable {
        accept(d);
        failableDoubleConsumer.accept(d);
    }

    static void lambda$static$0(double d) throws Throwable {
    }

    static <E extends Throwable> FailableDoubleConsumer<E> nop() {
        return NOP;
    }

    void accept(double d) throws Throwable;

    default FailableDoubleConsumer<E> andThen(final FailableDoubleConsumer<E> failableDoubleConsumer) {
        Objects.requireNonNull(failableDoubleConsumer);
        return new FailableDoubleConsumer() {
            @Override
            public final void accept(double d) throws Throwable {
                this.a.lambda$andThen$1(failableDoubleConsumer, d);
            }
        };
    }
}
