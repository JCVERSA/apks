package com.transsion.shorttv._channel.ui.viewmodel;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

public final class ShortTvPlayListViewModel extends t0 {

    private final rq.a f50633a = (rq.a) kg.c.f63982e.a().h(rq.a.class);

    private final Lazy f50634b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTvPlayListViewModel.h();
        }
    });

    private int f50635c = 1;

    private int f50636d = 8;

    public static final b0 h() {
        return new b0();
    }

    public final int e() {
        return this.f50635c;
    }

    public final void f(String label, String category, String recType, String topIds, int i10) {
        Intrinsics.h(label, "label");
        Intrinsics.h(category, "category");
        Intrinsics.h(recType, "recType");
        Intrinsics.h(topIds, "topIds");
        k.d(u0.a(this), y0.b(), null, new ShortTvPlayListViewModel$getPlayList$1(this, label, category, recType, topIds, i10, null), 2, null);
    }

    public final b0 g() {
        return (b0) this.f50634b.getValue();
    }

    public final void i(int i10) {
        this.f50635c = i10;
    }
}
