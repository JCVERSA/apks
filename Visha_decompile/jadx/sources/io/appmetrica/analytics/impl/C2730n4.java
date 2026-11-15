package io.appmetrica.analytics.impl;

import android.content.Context;
import android.util.SparseArray;
import androidx.annotation.NonNull;

public final class C2730n4 extends Pc {
    public final Ke a;

    public C2730n4(@NonNull Context context) {
        this(new Ke(C2559g7.a(context).b()));
    }

    @Override
    public final void a(int i) {
        this.a.c(i);
    }

    @Override
    public final int b() {
        return (int) this.a.a(-1L);
    }

    @Override
    public final SparseArray<Oc> c() {
        return new SparseArray<>();
    }

    public C2730n4(Ke ke) {
        this.a = ke;
    }
}
