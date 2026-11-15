package com.google.common.base;

import java.util.Collections;
import java.util.Set;

final class Present<T> extends Optional<T> {
    private static final long serialVersionUID = 0;
    private final T reference;

    Present(T t10) {
        this.reference = t10;
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
    public T or(T t10) {
        m.p(t10, "use Optional.orNull() instead of Optional.or(null)");
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
    public <V> Optional<V> transform(f fVar) {
        return new Present(m.p(fVar.apply(this.reference), "the Function passed to Optional.transform() must not return null."));
    }

    @Override
    public Optional<T> or(Optional<? extends T> optional) {
        m.o(optional);
        return this;
    }

    @Override
    public T or(q qVar) {
        m.o(qVar);
        return this.reference;
    }
}
