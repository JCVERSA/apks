package com.yandex.mobile.ads.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

final class fk2 implements n32 {
    private final List<bk2> b;
    private final long[] c;
    private final long[] d;

    public fk2(ArrayList arrayList) {
        this.b = Collections.unmodifiableList(new ArrayList(arrayList));
        this.c = new long[arrayList.size() * 2];
        for (int i = 0; i < arrayList.size(); i++) {
            bk2 bk2Var = (bk2) arrayList.get(i);
            int i2 = i * 2;
            long[] jArr = this.c;
            jArr[i2] = bk2Var.b;
            jArr[i2 + 1] = bk2Var.c;
        }
        long[] jArr2 = this.c;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.d = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    @Override
    public final long a(int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        long[] jArr = this.d;
        if (i < jArr.length) {
            return jArr[i];
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final List<hv> b(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < this.b.size(); i++) {
            long[] jArr = this.c;
            int i2 = i * 2;
            if (jArr[i2] <= j && j < jArr[i2 + 1]) {
                bk2 bk2Var = this.b.get(i);
                hv hvVar = bk2Var.a;
                if (hvVar.f == -3.4028235E38f) {
                    arrayList2.add(bk2Var);
                } else {
                    arrayList.add(hvVar);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return fk2.a((bk2) obj, (bk2) obj2);
            }
        });
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            arrayList.add(((bk2) arrayList2.get(i3)).a.a().a(1, (-1) - i3).a());
        }
        return arrayList;
    }

    @Override
    public final int a() {
        return this.d.length;
    }

    @Override
    public final int a(long j) {
        int iA = f92.a(this.d, j, false);
        if (iA < this.d.length) {
            return iA;
        }
        return -1;
    }

    public static int a(bk2 bk2Var, bk2 bk2Var2) {
        return Long.compare(bk2Var.b, bk2Var2.b);
    }
}
