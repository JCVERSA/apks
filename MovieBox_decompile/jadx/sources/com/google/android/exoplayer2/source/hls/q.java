package com.google.android.exoplayer2.source.hls;

import android.util.SparseArray;
import com.google.android.exoplayer2.util.l0;

public final class q {

    private final SparseArray f25528a = new SparseArray();

    public l0 a(int i10) {
        l0 l0Var = (l0) this.f25528a.get(i10);
        if (l0Var != null) {
            return l0Var;
        }
        l0 l0Var2 = new l0(9223372036854775806L);
        this.f25528a.put(i10, l0Var2);
        return l0Var2;
    }

    public void b() {
        this.f25528a.clear();
    }
}
