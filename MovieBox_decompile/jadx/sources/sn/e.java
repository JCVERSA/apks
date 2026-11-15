package sn;

import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f72355a = new e();

    private static f f72356b;

    private e() {
    }

    public static void b(e eVar, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        eVar.a(str, str2, z10);
    }

    public static void d(e eVar, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        eVar.c(str, str2, z10);
    }

    public static void f(e eVar, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        eVar.e(str, str2, z10);
    }

    public static void i(e eVar, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        eVar.h(str, str2, z10);
    }

    public final void a(String tag, String msg, boolean z10) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        f fVar = f72356b;
        if (fVar != null) {
            fVar.b(tag, msg, z10);
        }
    }

    public final void c(String tag, String msg, boolean z10) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        f fVar = f72356b;
        if (fVar != null) {
            fVar.d(tag, msg, z10);
        }
    }

    public final void e(String tag, String msg, boolean z10) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        f fVar = f72356b;
        if (fVar != null) {
            fVar.a(tag, msg, z10);
        }
    }

    public final void g(f callback) {
        Intrinsics.h(callback, "callback");
        f72356b = callback;
    }

    public final void h(String tag, String msg, boolean z10) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        f fVar = f72356b;
        if (fVar != null) {
            fVar.c(tag, msg, z10);
        }
    }
}
