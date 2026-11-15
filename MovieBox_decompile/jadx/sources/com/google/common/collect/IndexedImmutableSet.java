package com.google.common.collect;

abstract class IndexedImmutableSet<E> extends ImmutableSet<E> {
    IndexedImmutableSet() {
    }

    @Override
    int copyIntoArray(Object[] objArr, int i10) {
        return asList().copyIntoArray(objArr, i10);
    }

    @Override
    ImmutableList<E> createAsList() {
        return new ImmutableList<E>() {
            @Override
            public E get(int i10) {
                return (E) IndexedImmutableSet.this.get(i10);
            }

            @Override
            boolean isPartialView() {
                return IndexedImmutableSet.this.isPartialView();
            }

            @Override
            public int size() {
                return IndexedImmutableSet.this.size();
            }

            @Override
            Object writeReplace() {
                return super.writeReplace();
            }
        };
    }

    abstract E get(int i10);

    @Override
    Object writeReplace() {
        return super.writeReplace();
    }

    @Override
    public r4 iterator() {
        return asList().iterator();
    }
}
