package com.transsion.member.history;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

public final class PointsHistoryViewModel extends t0 {

    private final Lazy f45109a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PointsHistoryViewModel.g();
        }
    });

    private final b0 f45110b = new b0();

    public final fm.a f() {
        return (fm.a) this.f45109a.getValue();
    }

    public static final fm.a g() {
        return (fm.a) kg.c.f63982e.a().h(fm.a.class);
    }

    public final void d(String page) {
        Intrinsics.h(page, "page");
        k.d(u0.a(this), y0.b(), null, new PointsHistoryViewModel$fetchHistory$1(this, page, null), 2, null);
    }

    public final b0 e() {
        return this.f45110b;
    }
}
