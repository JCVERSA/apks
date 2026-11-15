package com.google.common.collect;

import java.util.Collection;
import java.util.Set;

public interface l3 extends Collection {

    public interface a {
        int getCount();

        Object getElement();

        String toString();
    }

    int add(Object obj, int i10);

    @Override
    boolean contains(Object obj);

    @Override
    boolean containsAll(Collection collection);

    int count(Object obj);

    Set elementSet();

    Set entrySet();

    @Override
    boolean equals(Object obj);

    @Override
    int hashCode();

    int remove(Object obj, int i10);

    @Override
    boolean remove(Object obj);

    int setCount(Object obj, int i10);

    boolean setCount(Object obj, int i10, int i11);

    @Override
    int size();
}
