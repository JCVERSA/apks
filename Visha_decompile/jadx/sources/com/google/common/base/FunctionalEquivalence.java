package com.google.common.base;

import defpackage.kc7;
import defpackage.o74;
import defpackage.xd8;
import java.io.Serializable;

final class FunctionalEquivalence<F, T> extends Equivalence implements Serializable {
    private static final long serialVersionUID = 0;
    private final o74 function;
    private final Equivalence resultEquivalence;

    public FunctionalEquivalence(o74 o74Var, Equivalence equivalence) {
        this.function = (o74) xd8.o(o74Var);
        this.resultEquivalence = (Equivalence) xd8.o(equivalence);
    }

    @Override
    public boolean doEquivalent(F f, F f2) {
        return this.resultEquivalence.equivalent(this.function.apply(f), this.function.apply(f2));
    }

    @Override
    public int doHash(F f) {
        return this.resultEquivalence.hash(this.function.apply(f));
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
        return kc7.b(this.function, this.resultEquivalence);
    }

    public String toString() {
        return this.resultEquivalence + ".onResultOf(" + this.function + ")";
    }
}
