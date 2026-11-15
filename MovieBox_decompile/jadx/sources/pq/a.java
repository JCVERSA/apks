package pq;

import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f69238a = new a();

    private a() {
    }

    private final String a(String str, String str2) {
        ur.b bVarH;
        String strA;
        vr.a aVarC = c.f69249a.c();
        return (aVarC == null || (bVarH = aVarC.h()) == null || (strA = bVarH.a(str, str2)) == null) ? str2 : strA;
    }

    static String b(a aVar, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        return aVar.a(str, str2);
    }

    public final boolean c() {
        return !Intrinsics.c(b(this, "short_tv_optimize_enable", null, 2, null), "false");
    }
}
