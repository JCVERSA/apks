package com.google.common.base;

import defpackage.o74;
import defpackage.w6a;
import defpackage.xd8;
import java.util.Collections;
import java.util.Set;

final class Absent<T> extends Optional<T> {
    static final Absent<Object> INSTANCE = new Absent<>();
    private static final long serialVersionUID = 0;

    private Absent() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    public static <T> Optional<T> withType() {
        return INSTANCE;
    }

    @Override
    public Set<T> asSet() {
        return Collections.emptySet();
    }

    @Override
    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override
    public T get() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override
    public int hashCode() {
        return 2040732332;
    }

    @Override
    public boolean isPresent() {
        return false;
    }

    @Override
    public T or(T t) {
        return (T) xd8.p(t, "use Optional.orNull() instead of Optional.or(null)");
    }

    @Override
    public T orNull() {
        return null;
    }

    @Override
    public String toString() {
        return "Optional.absent()";
    }

    @Override
    public <V> Optional<V> transform(o74 o74Var) {
        xd8.o(o74Var);
        return Optional.absent();
    }

    @Override
    public Optional<T> or(Optional<? extends T> optional) {
        return (Optional) xd8.o(optional);
    }

    @Override
    public T or(w6a w6aVar) {
        return (T) xd8.p(w6aVar.get(), "use Optional.orNull() instead of a Supplier that returns null");
    }
}
