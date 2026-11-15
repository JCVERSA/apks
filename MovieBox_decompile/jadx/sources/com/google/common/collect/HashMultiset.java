package com.google.common.collect;

import java.util.Set;

public final class HashMultiset<E> extends AbstractMapBasedMultiset<E> {
    private static final long serialVersionUID = 0;

    HashMultiset(int i10) {
        super(i10);
    }

    public static <E> HashMultiset<E> create() {
        return create(3);
    }

    @Override
    public boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override
    public Set elementSet() {
        return super.elementSet();
    }

    @Override
    public Set entrySet() {
        return super.entrySet();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    o3 newBackingMap(int i10) {
        return new o3(i10);
    }

    public static <E> HashMultiset<E> create(int i10) {
        return new HashMultiset<>(i10);
    }

    public static <E> HashMultiset<E> create(Iterable<? extends E> iterable) {
        HashMultiset<E> hashMultisetCreate = create(Multisets.h(iterable));
        g3.a(hashMultisetCreate, iterable);
        return hashMultisetCreate;
    }
}
