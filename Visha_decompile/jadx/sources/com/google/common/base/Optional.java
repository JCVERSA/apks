package com.google.common.base;

import defpackage.o74;
import defpackage.w6a;
import defpackage.xd8;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;

public abstract class Optional<T> implements Serializable {
    private static final long serialVersionUID = 0;

    public class a implements Iterable {
        public final Iterable b;

        public class C0096a extends AbstractIterator {
            public final Iterator d;

            public C0096a() {
                this.d = (Iterator) xd8.o(a.this.b.iterator());
            }

            @Override
            public Object a() {
                while (this.d.hasNext()) {
                    Optional optional = (Optional) this.d.next();
                    if (optional.isPresent()) {
                        return optional.get();
                    }
                }
                return b();
            }
        }

        public a(Iterable iterable) {
            this.b = iterable;
        }

        @Override
        public Iterator iterator() {
            return new C0096a();
        }
    }

    public static <T> Optional<T> absent() {
        return Absent.withType();
    }

    public static <T> Optional<T> fromNullable(T t) {
        return t == null ? absent() : new Present(t);
    }

    public static <T> Optional<T> of(T t) {
        return new Present(xd8.o(t));
    }

    public static <T> Iterable<T> presentInstances(Iterable<? extends Optional<? extends T>> iterable) {
        xd8.o(iterable);
        return new a(iterable);
    }

    public abstract Set<T> asSet();

    public abstract boolean equals(Object obj);

    public abstract T get();

    public abstract int hashCode();

    public abstract boolean isPresent();

    public abstract Optional<T> or(Optional<? extends T> optional);

    public abstract T or(T t);

    public abstract T or(w6a w6aVar);

    public abstract T orNull();

    public abstract String toString();

    public abstract <V> Optional<V> transform(o74 o74Var);
}
