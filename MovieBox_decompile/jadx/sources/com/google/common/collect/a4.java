package com.google.common.collect;

import java.util.Comparator;
import java.util.NavigableSet;
import java.util.Set;

public interface a4 extends l3, y3 {
    @Override
    Comparator comparator();

    a4 descendingMultiset();

    @Override
    NavigableSet elementSet();

    @Override
    Set entrySet();

    l3.a firstEntry();

    a4 headMultiset(Object obj, BoundType boundType);

    l3.a lastEntry();

    l3.a pollFirstEntry();

    l3.a pollLastEntry();

    a4 subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2);

    a4 tailMultiset(Object obj, BoundType boundType);
}
