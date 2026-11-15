package com.google.common.base;

import defpackage.he8;
import defpackage.o74;
import defpackage.xd8;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public abstract class Predicates {

    public static class AndPredicate<T> implements he8, Serializable {
        private static final long serialVersionUID = 0;
        private final List<? extends he8> components;

        @Override
        public boolean apply(T t) {
            for (int i = 0; i < this.components.size(); i++) {
                if (!this.components.get(i).apply(t)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof AndPredicate) {
                return this.components.equals(((AndPredicate) obj).components);
            }
            return false;
        }

        public int hashCode() {
            return this.components.hashCode() + 306654252;
        }

        public String toString() {
            return Predicates.j("and", this.components);
        }

        public AndPredicate(List list) {
            this.components = list;
        }
    }

    public static class CompositionPredicate<A, B> implements he8, Serializable {
        private static final long serialVersionUID = 0;
        final o74 f;
        final he8 p;

        @Override
        public boolean apply(A a) {
            return this.p.apply(this.f.apply(a));
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof CompositionPredicate)) {
                return false;
            }
            CompositionPredicate compositionPredicate = (CompositionPredicate) obj;
            return this.f.equals(compositionPredicate.f) && this.p.equals(compositionPredicate.p);
        }

        public int hashCode() {
            return this.p.hashCode() ^ this.f.hashCode();
        }

        public String toString() {
            return this.p + "(" + this.f + ")";
        }

        public CompositionPredicate(he8 he8Var, o74 o74Var) {
            this.p = (he8) xd8.o(he8Var);
            this.f = (o74) xd8.o(o74Var);
        }
    }

    public static class InPredicate<T> implements he8, Serializable {
        private static final long serialVersionUID = 0;
        private final Collection<?> target;

        @Override
        public boolean apply(T t) {
            try {
                return this.target.contains(t);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof InPredicate) {
                return this.target.equals(((InPredicate) obj).target);
            }
            return false;
        }

        public int hashCode() {
            return this.target.hashCode();
        }

        public String toString() {
            return "Predicates.in(" + this.target + ")";
        }

        public InPredicate(Collection collection) {
            this.target = (Collection) xd8.o(collection);
        }
    }

    public static class IsEqualToPredicate implements he8, Serializable {
        private static final long serialVersionUID = 0;
        private final Object target;

        @Override
        public boolean apply(Object obj) {
            return this.target.equals(obj);
        }

        @Override
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

        public <T> he8 withNarrowedType() {
            return this;
        }

        public IsEqualToPredicate(Object obj) {
            this.target = obj;
        }
    }

    public static class NotPredicate<T> implements he8, Serializable {
        private static final long serialVersionUID = 0;
        final he8 predicate;

        public NotPredicate(he8 he8Var) {
            this.predicate = (he8) xd8.o(he8Var);
        }

        @Override
        public boolean apply(T t) {
            return !this.predicate.apply(t);
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof NotPredicate) {
                return this.predicate.equals(((NotPredicate) obj).predicate);
            }
            return false;
        }

        public int hashCode() {
            return ~this.predicate.hashCode();
        }

        public String toString() {
            return "Predicates.not(" + this.predicate + ")";
        }
    }

    public enum ObjectPredicate implements he8 {
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

        @Override
        public abstract boolean apply(Object obj);

        public <T> he8 withNarrowedType() {
            return this;
        }
    }

    public static he8 b() {
        return ObjectPredicate.ALWAYS_TRUE.withNarrowedType();
    }

    public static he8 c(he8 he8Var, he8 he8Var2) {
        return new AndPredicate(d((he8) xd8.o(he8Var), (he8) xd8.o(he8Var2)));
    }

    public static List d(he8 he8Var, he8 he8Var2) {
        return Arrays.asList(he8Var, he8Var2);
    }

    public static he8 e(he8 he8Var, o74 o74Var) {
        return new CompositionPredicate(he8Var, o74Var);
    }

    public static he8 f(Object obj) {
        return obj == null ? h() : new IsEqualToPredicate(obj).withNarrowedType();
    }

    public static he8 g(Collection collection) {
        return new InPredicate(collection);
    }

    public static he8 h() {
        return ObjectPredicate.IS_NULL.withNarrowedType();
    }

    public static he8 i(he8 he8Var) {
        return new NotPredicate(he8Var);
    }

    public static String j(String str, Iterable iterable) {
        StringBuilder sb = new StringBuilder("Predicates.");
        sb.append(str);
        sb.append('(');
        boolean z = true;
        for (Object obj : iterable) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }
}
