package com.transsion.home.viewmodel;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

public final class PlayListViewModel extends t0 {

    private final yk.b f44467a = (yk.b) kg.c.f63982e.a().h(yk.b.class);

    private final Lazy f44468b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PlayListViewModel.h();
        }
    });

    private int f44469c = 1;

    private int f44470d = 8;

    public static final androidx.p009lifecycle.b0 h() {
        return new androidx.p009lifecycle.b0();
    }

    public final int e() {
        return this.f44469c;
    }

    public final void f(String label, String category, String recType, String topIds, int i10) {
        Intrinsics.h(label, "label");
        Intrinsics.h(category, "category");
        Intrinsics.h(recType, "recType");
        Intrinsics.h(topIds, "topIds");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new PlayListViewModel$getPlayList$1(this, label, category, recType, topIds, i10, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 g() {
        return (androidx.p009lifecycle.b0) this.f44468b.getValue();
    }

    public final void i(int i10) {
        this.f44469c = i10;
    }
}
