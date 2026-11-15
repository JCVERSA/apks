package com.transsion.fission;

import android.content.Context;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class FissionProvider implements kk.a {

    private final Lazy f42958a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return FissionProvider.m();
        }
    });

    public final gk.b l() {
        return (gk.b) this.f42958a.getValue();
    }

    public static final gk.b m() {
        return (gk.b) kg.c.f63982e.a().h(gk.b.class);
    }

    @Override
    public void a(String inviteCode) {
        Intrinsics.h(inviteCode, "inviteCode");
        l.f42971a.c(inviteCode);
    }

    @Override
    public void b(boolean z10) {
        defpackage.c.f16360a.b().putBoolean("kv_task_is_exists", z10);
        wf.a.C0922a.g(wf.a.f74274a, "updatePalmPayTask() ---> isExists = " + z10, false, 2, null);
    }

    @Override
    public void c(boolean z10) {
    }

    @Override
    public String d() {
        return k.f42965a.c();
    }

    @Override
    public void e(Context context) {
        Intrinsics.h(context, "context");
        new ik.b(context).show();
    }

    @Override
    public boolean enable() {
        FissionConfig fissionConfigD = k.f42965a.d();
        String htmlUrl = fissionConfigD != null ? fissionConfigD.getHtmlUrl() : null;
        return !(htmlUrl == null || htmlUrl.length() == 0);
    }

    @Override
    public void f(int i10) {
        if (defpackage.c.f16360a.b().getBoolean("kv_task_is_exists", false)) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new FissionProvider$finishPalmPayTask$1(i10, this, null), 3, null);
        }
    }

    @Override
    public boolean g() {
        defpackage.c cVar = defpackage.c.f16360a;
        return cVar.b().getBoolean("kv_task_is_exists", false) && !cVar.b().getBoolean("kv_task_is_finished", false);
    }

    @Override
    public String h() {
        return l.f42971a.a();
    }

    @Override
    public void i(boolean z10) {
    }
}
