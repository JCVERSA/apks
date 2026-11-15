package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.y45;

public final class a0 {
    private final o3 a;
    private final o8<?> b;
    private final tp1 c;
    private final s91 d;
    private final g71 e;
    private final p51 f;
    private final x71 g;

    public a0(o3 o3Var, o8 o8Var, ep epVar, s91 s91Var, g71 g71Var, p51 p51Var, x71 x71Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(epVar, "reporter");
        y45.j(s91Var, "nativeOpenUrlHandlerCreator");
        y45.j(g71Var, "nativeAdViewAdapter");
        y45.j(p51Var, "nativeAdEventController");
        this.a = o3Var;
        this.b = o8Var;
        this.c = epVar;
        this.d = s91Var;
        this.e = g71Var;
        this.f = p51Var;
        this.g = x71Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final z<? extends x> a(Context context, x xVar) {
        y45.j(context, "context");
        y45.j(xVar, "action");
        r91 r91VarA = this.d.a(this.c);
        String strA = xVar.a();
        switch (strA.hashCode()) {
            case -1895850168:
                if (strA.equals("social_action")) {
                    o8<?> o8Var = this.b;
                    o3 o3Var = this.a;
                    x71 x71Var = this.g;
                    o3Var.q().f();
                    hy1 hy1Var = new hy1(context, o8Var, o3Var, x71Var, nd.a(context, jn2.a, o3Var.q().b()));
                    o3 o3Var2 = this.a;
                    o8<?> o8Var2 = this.b;
                    Context applicationContext = context.getApplicationContext();
                    y45.i(applicationContext, "getApplicationContext(...)");
                    y41 y41Var = new y41(context, o3Var2, o8Var2, applicationContext);
                    o3 o3Var3 = this.a;
                    o8<?> o8Var3 = this.b;
                    p51 p51Var = this.f;
                    g71 g71Var = this.e;
                    return new x02(hy1Var, new f12(context, o3Var3, o8Var3, y41Var, p51Var, g71Var, this.d, new k12(new jj0(context, new d91(o8Var3), g71Var.d(), id1.c.a(context).b()), new lj1())));
                }
                return null;
            case -1422015845:
                if (strA.equals("adtune")) {
                    return new kb(new yb(this.f, r91VarA), new v9(context, this.a), this.c);
                }
                return null;
            case -191501435:
                if (strA.equals("feedback")) {
                    return new pa0(new ya0(this.a, this.c, this.e, this.f, new xa0()));
                }
                return null;
            case 94756344:
                if (strA.equals(HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE)) {
                    return new mp(this.c, this.f);
                }
                return null;
            case 629233382:
                if (strA.equals("deeplink")) {
                    o3 o3Var4 = this.a;
                    o8<?> o8Var4 = this.b;
                    return new vy(new yy(o3Var4, o8Var4, this.c, r91VarA, this.f, new dk1(o3Var4, o8Var4)));
                }
                return null;
            default:
                return null;
        }
    }
}
