package com.transsion.ad.strategy;

import kotlin.jvm.internal.Intrinsics;

public final class j implements androidx.p009lifecycle.f {

    public static final j f41184a = new j();

    private j() {
    }

    @Override
    public void onCreate(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override
    public void onDestroy(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override
    public void onPause(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.c(this, uVar);
    }

    @Override
    public void onResume(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.d(this, uVar);
    }

    @Override
    public void onStart(androidx.p009lifecycle.u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.e(this, owner);
        a.f41174a.a();
    }

    @Override
    public void onStop(androidx.p009lifecycle.u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.f(this, owner);
        a.f41174a.b();
    }
}
