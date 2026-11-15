package com.transsnet.downloader.ugc.viewmodel;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.k;

public final class UGCForYouViewModel extends t0 {

    private String f57659c;

    private final String f57657a = UGCForYouViewModel.class.getSimpleName();

    private final Lazy f57658b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCForYouViewModel.j();
        }
    });

    private final b0 f57660d = new b0();

    public final fx.a f() {
        return (fx.a) this.f57658b.getValue();
    }

    public static final fx.a j() {
        return (fx.a) kg.c.f63982e.a().h(fx.a.class);
    }

    public final void g(boolean z10) {
        k.d(u0.a(this), null, null, new UGCForYouViewModel$getUGCDownloadForYouList$1(z10, this, null), 3, null);
    }

    public final b0 h() {
        return this.f57660d;
    }

    public final String i() {
        return this.f57659c;
    }

    public final void k(String str) {
        this.f57659c = str;
    }
}
