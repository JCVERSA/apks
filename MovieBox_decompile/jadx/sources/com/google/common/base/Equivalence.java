package com.google.common.base;

import java.io.Serializable;

public abstract class Equivalence {

    static final class Equals extends Equivalence implements Serializable {
        static final Equals INSTANCE = new Equals();
        private static final long serialVersionUID = 1;

        Equals() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        @Override
        protected boolean doEquivalent(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override
        protected int doHash(Object obj) {
            return obj.hashCode();
        }
    }

    private static final class EquivalentToPredicate<T> implements n, Serializable {
        private static final long serialVersionUID = 0;
        private final Equivalence equivalence;
        private final T target;

        EquivalentToPredicate(Equivalence equivalence, T t10) {
            this.equivalence = (Equivalence) m.o(equivalence);
            this.target = t10;
        }

        @Override
        public boolean apply(T t10) {
            return this.equivalence.equivalent(t10, this.target);
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
            return this.equivalence.equals(equivalentToPredicate.equivalence) && j.a(this.target, equivalentToPredicate.target);
        }

        public int hashCode() {
            return j.b(this.equivalence, this.target);
        }

        public String toString() {
            return this.equivalence + ".equivalentTo(" + this.target + ")";
        }
    }

    static final class Identity extends Equivalence implements Serializable {
        static final Identity INSTANCE = new Identity();
        private static final long serialVersionUID = 1;

        Identity() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        @Override
        protected boolean doEquivalent(Object obj, Object obj2) {
            return false;
        }

        @Override
        protected int doHash(Object obj) {
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

        private Wrapper(Equivalence equivalence, T t10) {
            this.equivalence = (Equivalence) m.o(equivalence);
            this.reference = t10;
        }
    }

    protected Equivalence() {
    }

    public static Equivalence equals() {
        return Equals.INSTANCE;
    }

    public static Equivalence identity() {
        return Identity.INSTANCE;
    }

    protected abstract boolean doEquivalent(Object obj, Object obj2);

    protected abstract int doHash(Object obj);

    public final boolean equivalent(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return doEquivalent(obj, obj2);
    }

    public final n equivalentTo(Object obj) {
        return new EquivalentToPredicate(this, obj);
    }

    public final int hash(Object obj) {
        if (obj == null) {
            return 0;
        }
        return doHash(obj);
    }

    public final <F> Equivalence onResultOf(f fVar) {
        return new FunctionalEquivalence(fVar, this);
    }

    public final <S> Equivalence pairwise() {
        return new PairwiseEquivalence(this);
    }

    public final <S> Wrapper<S> wrap(S s10) {
        return new Wrapper<>(s10);
    }
}
