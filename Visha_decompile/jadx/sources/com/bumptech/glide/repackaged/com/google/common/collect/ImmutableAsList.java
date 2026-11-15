package com.bumptech.glide.repackaged.com.google.common.collect;

abstract class ImmutableAsList<E> extends ImmutableList<E> {
    @Override
    public boolean contains(Object obj) {
        return delegateCollection().contains(obj);
    }

    public abstract ImmutableCollection<E> delegateCollection();

    @Override
    public boolean isEmpty() {
        return delegateCollection().isEmpty();
    }

    @Override
    public boolean isPartialView() {
        return delegateCollection().isPartialView();
    }

    @Override
    public int size() {
        return delegateCollection().size();
    }
}
