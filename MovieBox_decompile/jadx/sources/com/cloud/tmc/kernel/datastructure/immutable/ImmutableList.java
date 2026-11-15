package com.cloud.tmc.kernel.datastructure.immutable;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class ImmutableList<E> extends ImmutableCollection<E> implements Immutable<List<E>> {
    private List<E> immutableList;

    public ImmutableList(List<E> list) {
        super(list);
        this.immutableList = list;
    }

    @Override
    public boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override
    public boolean containsAll(Collection collection) {
        return super.containsAll(collection);
    }

    public E get(int i10) {
        List<E> list = this.immutableList;
        if (list != null) {
            return list.get(i10);
        }
        return null;
    }

    public int indexOf(E e10) {
        List<E> list = this.immutableList;
        if (list != null) {
            return list.indexOf(e10);
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public Iterator iterator() {
        return super.iterator();
    }

    public int lastIndexOf(Object obj) {
        List<E> list = this.immutableList;
        if (list != null) {
            return list.lastIndexOf(obj);
        }
        return -1;
    }

    @Override
    public int size() {
        return super.size();
    }

    @Override
    public Object[] toArray() {
        return super.toArray();
    }

    public String toString() {
        return this.immutableList.toString();
    }

    @Override
    public List<E> mutable() {
        return new ArrayList(this.immutableList);
    }

    public ImmutableList(E e10) {
        ArrayList arrayList = new ArrayList();
        this.immutableList = arrayList;
        arrayList.add(e10);
        this.immutableCollection = this.immutableList;
    }
}
