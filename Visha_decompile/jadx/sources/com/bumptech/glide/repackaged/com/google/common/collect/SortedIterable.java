package com.bumptech.glide.repackaged.com.google.common.collect;

import java.util.Comparator;

interface SortedIterable<T> extends Iterable<T> {
    Comparator<? super T> comparator();
}
