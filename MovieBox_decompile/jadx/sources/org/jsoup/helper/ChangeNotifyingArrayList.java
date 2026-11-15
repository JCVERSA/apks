package org.jsoup.helper;

import java.util.ArrayList;
import java.util.Collection;

public abstract class ChangeNotifyingArrayList<E> extends ArrayList<E> {
    public ChangeNotifyingArrayList(int i10) {
        super(i10);
    }

    @Override
    public boolean add(E e10) {
        onContentsChanged();
        return super.add(e10);
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
    public E remove(int i10) {
        onContentsChanged();
        return (E) super.remove(i10);
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        onContentsChanged();
        return super.removeAll(collection);
    }

    @Override
    protected void removeRange(int i10, int i11) {
        onContentsChanged();
        super.removeRange(i10, i11);
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        onContentsChanged();
        return super.retainAll(collection);
    }

    @Override
    public E set(int i10, E e10) {
        onContentsChanged();
        return (E) super.set(i10, e10);
    }

    @Override
    public void add(int i10, E e10) {
        onContentsChanged();
        super.add(i10, e10);
    }

    @Override
    public boolean addAll(int i10, Collection<? extends E> collection) {
        onContentsChanged();
        return super.addAll(i10, collection);
    }

    @Override
    public boolean remove(Object obj) {
        onContentsChanged();
        return super.remove(obj);
    }
}
