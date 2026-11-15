package com.google.android.exoplayer2;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

final class u2 extends a {

    private final int f26105f;

    private final int f26106g;

    private final int[] f26107h;

    private final int[] f26108i;

    private final l3[] f26109j;

    private final Object[] f26110k;

    private final HashMap f26111l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u2(Collection collection, v9.t tVar) {
        super(false, tVar);
        int iT = 0;
        int size = collection.size();
        this.f26107h = new int[size];
        this.f26108i = new int[size];
        this.f26109j = new l3[size];
        this.f26110k = new Object[size];
        this.f26111l = new HashMap();
        Iterator it = collection.iterator();
        int iM = 0;
        int i10 = 0;
        while (it.hasNext()) {
            g2 g2Var = (g2) it.next();
            this.f26109j[i10] = g2Var.b();
            this.f26108i[i10] = iT;
            this.f26107h[i10] = iM;
            iT += this.f26109j[i10].t();
            iM += this.f26109j[i10].m();
            this.f26110k[i10] = g2Var.a();
            this.f26111l.put(this.f26110k[i10], Integer.valueOf(i10));
            i10++;
        }
        this.f26105f = iT;
        this.f26106g = iM;
    }

    @Override
    protected int A(int i10) {
        return com.google.android.exoplayer2.util.p0.h(this.f26108i, i10 + 1, false, false);
    }

    @Override
    protected Object D(int i10) {
        return this.f26110k[i10];
    }

    @Override
    protected int F(int i10) {
        return this.f26107h[i10];
    }

    @Override
    protected int G(int i10) {
        return this.f26108i[i10];
    }

    @Override
    protected l3 J(int i10) {
        return this.f26109j[i10];
    }

    List K() {
        return Arrays.asList(this.f26109j);
    }

    @Override
    public int m() {
        return this.f26106g;
    }

    @Override
    public int t() {
        return this.f26105f;
    }

    @Override
    protected int y(Object obj) {
        Integer num = (Integer) this.f26111l.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override
    protected int z(int i10) {
        return com.google.android.exoplayer2.util.p0.h(this.f26107h, i10 + 1, false, false);
    }
}
