package com.google.gson.internal;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;
import java.util.RandomAccess;

public class NonNullElementWrapperList<E> extends AbstractList<E> implements RandomAccess {
    private final ArrayList<E> delegate;

    public NonNullElementWrapperList(ArrayList<E> arrayList) {
        Objects.requireNonNull(arrayList);
        this.delegate = arrayList;
    }

    private E nonNull(E e) {
        if (e != null) {
            return e;
        }
        throw new NullPointerException("Element must be non-null");
    }

    @Override
    public void add(int i, E e) {
        this.delegate.add(i, nonNull(e));
    }

    @Override
    public void clear() {
        this.delegate.clear();
    }

    @Override
    public boolean contains(Object obj) {
        return this.delegate.contains(obj);
    }

    @Override
    public boolean equals(Object obj) {
        return this.delegate.equals(obj);
    }

    @Override
    public E get(int i) {
        return this.delegate.get(i);
    }

    @Override
    public int hashCode() {
        return this.delegate.hashCode();
    }

    @Override
    public int indexOf(Object obj) {
        return this.delegate.indexOf(obj);
    }

    @Override
    public int lastIndexOf(Object obj) {
        return this.delegate.lastIndexOf(obj);
    }

    @Override
    public E remove(int i) {
        return this.delegate.remove(i);
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        return this.delegate.removeAll(collection);
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        return this.delegate.retainAll(collection);
    }

    @Override
    public E set(int i, E e) {
        return this.delegate.set(i, nonNull(e));
    }

    @Override
    public int size() {
        return this.delegate.size();
    }

    @Override
    public Object[] toArray() {
        return this.delegate.toArray();
    }

    @Override
    public boolean remove(Object obj) {
        return this.delegate.remove(obj);
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.delegate.toArray(tArr);
    }
}
