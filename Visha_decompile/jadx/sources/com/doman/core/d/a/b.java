package com.doman.core.d.a;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.LinkedList;
import java.util.List;

public final class b<T> {
    final ReferenceQueue<T> a = new ReferenceQueue<>();
    final List<Reference<T>> b = new LinkedList();
}
