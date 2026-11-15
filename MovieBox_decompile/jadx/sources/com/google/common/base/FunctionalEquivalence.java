package com.google.common.base;

import java.io.Serializable;

final class FunctionalEquivalence<F, T> extends Equivalence implements Serializable {
    private static final long serialVersionUID = 0;
    private final f function;
    private final Equivalence resultEquivalence;

    FunctionalEquivalence(f fVar, Equivalence equivalence) {
        this.function = (f) m.o(fVar);
        this.resultEquivalence = (Equivalence) m.o(equivalence);
    }

    @Override
    protected boolean doEquivalent(F f10, F f11) {
        return this.resultEquivalence.equivalent(this.function.apply(f10), this.function.apply(f11));
    }

    @Override
    protected int doHash(F f10) {
        return this.resultEquivalence.hash(this.function.apply(f10));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FunctionalEquivalence)) {
            return false;
        }
        FunctionalEquivalence functionalEquivalence = (FunctionalEquivalence) obj;
        return this.function.equals(functionalEquivalence.function) && this.resultEquivalence.equals(functionalEquivalence.resultEquivalence);
    }

    public int hashCode() {
        return j.b(this.function, this.resultEquivalence);
    }

    public String toString() {
        return this.resultEquivalence + ".onResultOf(" + this.function + ")";
    }
}
