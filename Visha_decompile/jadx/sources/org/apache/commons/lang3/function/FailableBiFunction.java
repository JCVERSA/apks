package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableBiFunction;

@FunctionalInterface
public interface FailableBiFunction<T, U, R, E extends Throwable> {
    public static final FailableBiFunction NOP = new FailableBiFunction() {
        @Override
        public final Object apply(Object obj, Object obj2) {
            return FailableBiFunction.lambda$static$0(obj, obj2);
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    default Object lambda$andThen$1(FailableFunction failableFunction, Object obj, Object obj2) throws Throwable {
        return failableFunction.apply(apply(obj, obj2));
    }

    static Object lambda$static$0(Object obj, Object obj2) throws Throwable {
        return null;
    }

    static <T, U, R, E extends Throwable> FailableBiFunction<T, U, R, E> nop() {
        return NOP;
    }

    default <V> FailableBiFunction<T, U, V, E> andThen(final FailableFunction<? super R, ? extends V, E> failableFunction) {
        Objects.requireNonNull(failableFunction);
        return new FailableBiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return this.a.lambda$andThen$1(failableFunction, obj, obj2);
            }
        };
    }

    R apply(T t, U u) throws Throwable;
}
