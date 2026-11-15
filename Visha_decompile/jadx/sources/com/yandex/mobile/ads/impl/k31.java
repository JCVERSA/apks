package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.hunantv.media.player.libnative.ImgoMediaPlayerLib;
import defpackage.abb;
import defpackage.y45;
import java.util.HashMap;
import java.util.Map;

public final class k31 {
    private final o8<?> a;
    private final s01 b;
    private boolean c;
    private boolean d;
    private boolean e;

    public k31(Context context, o8<?> o8Var, o3 o3Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        this.a = o8Var;
        o3Var.q().f();
        this.b = nd.a(context, jn2.a, o3Var.q().b());
        this.c = true;
        this.d = true;
        this.e = true;
    }

    public final void a() {
        if (this.e) {
            a("first_auto_swipe");
            this.e = false;
        }
    }

    public final void b() {
        if (this.c) {
            a("first_click_on_controls");
            this.c = false;
        }
    }

    public final void c() {
        if (this.d) {
            a("first_user_swipe");
            this.d = false;
        }
    }

    private final void a(String str) {
        op1.b bVar = op1.b.P;
        HashMap mapN = kotlin.collections.a.n(abb.a(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_PLAYER_EVENT_TYPE_INT, str));
        f fVarA = this.a.a();
        y45.j(bVar, "reportType");
        y45.j(mapN, "reportData");
        this.b.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapN), fVarA));
    }
}
