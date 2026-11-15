package com.google.common.base;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public abstract class Predicates {

    private static class AndPredicate<T> implements n, Serializable {
        private static final long serialVersionUID = 0;
        private final List<? extends n> components;

        @Override
        public boolean apply(T t10) {
            for (int i10 = 0; i10 < this.components.size(); i10++) {
                if (!this.components.get(i10).apply(t10)) {
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

        private AndPredicate(List list) {
            this.components = list;
        }
    }

    private static class CompositionPredicate<A, B> implements n, Serializable {
        private static final long serialVersionUID = 0;

        final f f29386f;

        final n f29387p;

        @Override
        public boolean apply(A a10) {
            return this.f29387p.apply(this.f29386f.apply(a10));
        }

        @Override
        public boolean equals(Object obj) {
            if (!(obj instanceof CompositionPredicate)) {
                return false;
            }
            CompositionPredicate compositionPredicate = (CompositionPredicate) obj;
            return this.f29386f.equals(compositionPredicate.f29386f) && this.f29387p.equals(compositionPredicate.f29387p);
        }

        public int hashCode() {
            return this.f29386f.hashCode() ^ this.f29387p.hashCode();
        }

        public String toString() {
            return this.f29387p + "(" + this.f29386f + ")";
        }

        private CompositionPredicate(n nVar, f fVar) {
            this.f29387p = (n) m.o(nVar);
            this.f29386f = (f) m.o(fVar);
        }
    }

    private static class InPredicate<T> implements n, Serializable {
        private static final long serialVersionUID = 0;
        private final Collection<?> target;

        @Override
        public boolean apply(T t10) {
            try {
                return this.target.contains(t10);
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

        private InPredicate(Collection collection) {
            this.target = (Collection) m.o(collection);
        }
    }

    private static class IsEqualToPredicate implements n, Serializable {
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

        <T> n withNarrowedType() {
            return this;
        }

        private IsEqualToPredicate(Object obj) {
            this.target = obj;
        }
    }

    private static class NotPredicate<T> implements n, Serializable {
        private static final long serialVersionUID = 0;
        final n predicate;

        NotPredicate(n nVar) {
            this.predicate = (n) m.o(nVar);
        }

        @Override
        public boolean apply(T t10) {
            return !this.predicate.apply(t10);
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

    enum ObjectPredicate implements n {
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

        <T> n withNarrowedType() {
            return this;
        }
    }

    public static n b() {
        return ObjectPredicate.ALWAYS_TRUE.withNarrowedType();
    }

    public static n c(n nVar, n nVar2) {
        return new AndPredicate(d((n) m.o(nVar), (n) m.o(nVar2)));
    }

    private static List d(n nVar, n nVar2) {
        return Arrays.asList(nVar, nVar2);
    }

    public static n e(n nVar, f fVar) {
        return new CompositionPredicate(nVar, fVar);
    }

    public static n f(Object obj) {
        return obj == null ? h() : new IsEqualToPredicate(obj).withNarrowedType();
    }

    public static n g(Collection collection) {
        return new InPredicate(collection);
    }

    public static n h() {
        return ObjectPredicate.IS_NULL.withNarrowedType();
    }

    public static n i(n nVar) {
        return new NotPredicate(nVar);
    }

    public static String j(String str, Iterable iterable) {
        StringBuilder sb2 = new StringBuilder("Predicates.");
        sb2.append(str);
        sb2.append('(');
        boolean z10 = true;
        for (Object obj : iterable) {
            if (!z10) {
                sb2.append(',');
            }
            sb2.append(obj);
            z10 = false;
        }
        sb2.append(')');
        return sb2.toString();
    }
}
