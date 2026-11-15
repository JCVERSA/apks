package com.yandex.mobile.ads.impl;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

final class ij1 extends h {
    private final int f;
    private final int g;
    private final int[] h;
    private final int[] i;
    private final i52[] j;
    private final Object[] k;
    private final HashMap<Object, Integer> l;

    public ij1(List list, iy1 iy1Var) {
        super(iy1Var);
        int size = list.size();
        this.h = new int[size];
        this.i = new int[size];
        this.j = new i52[size];
        this.k = new Object[size];
        this.l = new HashMap<>();
        Iterator it = list.iterator();
        int iB = 0;
        int iA = 0;
        int i = 0;
        while (it.hasNext()) {
            xw0 xw0Var = (xw0) it.next();
            this.j[i] = xw0Var.b();
            this.i[i] = iB;
            this.h[i] = iA;
            iB += this.j[i].b();
            iA += this.j[i].a();
            this.k[i] = xw0Var.a();
            this.l.put(this.k[i], Integer.valueOf(i));
            i++;
        }
        this.f = iB;
        this.g = iA;
    }

    @Override
    public final int a() {
        return this.g;
    }

    @Override
    public final int b(Object obj) {
        Integer num = this.l.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override
    public final int c(int i) {
        return f92.a(this.i, i + 1, false, false);
    }

    public final List<i52> d() {
        return Arrays.asList(this.j);
    }

    @Override
    public final int e(int i) {
        return this.h[i];
    }

    @Override
    public final int f(int i) {
        return this.i[i];
    }

    @Override
    public final i52 g(int i) {
        return this.j[i];
    }

    @Override
    public final Object d(int i) {
        return this.k[i];
    }

    @Override
    public final int b(int i) {
        return f92.a(this.h, i + 1, false, false);
    }

    @Override
    public final int b() {
        return this.f;
    }
}
