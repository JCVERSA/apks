package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableIntPredicate;

@FunctionalInterface
public interface FailableIntPredicate<E extends Throwable> {
    public static final FailableIntPredicate FALSE = new FailableIntPredicate() {
        @Override
        public final boolean test(int i) {
            return FailableIntPredicate.lambda$static$0(i);
        }
    };
    public static final FailableIntPredicate TRUE = new FailableIntPredicate() {
        @Override
        public final boolean test(int i) {
            return FailableIntPredicate.lambda$static$1(i);
        }
    };

    static <E extends Throwable> FailableIntPredicate<E> falsePredicate() {
        return FALSE;
    }

    default boolean lambda$and$2(FailableIntPredicate failableIntPredicate, int i) throws Throwable {
        return test(i) && failableIntPredicate.test(i);
    }

    default boolean lambda$negate$3(int i) throws Throwable {
        return !test(i);
    }

    default boolean lambda$or$4(FailableIntPredicate failableIntPredicate, int i) throws Throwable {
        return test(i) || failableIntPredicate.test(i);
    }

    static boolean lambda$static$0(int i) throws Throwable {
        return false;
    }

    static boolean lambda$static$1(int i) throws Throwable {
        return true;
    }

    static <E extends Throwable> FailableIntPredicate<E> truePredicate() {
        return TRUE;
    }

    default FailableIntPredicate<E> and(final FailableIntPredicate<E> failableIntPredicate) {
        Objects.requireNonNull(failableIntPredicate);
        return new FailableIntPredicate() {
            @Override
            public final boolean test(int i) {
                return this.a.lambda$and$2(failableIntPredicate, i);
            }
        };
    }

    default FailableIntPredicate<E> negate() {
        return new FailableIntPredicate() {
            @Override
            public final boolean test(int i) {
                return this.a.lambda$negate$3(i);
            }
        };
    }

    default FailableIntPredicate<E> or(final FailableIntPredicate<E> failableIntPredicate) {
        Objects.requireNonNull(failableIntPredicate);
        return new FailableIntPredicate() {
            @Override
            public final boolean test(int i) {
                return this.a.lambda$or$4(failableIntPredicate, i);
            }
        };
    }

    boolean test(int i) throws Throwable;
}
