package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.yandex.mobile.ads.impl.p90;
import defpackage.y45;
import java.util.List;

public final class p90 {
    private final ViewGroup a;
    private st b;
    private final qe2 c;
    private final i90 d;
    private mj e;
    private final ViewTreeObserver.OnPreDrawListener f;

    public p90(o3 o3Var, ViewGroup viewGroup, st stVar, qe2 qe2Var) {
        this(o3Var, viewGroup, stVar, qe2Var, new i90(o3Var));
    }

    public static final boolean a() {
        return true;
    }

    public final void b() {
        mj mjVar = this.e;
        if (mjVar == null) {
            y45.B("contentController");
            mjVar = null;
        }
        mjVar.a();
    }

    public final void a(Context context, o8 o8Var, b02 b02Var, List list) {
        y45.j(context, "context");
        y45.j(o8Var, "response");
        y45.j(b02Var, "nativeAdPrivate");
        y45.j(list, "preloadedDivKitDesigns");
        mj mjVarA = this.d.a(context, o8Var, b02Var, list, this.a, this.b, this.f, this.c);
        this.e = mjVarA;
        mjVarA.a(null, new o90());
    }

    public p90(o3 o3Var, ViewGroup viewGroup, st stVar, qe2 qe2Var, i90 i90Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(viewGroup, "view");
        y45.j(stVar, "adEventListener");
        y45.j(qe2Var, "videoEventController");
        y45.j(i90Var, "contentControllerCreator");
        this.a = viewGroup;
        this.b = stVar;
        this.c = qe2Var;
        this.d = i90Var;
        this.f = new ViewTreeObserver.OnPreDrawListener() {
            @Override
            public final boolean onPreDraw() {
                return p90.a();
            }
        };
    }
}
