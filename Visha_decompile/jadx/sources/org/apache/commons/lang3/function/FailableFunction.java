package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableFunction;

@FunctionalInterface
public interface FailableFunction<T, R, E extends Throwable> {
    public static final FailableFunction NOP = new FailableFunction() {
        @Override
        public final Object apply(Object obj) {
            return FailableFunction.lambda$static$0(obj);
        }
    };

    static <T, E extends Throwable> FailableFunction<T, T, E> identity() {
        return new FailableFunction() {
            @Override
            public final Object apply(Object obj) {
                return FailableFunction.lambda$identity$1(obj);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    default Object lambda$andThen$2(FailableFunction failableFunction, Object obj) throws Throwable {
        return failableFunction.apply(apply(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    default Object lambda$compose$3(FailableFunction failableFunction, Object obj) throws Throwable {
        return apply(failableFunction.apply(obj));
    }

    static Object lambda$identity$1(Object obj) throws Throwable {
        return obj;
    }

    static Object lambda$static$0(Object obj) throws Throwable {
        return null;
    }

    static <T, R, E extends Throwable> FailableFunction<T, R, E> nop() {
        return NOP;
    }

    default <V> FailableFunction<T, V, E> andThen(final FailableFunction<? super R, ? extends V, E> failableFunction) {
        Objects.requireNonNull(failableFunction);
        return new FailableFunction() {
            @Override
            public final Object apply(Object obj) {
                return this.a.lambda$andThen$2(failableFunction, obj);
            }
        };
    }

    R apply(T t) throws Throwable;

    default <V> FailableFunction<V, R, E> compose(final FailableFunction<? super V, ? extends T, E> failableFunction) {
        Objects.requireNonNull(failableFunction);
        return new FailableFunction() {
            @Override
            public final Object apply(Object obj) {
                return this.a.lambda$compose$3(failableFunction, obj);
            }
        };
    }
}
