package com.yandex.mobile.ads.impl;

import java.util.Collections;
import java.util.List;

final class m32 implements n32 {
    private final hv[] b;
    private final long[] c;

    public m32(hv[] hvVarArr, long[] jArr) {
        this.b = hvVarArr;
        this.c = jArr;
    }

    @Override
    public final long a(int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        long[] jArr = this.c;
        if (i < jArr.length) {
            return jArr[i];
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final List<hv> b(long j) {
        hv hvVar;
        int iB = f92.b(this.c, j, false);
        return (iB == -1 || (hvVar = this.b[iB]) == hv.s) ? Collections.emptyList() : Collections.singletonList(hvVar);
    }

    @Override
    public final int a() {
        return this.c.length;
    }

    @Override
    public final int a(long j) {
        int iA = f92.a(this.c, j, false);
        if (iA < this.c.length) {
            return iA;
        }
        return -1;
    }
}
