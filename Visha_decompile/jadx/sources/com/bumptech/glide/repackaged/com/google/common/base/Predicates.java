package com.bumptech.glide.repackaged.com.google.common.base;

import java.io.Serializable;

public final class Predicates {
    private static final Joiner COMMA_JOINER = Joiner.on(',');

    public static class IsEqualToPredicate<T> implements Predicate<T>, Serializable {
        private final T target;

        @Override
        public boolean apply(T t) {
            return this.target.equals(t);
        }

        public boolean equals(Object obj) {
            if (obj instanceof IsEqualToPredicate) {
                return this.target.equals(((IsEqualToPredicate) obj).target);
            }
            return false;
        }

        public int hashCode() {
            return this.target.hashCode();
        }

        public String toString() {
            return "Predicates.equalTo(" + this.target + ")";
        }

        private IsEqualToPredicate(T t) {
            this.target = t;
        }
    }

    public enum ObjectPredicate implements Predicate<Object> {
        ALWAYS_TRUE {
            @Override
            public boolean apply(Object obj) {
                return true;
            }

            @Override
            public String toString() {
                return "Predicates.alwaysTrue()";
            }
        },
        ALWAYS_FALSE {
            @Override
            public boolean apply(Object obj) {
                return false;
            }

            @Override
            public String toString() {
                return "Predicates.alwaysFalse()";
            }
        },
        IS_NULL {
            @Override
            public boolean apply(Object obj) {
                return obj == null;
            }

            @Override
            public String toString() {
                return "Predicates.isNull()";
            }
        },
        NOT_NULL {
            @Override
            public boolean apply(Object obj) {
                return obj != null;
            }

            @Override
            public String toString() {
                return "Predicates.notNull()";
            }
        };

        public <T> Predicate<T> withNarrowedType() {
            return this;
        }
    }

    public static <T> Predicate<T> equalTo(T t) {
        return t == null ? isNull() : new IsEqualToPredicate(t);
    }

    public static <T> Predicate<T> isNull() {
        return ObjectPredicate.IS_NULL.withNarrowedType();
    }

    public static <T> Predicate<T> notNull() {
        return ObjectPredicate.NOT_NULL.withNarrowedType();
    }
}
