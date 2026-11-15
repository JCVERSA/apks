package defpackage;

import java.util.ListIterator;

public abstract class w5i extends v5i implements ListIterator {
    public w5i(ListIterator listIterator) {
        super(listIterator);
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean hasPrevious() {
        return ((ListIterator) this.b).hasPrevious();
    }

    @Override
    public final int nextIndex() {
        return ((ListIterator) this.b).nextIndex();
    }

    @Override
    public final Object previous() {
        return a(((ListIterator) this.b).previous());
    }

    @Override
    public final int previousIndex() {
        return ((ListIterator) this.b).previousIndex();
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
