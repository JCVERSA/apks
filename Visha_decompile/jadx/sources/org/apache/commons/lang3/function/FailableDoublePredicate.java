package org.apache.commons.lang3.function;

import java.lang.Throwable;
import java.util.Objects;
import org.apache.commons.lang3.function.FailableDoublePredicate;

@FunctionalInterface
public interface FailableDoublePredicate<E extends Throwable> {
    public static final FailableDoublePredicate FALSE = new FailableDoublePredicate() {
        @Override
        public final boolean test(double d) {
            return FailableDoublePredicate.lambda$static$0(d);
        }
    };
    public static final FailableDoublePredicate TRUE = new FailableDoublePredicate() {
        @Override
        public final boolean test(double d) {
            return FailableDoublePredicate.lambda$static$1(d);
        }
    };

    static <E extends Throwable> FailableDoublePredicate<E> falsePredicate() {
        return FALSE;
    }

    default boolean lambda$and$2(FailableDoublePredicate failableDoublePredicate, double d) throws Throwable {
        return test(d) && failableDoublePredicate.test(d);
    }

    default boolean lambda$negate$3(double d) throws Throwable {
        return !test(d);
    }

    default boolean lambda$or$4(FailableDoublePredicate failableDoublePredicate, double d) throws Throwable {
        return test(d) || failableDoublePredicate.test(d);
    }

    static boolean lambda$static$0(double d) throws Throwable {
        return false;
    }

    static boolean lambda$static$1(double d) throws Throwable {
        return true;
    }

    static <E extends Throwable> FailableDoublePredicate<E> truePredicate() {
        return TRUE;
    }

    default FailableDoublePredicate<E> and(final FailableDoublePredicate<E> failableDoublePredicate) {
        Objects.requireNonNull(failableDoublePredicate);
        return new FailableDoublePredicate() {
            @Override
            public final boolean test(double d) {
                return this.a.lambda$and$2(failableDoublePredicate, d);
            }
        };
    }

    default FailableDoublePredicate<E> negate() {
        return new FailableDoublePredicate() {
            @Override
            public final boolean test(double d) {
                return this.a.lambda$negate$3(d);
            }
        };
    }

    default FailableDoublePredicate<E> or(final FailableDoublePredicate<E> failableDoublePredicate) {
        Objects.requireNonNull(failableDoublePredicate);
        return new FailableDoublePredicate() {
            @Override
            public final boolean test(double d) {
                return this.a.lambda$or$4(failableDoublePredicate, d);
            }
        };
    }

    boolean test(double d) throws Throwable;
}
