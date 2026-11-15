package com.transsnet.downloader.manager;

import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class StartDownloadHelper {

    private final String f57256a = "StartDownloadHelper";

    private final Lazy f57257b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return StartDownloadHelper.e();
        }
    });

    public final cx.a d() {
        return (cx.a) this.f57257b.getValue();
    }

    public static final cx.a e() {
        return (cx.a) kg.c.f63982e.a().h(cx.a.class);
    }

    public final void f(List list) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new StartDownloadHelper$startDownloadResource$1(list, this, null), 3, null);
    }
}
