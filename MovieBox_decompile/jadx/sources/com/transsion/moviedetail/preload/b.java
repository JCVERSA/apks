package com.transsion.moviedetail.preload;

import androidx.p009lifecycle.b0;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b extends am.b {

    private String f45557f;

    private Integer f45558g;

    private boolean f45559h;

    private final Lazy f45560i;

    public static final class a extends dg.a {
        a() {
        }

        @Override
        public void a(String str, String str2) {
            b.this.c(new Pair(str, null));
        }

        @Override
        public void c(Subject subject) {
            if (subject != null) {
                subject.setRefreshViewOnly(b.this.m());
            }
            b.this.d(new Pair("0", subject));
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d10) {
            Intrinsics.h(d10, "d");
            super.onSubscribe(d10);
            b.this.i(d10);
        }
    }

    public b(String subjectId, Integer num, boolean z10) {
        Intrinsics.h(subjectId, "subjectId");
        this.f45557f = subjectId;
        this.f45558g = num;
        this.f45559h = z10;
        this.f45560i = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
            @Override
            public final Object invoke() {
                return b.n();
            }
        });
    }

    private final om.a l() {
        return (om.a) this.f45560i.getValue();
    }

    public static final om.a n() {
        return (om.a) kg.c.f63982e.a().h(om.a.class);
    }

    @Override
    public void h(b0 b0Var) {
        l().g(gg.a.f61067a.a(), this.f45557f, this.f45558g).f(dg.d.f59034a.c()).subscribe(new a());
    }

    public final boolean m() {
        return this.f45559h;
    }

    public final void o(boolean z10) {
        this.f45559h = z10;
    }

    public final void p(Integer num) {
        this.f45558g = num;
    }

    public final void q(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f45557f = str;
    }

    public b(String str, Integer num, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : num, (i10 & 4) != 0 ? false : z10);
    }
}
