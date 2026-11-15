package com.google.common.base;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;

public abstract class Optional<T> implements Serializable {
    private static final long serialVersionUID = 0;

    class a implements Iterable {

        final Iterable f29383a;

        class C0376a extends AbstractIterator {

            private final Iterator f29384c;

            C0376a() {
                this.f29384c = (Iterator) m.o(a.this.f29383a.iterator());
            }

            @Override
            protected Object a() {
                while (this.f29384c.hasNext()) {
                    Optional optional = (Optional) this.f29384c.next();
                    if (optional.isPresent()) {
                        return optional.get();
                    }
                }
                return b();
            }
        }

        a(Iterable iterable) {
            this.f29383a = iterable;
        }

        @Override
        public Iterator iterator() {
            return new C0376a();
        }
    }

    Optional() {
    }

    public static <T> Optional<T> absent() {
        return Absent.withType();
    }

    public static <T> Optional<T> fromNullable(T t10) {
        return t10 == null ? absent() : new Present(t10);
    }

    public static <T> Optional<T> of(T t10) {
        return new Present(m.o(t10));
    }

    public static <T> Iterable<T> presentInstances(Iterable<? extends Optional<? extends T>> iterable) {
        m.o(iterable);
        return new a(iterable);
    }

    public abstract Set<T> asSet();

    public abstract boolean equals(Object obj);

    public abstract T get();

    public abstract int hashCode();

    public abstract boolean isPresent();

    public abstract Optional<T> or(Optional<? extends T> optional);

    public abstract T or(q qVar);

    public abstract T or(T t10);

    public abstract T orNull();

    public abstract String toString();

    public abstract <V> Optional<V> transform(f fVar);
}
