package org.apache.commons.lang3.compare;

import java.util.function.Predicate;
import org.apache.commons.lang3.compare.ComparableUtils;

public class ComparableUtils {

    public static class ComparableCheckBuilder<A extends Comparable<A>> {
        private final A a;

        private boolean betweenOrdered(A a, A a2) {
            return greaterThanOrEqualTo(a) && lessThanOrEqualTo(a2);
        }

        private boolean betweenOrderedExclusive(A a, A a2) {
            return greaterThan(a) && lessThan(a2);
        }

        public boolean between(A a, A a2) {
            return betweenOrdered(a, a2) || betweenOrdered(a2, a);
        }

        public boolean betweenExclusive(A a, A a2) {
            return betweenOrderedExclusive(a, a2) || betweenOrderedExclusive(a2, a);
        }

        public boolean equalTo(A a) {
            return this.a.compareTo(a) == 0;
        }

        public boolean greaterThan(A a) {
            return this.a.compareTo(a) > 0;
        }

        public boolean greaterThanOrEqualTo(A a) {
            return this.a.compareTo(a) >= 0;
        }

        public boolean lessThan(A a) {
            return this.a.compareTo(a) < 0;
        }

        public boolean lessThanOrEqualTo(A a) {
            return this.a.compareTo(a) <= 0;
        }

        private ComparableCheckBuilder(A a) {
            this.a = a;
        }
    }

    private ComparableUtils() {
    }

    public static <A extends Comparable<A>> Predicate<A> between(final A a, final A a2) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ComparableUtils.lambda$between$0(a, a2, (Comparable) obj);
            }
        };
    }

    public static <A extends Comparable<A>> Predicate<A> betweenExclusive(final A a, final A a2) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ComparableUtils.lambda$betweenExclusive$1(a, a2, (Comparable) obj);
            }
        };
    }

    public static <A extends Comparable<A>> Predicate<A> ge(final A a) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ComparableUtils.lambda$ge$2(a, (Comparable) obj);
            }
        };
    }

    public static <A extends Comparable<A>> Predicate<A> gt(final A a) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ComparableUtils.lambda$gt$3(a, (Comparable) obj);
            }
        };
    }

    public static <A extends Comparable<A>> ComparableCheckBuilder<A> is(A a) {
        return new ComparableCheckBuilder<>(a);
    }

    public static boolean lambda$between$0(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return is(comparable3).between(comparable, comparable2);
    }

    public static boolean lambda$betweenExclusive$1(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return is(comparable3).betweenExclusive(comparable, comparable2);
    }

    public static boolean lambda$ge$2(Comparable comparable, Comparable comparable2) {
        return is(comparable2).greaterThanOrEqualTo(comparable);
    }

    public static boolean lambda$gt$3(Comparable comparable, Comparable comparable2) {
        return is(comparable2).greaterThan(comparable);
    }

    public static boolean lambda$le$4(Comparable comparable, Comparable comparable2) {
        return is(comparable2).lessThanOrEqualTo(comparable);
    }

    public static boolean lambda$lt$5(Comparable comparable, Comparable comparable2) {
        return is(comparable2).lessThan(comparable);
    }

    public static <A extends Comparable<A>> Predicate<A> le(final A a) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ComparableUtils.lambda$le$4(a, (Comparable) obj);
            }
        };
    }

    public static <A extends Comparable<A>> Predicate<A> lt(final A a) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ComparableUtils.lambda$lt$5(a, (Comparable) obj);
            }
        };
    }
}
