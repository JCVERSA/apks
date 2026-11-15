package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.wn8;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

public final class o4 {
    private final r4 a;
    private final p4 b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public o4() {
        this(r4.a.a(), new p4());
        int i = r4.e;
    }

    public final String a(Context context) {
        y45.j(context, "context");
        return a(context, this.a.c());
    }

    public final String b(Context context) {
        y45.j(context, "context");
        return a(context, this.a.d());
    }

    private final String a(Context context, List<String> list) {
        this.b.getClass();
        y45.j(context, "context");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        return defpackage.i81.y0(list.subList(list.size() - wn8.g((ju1VarA == null || ju1VarA.e() == 0) ? 5 : ju1VarA.e(), list.size()), list.size()), StringUtils.COMMA, null, null, 0, null, null, 62, null);
    }

    public o4(r4 r4Var, p4 p4Var) {
        y45.j(r4Var, "adIdStorage");
        y45.j(p4Var, "adIdHeaderSizeProvider");
        this.a = r4Var;
        this.b = p4Var;
    }
}
