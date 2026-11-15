package defpackage;

import java.util.ListIterator;

public abstract class z6b extends y6b implements ListIterator {
    public z6b(ListIterator listIterator) {
        super(listIterator);
    }

    @Override
    public void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final ListIterator b() {
        return (ListIterator) this.b;
    }

    @Override
    public final boolean hasPrevious() {
        return b().hasPrevious();
    }

    @Override
    public final int nextIndex() {
        return b().nextIndex();
    }

    @Override
    public final Object previous() {
        return a(b().previous());
    }

    @Override
    public final int previousIndex() {
        return b().previousIndex();
    }

    public void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
