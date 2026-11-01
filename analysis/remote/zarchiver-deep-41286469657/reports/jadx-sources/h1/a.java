package h1;

import android.util.SparseArray;

public final class a<E> extends SparseArray<E> {

    public final Object f1112a;

    public a() {
        super(5);
        this.f1112a = new Object();
    }

    @Override
    public final void clear() {
        synchronized (this.f1112a) {
            super.clear();
        }
    }

    @Override
    public final void delete(int i2) {
        synchronized (this.f1112a) {
            super.delete(i2);
        }
    }

    @Override
    public final E get(int i2) {
        E e2;
        synchronized (this.f1112a) {
            e2 = (E) super.get(i2);
        }
        return e2;
    }

    @Override
    public final void put(int i2, E e2) {
        synchronized (this.f1112a) {
            super.put(i2, e2);
        }
    }
}
