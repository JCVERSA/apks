package org.jsoup.helper;

import java.util.ArrayList;
import java.util.Collection;

public abstract class ChangeNotifyingArrayList<E> extends ArrayList<E> {
    public ChangeNotifyingArrayList(int i) {
        super(i);
    }

    @Override
    public boolean add(E e) {
        onContentsChanged();
        return super.add(e);
    }

    @Override
    public boolean addAll(Collection<? extends E> collection) {
        onContentsChanged();
        return super.addAll(collection);
    }

    @Override
    public void clear() {
        onContentsChanged();
        super.clear();
    }

    public abstract void onContentsChanged();

    @Override
    public E remove(int i) {
        onContentsChanged();
        return (E) super.remove(i);
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        onContentsChanged();
        return super.removeAll(collection);
    }

    @Override
    public void removeRange(int i, int i2) {
        onContentsChanged();
        super.removeRange(i, i2);
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        onContentsChanged();
        return super.retainAll(collection);
    }

    @Override
    public E set(int i, E e) {
        onContentsChanged();
        return (E) super.set(i, e);
    }

    @Override
    public void add(int i, E e) {
        onContentsChanged();
        super.add(i, e);
    }

    @Override
    public boolean addAll(int i, Collection<? extends E> collection) {
        onContentsChanged();
        return super.addAll(i, collection);
    }

    @Override
    public boolean remove(Object obj) {
        onContentsChanged();
        return super.remove(obj);
    }
}
