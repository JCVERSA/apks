package org.apache.commons.lang3.function;

import java.util.Objects;
import java.util.function.Function;

@FunctionalInterface
public interface TriFunction<T, U, V, R> {
    /* JADX WARN: Multi-variable type inference failed */
    default Object lambda$andThen$0(Function function, Object obj, Object obj2, Object obj3) {
        return function.apply(apply(obj, obj2, obj3));
    }

    default <W> TriFunction<T, U, V, W> andThen(final Function<? super R, ? extends W> function) {
        Objects.requireNonNull(function);
        return new TriFunction() {
            @Override
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return this.a.lambda$andThen$0(function, obj, obj2, obj3);
            }
        };
    }

    R apply(T t, U u, V v);
}
