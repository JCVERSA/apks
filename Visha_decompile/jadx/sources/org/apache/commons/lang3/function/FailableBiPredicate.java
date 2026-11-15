package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableBiPredicate;

@FunctionalInterface
public interface FailableBiPredicate<T, U, E extends Throwable> {
    public static final FailableBiPredicate FALSE = new FailableBiPredicate() {
        @Override
        public final boolean test(Object obj, Object obj2) {
            return FailableBiPredicate.lambda$static$0(obj, obj2);
        }
    };
    public static final FailableBiPredicate TRUE = new FailableBiPredicate() {
        @Override
        public final boolean test(Object obj, Object obj2) {
            return FailableBiPredicate.lambda$static$1(obj, obj2);
        }
    };

    static <T, U, E extends Throwable> FailableBiPredicate<T, U, E> falsePredicate() {
        return FALSE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    default boolean lambda$and$2(FailableBiPredicate failableBiPredicate, Object obj, Object obj2) throws Throwable {
        return test(obj, obj2) && failableBiPredicate.test(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    default boolean lambda$negate$3(Object obj, Object obj2) throws Throwable {
        return !test(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    default boolean lambda$or$4(FailableBiPredicate failableBiPredicate, Object obj, Object obj2) throws Throwable {
        return test(obj, obj2) || failableBiPredicate.test(obj, obj2);
    }

    static boolean lambda$static$0(Object obj, Object obj2) throws Throwable {
        return false;
    }

    static boolean lambda$static$1(Object obj, Object obj2) throws Throwable {
        return true;
    }

    static <T, U, E extends Throwable> FailableBiPredicate<T, U, E> truePredicate() {
        return TRUE;
    }

    default FailableBiPredicate<T, U, E> and(final FailableBiPredicate<? super T, ? super U, E> failableBiPredicate) {
        Objects.requireNonNull(failableBiPredicate);
        return new FailableBiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return this.a.lambda$and$2(failableBiPredicate, obj, obj2);
            }
        };
    }

    default FailableBiPredicate<T, U, E> negate() {
        return new FailableBiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return this.a.lambda$negate$3(obj, obj2);
            }
        };
    }

    default FailableBiPredicate<T, U, E> or(final FailableBiPredicate<? super T, ? super U, E> failableBiPredicate) {
        Objects.requireNonNull(failableBiPredicate);
        return new FailableBiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return this.a.lambda$or$4(failableBiPredicate, obj, obj2);
            }
        };
    }

    boolean test(T t, U u) throws Throwable;
}
