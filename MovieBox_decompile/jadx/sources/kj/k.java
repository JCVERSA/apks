package kj;

import androidx.p009lifecycle.g0;
import androidx.p009lifecycle.u;
import kotlin.jvm.internal.Intrinsics;

public final class k implements androidx.p009lifecycle.f {

    public static final k f64034a = new k();

    private static boolean f64035b;

    private k() {
    }

    public final void a() {
        g0.f9280i.a().getLifecycle().a(this);
    }

    public final boolean b() {
        return f64035b;
    }

    public final void c(boolean z10) {
        f64035b = z10;
    }

    @Override
    public void onCreate(u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override
    public void onDestroy(u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override
    public void onPause(u uVar) {
        androidx.p009lifecycle.e.c(this, uVar);
    }

    @Override
    public void onResume(u uVar) {
        androidx.p009lifecycle.e.d(this, uVar);
    }

    @Override
    public void onStart(u uVar) {
        androidx.p009lifecycle.e.e(this, uVar);
    }

    @Override
    public void onStop(u owner) {
        Intrinsics.h(owner, "owner");
        wf.a.C0922a.f(wf.a.f74274a, "DialogSessionManager", "onStop 重置标记为false", false, 4, null);
        f64035b = false;
    }
}
