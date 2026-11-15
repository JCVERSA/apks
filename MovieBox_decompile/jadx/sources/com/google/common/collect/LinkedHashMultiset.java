package com.google.common.collect;

import java.util.Set;

public final class LinkedHashMultiset<E> extends AbstractMapBasedMultiset<E> {
    LinkedHashMultiset(int i10) {
        super(i10);
    }

    public static <E> LinkedHashMultiset<E> create() {
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
        return new p3(i10);
    }

    public static <E> LinkedHashMultiset<E> create(int i10) {
        return new LinkedHashMultiset<>(i10);
    }

    public static <E> LinkedHashMultiset<E> create(Iterable<? extends E> iterable) {
        LinkedHashMultiset<E> linkedHashMultisetCreate = create(Multisets.h(iterable));
        g3.a(linkedHashMultisetCreate, iterable);
        return linkedHashMultisetCreate;
    }
}
