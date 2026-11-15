package xh;

import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f75336a = new a();

    private a() {
    }

    private final void a(int i10, String str, String str2, boolean z10) {
        if (i10 == 3) {
            wf.a.f74274a.c(str, str2, z10);
            return;
        }
        if (i10 == 4) {
            wf.a.f74274a.p(str, new String[]{str2}, z10);
        } else if (i10 == 5) {
            wf.a.f74274a.x(str, str2, z10);
        } else {
            if (i10 != 6) {
                return;
            }
            wf.a.f74274a.i(str, str2, z10);
        }
    }

    public static void c(a aVar, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 4;
        }
        if ((i11 & 4) != 0) {
            z10 = true;
        }
        aVar.b(str, i10, z10);
    }

    public static void e(a aVar, String str, String str2, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "ad_";
        }
        if ((i11 & 4) != 0) {
            i10 = 3;
        }
        if ((i11 & 8) != 0) {
            z10 = true;
        }
        aVar.d(str, str2, i10, z10);
    }

    public static void g(a aVar, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 3;
        }
        if ((i11 & 4) != 0) {
            z10 = true;
        }
        aVar.f(str, i10, z10);
    }

    public static void i(a aVar, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 3;
        }
        if ((i11 & 4) != 0) {
            z10 = true;
        }
        aVar.h(str, i10, z10);
    }

    public static void k(a aVar, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 3;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        aVar.j(str, i10, z10);
    }

    public static void m(a aVar, String str, String str2, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = 3;
        }
        if ((i11 & 8) != 0) {
            z10 = true;
        }
        aVar.l(str, str2, i10, z10);
    }

    public final void b(String msg, int i10, boolean z10) {
        Intrinsics.h(msg, "msg");
        a(i10, "ad_init", msg, z10);
    }

    public final void d(String tag, String msg, int i10, boolean z10) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        a(i10, tag, msg, z10);
    }

    public final void f(String msg, int i10, boolean z10) {
        Intrinsics.h(msg, "msg");
        a(i10, "ad_ic", msg, z10);
    }

    public final void h(String msg, int i10, boolean z10) {
        Intrinsics.h(msg, "msg");
        a(i10, "ad_ps_d", msg, z10);
    }

    public final void j(String msg, int i10, boolean z10) {
        Intrinsics.h(msg, "msg");
        a(i10, "ad_ps_a", msg, z10);
    }

    public final void l(String tag, String msg, int i10, boolean z10) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        a(i10, tag, msg, z10);
    }
}
