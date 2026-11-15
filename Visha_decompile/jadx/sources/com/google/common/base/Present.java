package com.google.common.base;

import defpackage.o74;
import defpackage.w6a;
import defpackage.xd8;
import java.util.Collections;
import java.util.Set;

final class Present<T> extends Optional<T> {
    private static final long serialVersionUID = 0;
    private final T reference;

    public Present(T t) {
        this.reference = t;
    }

    @Override
    public Set<T> asSet() {
        return Collections.singleton(this.reference);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Present) {
            return this.reference.equals(((Present) obj).reference);
        }
        return false;
    }

    @Override
    public T get() {
        return this.reference;
    }

    @Override
    public int hashCode() {
        return this.reference.hashCode() + 1502476572;
    }

    @Override
    public boolean isPresent() {
        return true;
    }

    @Override
    public T or(T t) {
        xd8.p(t, "use Optional.orNull() instead of Optional.or(null)");
        return this.reference;
    }

    @Override
    public T orNull() {
        return this.reference;
    }

    @Override
    public String toString() {
        return "Optional.of(" + this.reference + ")";
    }

    @Override
    public <V> Optional<V> transform(o74 o74Var) {
        return new Present(xd8.p(o74Var.apply(this.reference), "the Function passed to Optional.transform() must not return null."));
    }

    @Override
    public Optional<T> or(Optional<? extends T> optional) {
        xd8.o(optional);
        return this;
    }

    @Override
    public T or(w6a w6aVar) {
        xd8.o(w6aVar);
        return this.reference;
    }
}
