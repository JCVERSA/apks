package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.fn;
import com.yandex.mobile.ads.impl.or0;
import java.util.Comparator;
import java.util.TreeSet;

public final class or0 implements zm {
    private final long a;
    private final TreeSet<fn> b = new TreeSet<>(new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return or0.a((fn) obj, (fn) obj2);
        }
    });
    private long c;

    public or0(long j) {
        this.a = j;
    }

    public static int a(fn fnVar, fn fnVar2) {
        long j = fnVar.g;
        long j2 = fnVar2.g;
        if (j - j2 != 0) {
            return j < j2 ? -1 : 1;
        }
        if (!fnVar.b.equals(fnVar2.b)) {
            return fnVar.b.compareTo(fnVar2.b);
        }
        long j3 = fnVar.c - fnVar2.c;
        if (j3 == 0) {
            return 0;
        }
        return j3 < 0 ? -1 : 1;
    }

    @Override
    public final void a(sm smVar, fn fnVar) {
        this.b.add(fnVar);
        this.c += fnVar.d;
        while (this.c > this.a && !this.b.isEmpty()) {
            smVar.a(this.b.first());
        }
    }

    @Override
    public final void a(fn fnVar) {
        this.b.remove(fnVar);
        this.c -= fnVar.d;
    }

    @Override
    public final void a(sm smVar, fn fnVar, fn fnVar2) {
        a(fnVar);
        a(smVar, fnVar2);
    }

    @Override
    public final void a(sm smVar, long j) {
        if (j != -1) {
            while (this.c + j > this.a && !this.b.isEmpty()) {
                smVar.a(this.b.first());
            }
        }
    }
}
