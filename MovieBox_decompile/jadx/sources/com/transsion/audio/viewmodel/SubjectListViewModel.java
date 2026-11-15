package com.transsion.audio.viewmodel;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

public final class SubjectListViewModel extends t0 {

    public static final a f41846c = new a(null);

    private final Lazy f41847a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SubjectListViewModel.j();
        }
    });

    private final Lazy f41848b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SubjectListViewModel.e();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final b0 e() {
        return new b0();
    }

    public final cx.a i() {
        return (cx.a) this.f41847a.getValue();
    }

    public static final cx.a j() {
        return (cx.a) kg.c.f63982e.a().h(cx.a.class);
    }

    public final b0 f() {
        return (b0) this.f41848b.getValue();
    }

    public final void g(boolean z10, String str, String nextPage, int i10, int i11, int i12, int i13) {
        Intrinsics.h(nextPage, "nextPage");
        k.d(u0.a(this), null, null, new SubjectListViewModel$getDownloadList$1(this, str, nextPage, i10, i11, i12, i13, z10, null), 3, null);
    }
}
