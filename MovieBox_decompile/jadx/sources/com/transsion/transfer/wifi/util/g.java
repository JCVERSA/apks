package com.transsion.transfer.wifi.util;

import kotlin.jvm.internal.Intrinsics;

public final class g {

    public static final g f53898a = new g();

    private g() {
    }

    public static void b(g gVar, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        gVar.a(str, z10);
    }

    public static void d(g gVar, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        gVar.c(str, z10);
    }

    public static void f(g gVar, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        gVar.e(str, z10);
    }

    public static void h(g gVar, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        gVar.g(str, z10);
    }

    public final void a(String msg, boolean z10) {
        Intrinsics.h(msg, "msg");
        wf.a.f74274a.c("mb_wifi", msg, z10);
    }

    public final void c(String msg, boolean z10) {
        Intrinsics.h(msg, "msg");
        wf.a.f74274a.i("mb_wifi", msg, z10);
    }

    public final void e(String msg, boolean z10) {
        Intrinsics.h(msg, "msg");
        wf.a.f74274a.x("mb_wifi_r", msg, z10);
    }

    public final void g(String msg, boolean z10) {
        Intrinsics.h(msg, "msg");
        wf.a.f74274a.x("mb_wifi", msg, z10);
    }
}
