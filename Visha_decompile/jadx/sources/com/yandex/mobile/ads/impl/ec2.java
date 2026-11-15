package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ec2 {
    private static final Object b = new Object();
    private static volatile ec2 c;
    public static final int d = 0;
    private final iq1 a;

    public static final class a {
        public static ec2 a(Context context) {
            ec2 ec2Var;
            y45.j(context, "context");
            ec2 ec2Var2 = ec2.c;
            if (ec2Var2 != null) {
                return ec2Var2;
            }
            synchronized (ec2.b) {
                ec2Var = ec2.c;
                if (ec2Var == null) {
                    ec2Var = new ec2(hl2.a(context, 1));
                    ec2.c = ec2Var;
                }
            }
            return ec2Var;
        }
    }

    public ec2(iq1 iq1Var) {
        y45.j(iq1Var, "requestQueue");
        this.a = iq1Var;
    }

    public final void a(Context context, o3 o3Var, ha2 ha2Var, ia2 ia2Var, Object obj, aa2 aa2Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ha2Var, "requestConfiguration");
        y45.j(ia2Var, "requestConfigurationParametersProvider");
        y45.j(obj, "requestTag");
        y45.j(aa2Var, "requestListener");
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ha2Var, "requestConfiguration");
        y45.j(ia2Var, "requestConfigurationParametersProvider");
        y45.j(obj, "requestTag");
        y45.j(aa2Var, "requestListener");
        this.a.a(new ja2(new pa2()).a(context, o3Var, ha2Var, ia2Var, obj, aa2Var));
    }

    public final void a(Context context, o3 o3Var, ia2 ia2Var, mb2 mb2Var, nd2 nd2Var, qk2 qk2Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ia2Var, "requestConfigurationParametersProvider");
        y45.j(mb2Var, "wrapperAd");
        y45.j(nd2Var, "reportParametersProvider");
        y45.j(qk2Var, "requestListener");
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ia2Var, "requestConfigurationParametersProvider");
        y45.j(mb2Var, "wrapperAd");
        y45.j(nd2Var, "reportParametersProvider");
        y45.j(qk2Var, "requestListener");
        this.a.a(new yk2(new pa2(), new rn0()).a(context, o3Var, ia2Var, mb2Var, nd2Var, qk2Var));
    }

    public final void a(Context context, o3 o3Var, oi2 oi2Var, Object obj, qi2 qi2Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(oi2Var, "requestConfiguration");
        y45.j(obj, "requestTag");
        y45.j(qi2Var, "requestListener");
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(oi2Var, "requestConfiguration");
        y45.j(obj, "requestTag");
        y45.j(qi2Var, "requestListener");
        b8 b8Var = new b8();
        ri2 ri2Var = new ri2();
        bq1 bq1Var = new bq1();
        this.a.a(new pi2(b8Var, ri2Var, bq1Var, new hq(bq1Var), new k50(), new kx1()).a(context, o3Var, oi2Var, obj, qi2Var));
    }
}
