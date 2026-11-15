package com.google.common.collect;

import defpackage.os9;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.Set;

public interface p extends j, os9 {
    @Override
    Comparator comparator();

    p descendingMultiset();

    @Override
    NavigableSet elementSet();

    @Override
    Set entrySet();

    j.a firstEntry();

    p headMultiset(Object obj, BoundType boundType);

    j.a lastEntry();

    j.a pollFirstEntry();

    j.a pollLastEntry();

    p subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2);

    p tailMultiset(Object obj, BoundType boundType);
}
