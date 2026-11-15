package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableLongPredicate;

@FunctionalInterface
public interface FailableLongPredicate<E extends Throwable> {
    public static final FailableLongPredicate FALSE = new FailableLongPredicate() {
        @Override
        public final boolean test(long j) {
            return FailableLongPredicate.lambda$static$0(j);
        }
    };
    public static final FailableLongPredicate TRUE = new FailableLongPredicate() {
        @Override
        public final boolean test(long j) {
            return FailableLongPredicate.lambda$static$1(j);
        }
    };

    static <E extends Throwable> FailableLongPredicate<E> falsePredicate() {
        return FALSE;
    }

    default boolean lambda$and$2(FailableLongPredicate failableLongPredicate, long j) throws Throwable {
        return test(j) && failableLongPredicate.test(j);
    }

    default boolean lambda$negate$3(long j) throws Throwable {
        return !test(j);
    }

    default boolean lambda$or$4(FailableLongPredicate failableLongPredicate, long j) throws Throwable {
        return test(j) || failableLongPredicate.test(j);
    }

    static boolean lambda$static$0(long j) throws Throwable {
        return false;
    }

    static boolean lambda$static$1(long j) throws Throwable {
        return true;
    }

    static <E extends Throwable> FailableLongPredicate<E> truePredicate() {
        return TRUE;
    }

    default FailableLongPredicate<E> and(final FailableLongPredicate<E> failableLongPredicate) {
        Objects.requireNonNull(failableLongPredicate);
        return new FailableLongPredicate() {
            @Override
            public final boolean test(long j) {
                return this.a.lambda$and$2(failableLongPredicate, j);
            }
        };
    }

    default FailableLongPredicate<E> negate() {
        return new FailableLongPredicate() {
            @Override
            public final boolean test(long j) {
                return this.a.lambda$negate$3(j);
            }
        };
    }

    default FailableLongPredicate<E> or(final FailableLongPredicate<E> failableLongPredicate) {
        Objects.requireNonNull(failableLongPredicate);
        return new FailableLongPredicate() {
            @Override
            public final boolean test(long j) {
                return this.a.lambda$or$4(failableLongPredicate, j);
            }
        };
    }

    boolean test(long j) throws Throwable;
}
