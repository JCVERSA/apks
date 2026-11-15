package yq;

import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f76390a = new a();

    private a() {
    }

    private final String a(String str) {
        return "shorttv_ad_" + str;
    }

    public static void c(a aVar, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str3 = null;
        }
        aVar.b(str, str2, str3);
    }

    public static void e(a aVar, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str3 = null;
        }
        aVar.d(str, str2, str3);
    }

    public static void g(a aVar, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str3 = null;
        }
        aVar.f(str, str2, str3);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0034  */
    public final void b(String tag, String message, String str) {
        String str2;
        Intrinsics.h(tag, "tag");
        Intrinsics.h(message, "message");
        if (str == null) {
            str2 = message;
        } else {
            if (str.length() <= 0) {
                str = null;
            }
            if (str != null) {
                String str3 = "sceneId=" + str + ", " + message;
                if (str3 == null) {
                    str2 = message;
                } else {
                    str2 = str3;
                }
            } else {
                str2 = message;
            }
        }
        wf.a.C0922a.f(wf.a.f74274a, a(tag), str2, false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0034  */
    public final void d(String tag, String message, String str) {
        String str2;
        Intrinsics.h(tag, "tag");
        Intrinsics.h(message, "message");
        if (str == null) {
            str2 = message;
        } else {
            if (str.length() <= 0) {
                str = null;
            }
            if (str != null) {
                String str3 = "sceneId=" + str + ", " + message;
                if (str3 == null) {
                    str2 = message;
                } else {
                    str2 = str3;
                }
            } else {
                str2 = message;
            }
        }
        wf.a.C0922a.l(wf.a.f74274a, a(tag), str2, false, 4, null);
    }

    public final void f(String tag, String message, String str) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(message, "message");
        if (str != null) {
            if (str.length() <= 0) {
                str = null;
            }
            if (str != null) {
                String str2 = "sceneId=" + str + ", " + message;
                if (str2 != null) {
                    message = str2;
                }
            }
        }
        wf.a.C0922a.r(wf.a.f74274a, a(tag), new String[]{message}, false, 4, null);
    }
}
