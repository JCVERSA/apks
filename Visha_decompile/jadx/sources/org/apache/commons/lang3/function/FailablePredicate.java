package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailablePredicate;

@FunctionalInterface
public interface FailablePredicate<T, E extends Throwable> {
    public static final FailablePredicate FALSE = new FailablePredicate() {
        @Override
        public final boolean test(Object obj) {
            return FailablePredicate.lambda$static$0(obj);
        }
    };
    public static final FailablePredicate TRUE = new FailablePredicate() {
        @Override
        public final boolean test(Object obj) {
            return FailablePredicate.lambda$static$1(obj);
        }
    };

    static <T, E extends Throwable> FailablePredicate<T, E> falsePredicate() {
        return FALSE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    default boolean lambda$and$2(FailablePredicate failablePredicate, Object obj) throws Throwable {
        return test(obj) && failablePredicate.test(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    default boolean lambda$negate$3(Object obj) throws Throwable {
        return !test(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    default boolean lambda$or$4(FailablePredicate failablePredicate, Object obj) throws Throwable {
        return test(obj) || failablePredicate.test(obj);
    }

    static boolean lambda$static$0(Object obj) throws Throwable {
        return false;
    }

    static boolean lambda$static$1(Object obj) throws Throwable {
        return true;
    }

    static <T, E extends Throwable> FailablePredicate<T, E> truePredicate() {
        return TRUE;
    }

    default FailablePredicate<T, E> and(final FailablePredicate<? super T, E> failablePredicate) {
        Objects.requireNonNull(failablePredicate);
        return new FailablePredicate() {
            @Override
            public final boolean test(Object obj) {
                return this.a.lambda$and$2(failablePredicate, obj);
            }
        };
    }

    default FailablePredicate<T, E> negate() {
        return new FailablePredicate() {
            @Override
            public final boolean test(Object obj) {
                return this.a.lambda$negate$3(obj);
            }
        };
    }

    default FailablePredicate<T, E> or(final FailablePredicate<? super T, E> failablePredicate) {
        Objects.requireNonNull(failablePredicate);
        return new FailablePredicate() {
            @Override
            public final boolean test(Object obj) {
                return this.a.lambda$or$4(failablePredicate, obj);
            }
        };
    }

    boolean test(T t) throws Throwable;
}
