package com.google.common.base;

import defpackage.he8;
import defpackage.kc7;
import defpackage.o74;
import defpackage.xd8;
import java.io.Serializable;

public abstract class Equivalence {

    public static final class Equals extends Equivalence implements Serializable {
        static final Equals INSTANCE = new Equals();
        private static final long serialVersionUID = 1;

        private Object readResolve() {
            return INSTANCE;
        }

        @Override
        public boolean doEquivalent(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override
        public int doHash(Object obj) {
            return obj.hashCode();
        }
    }

    public static final class EquivalentToPredicate<T> implements he8, Serializable {
        private static final long serialVersionUID = 0;
        private final Equivalence equivalence;
        private final T target;

        public EquivalentToPredicate(Equivalence equivalence, T t) {
            this.equivalence = (Equivalence) xd8.o(equivalence);
            this.target = t;
        }

        @Override
        public boolean apply(T t) {
            return this.equivalence.equivalent(t, this.target);
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof EquivalentToPredicate)) {
                return false;
            }
            EquivalentToPredicate equivalentToPredicate = (EquivalentToPredicate) obj;
            return this.equivalence.equals(equivalentToPredicate.equivalence) && kc7.a(this.target, equivalentToPredicate.target);
        }

        public int hashCode() {
            return kc7.b(this.equivalence, this.target);
        }

        public String toString() {
            return this.equivalence + ".equivalentTo(" + this.target + ")";
        }
    }

    public static final class Identity extends Equivalence implements Serializable {
        static final Identity INSTANCE = new Identity();
        private static final long serialVersionUID = 1;

        private Object readResolve() {
            return INSTANCE;
        }

        @Override
        public boolean doEquivalent(Object obj, Object obj2) {
            return false;
        }

        @Override
        public int doHash(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    public static final class Wrapper<T> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Equivalence equivalence;
        private final T reference;

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Wrapper)) {
                return false;
            }
            Wrapper wrapper = (Wrapper) obj;
            if (this.equivalence.equals(wrapper.equivalence)) {
                return this.equivalence.equivalent(this.reference, wrapper.reference);
            }
            return false;
        }

        public T get() {
            return this.reference;
        }

        public int hashCode() {
            return this.equivalence.hash(this.reference);
        }

        public String toString() {
            return this.equivalence + ".wrap(" + this.reference + ")";
        }

        private Wrapper(Equivalence equivalence, T t) {
            this.equivalence = (Equivalence) xd8.o(equivalence);
            this.reference = t;
        }
    }

    public static Equivalence equals() {
        return Equals.INSTANCE;
    }

    public static Equivalence identity() {
        return Identity.INSTANCE;
    }

    public abstract boolean doEquivalent(Object obj, Object obj2);

    public abstract int doHash(Object obj);

    public final boolean equivalent(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return doEquivalent(obj, obj2);
    }

    public final he8 equivalentTo(Object obj) {
        return new EquivalentToPredicate(this, obj);
    }

    public final int hash(Object obj) {
        if (obj == null) {
            return 0;
        }
        return doHash(obj);
    }

    public final <F> Equivalence onResultOf(o74 o74Var) {
        return new FunctionalEquivalence(o74Var, this);
    }

    public final <S> Equivalence pairwise() {
        return new PairwiseEquivalence(this);
    }

    public final <S> Wrapper<S> wrap(S s) {
        return new Wrapper<>(s);
    }
}
