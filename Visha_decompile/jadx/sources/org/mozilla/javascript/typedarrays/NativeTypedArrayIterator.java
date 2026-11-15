package org.mozilla.javascript.typedarrays;

import java.util.ListIterator;
import java.util.NoSuchElementException;

public class NativeTypedArrayIterator<T> implements ListIterator<T> {
    private int lastPosition = -1;
    private int position;
    private final NativeTypedArrayView<T> view;

    public NativeTypedArrayIterator(NativeTypedArrayView<T> nativeTypedArrayView, int i) {
        this.view = nativeTypedArrayView;
        this.position = i;
    }

    @Override
    public void add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean hasNext() {
        return this.position < this.view.length;
    }

    @Override
    public boolean hasPrevious() {
        return this.position > 0;
    }

    @Override
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        T t = this.view.get(this.position);
        int i = this.position;
        this.lastPosition = i;
        this.position = i + 1;
        return t;
    }

    @Override
    public int nextIndex() {
        return this.position;
    }

    @Override
    public T previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.position - 1;
        this.position = i;
        this.lastPosition = i;
        return this.view.get(i);
    }

    @Override
    public int previousIndex() {
        return this.position - 1;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override
    public void set(T t) {
        int i = this.lastPosition;
        if (i < 0) {
            throw new IllegalStateException();
        }
        this.view.js_set(i, t);
    }
}
