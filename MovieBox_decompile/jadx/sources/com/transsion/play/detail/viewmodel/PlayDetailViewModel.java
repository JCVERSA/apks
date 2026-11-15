package com.transsion.play.detail.viewmodel;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kg.c;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

public final class PlayDetailViewModel extends t0 {

    private final Lazy f46034a = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
        @Override
        public final Object invoke() {
            return PlayDetailViewModel.h();
        }
    });

    private final b0 f46035b = new b0();

    public final cn.a e() {
        return (cn.a) this.f46034a.getValue();
    }

    public static final cn.a h() {
        return (cn.a) c.f63982e.a().h(cn.a.class);
    }

    public final void f(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        k.d(u0.a(this), null, null, new PlayDetailViewModel$getSubjectPostCount$1(this, subjectId, null), 3, null);
    }

    public final b0 g() {
        return this.f46035b;
    }
}
