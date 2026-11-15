package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class yd2 {
    private final Context a;
    private final sk2 b;
    private final xd2 c;
    private final ArrayList d;

    /* JADX WARN: Illegal instructions before constructor call */
    public yd2(Context context, o3 o3Var, nd2 nd2Var, ia2 ia2Var) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, o3Var, nd2Var, ia2Var, applicationContext, new sk2(applicationContext, o3Var, ia2Var, nd2Var), new xd2());
    }

    public final void a(List<mb2> list, dq1<List<mb2>> dq1Var) {
        y45.j(list, "videoAds");
        y45.j(dq1Var, "listener");
        this.c.getClass();
        wd2 wd2VarA = xd2.a(list);
        this.d.addAll(wd2VarA.a());
        this.b.a(this.a, wd2VarA.b(), new a(this, dq1Var));
    }

    public yd2(Context context, o3 o3Var, nd2 nd2Var, ia2 ia2Var, Context context2, sk2 sk2Var, xd2 xd2Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(nd2Var, "reportParametersProvider");
        y45.j(ia2Var, "requestConfigurationParametersProvider");
        y45.j(context2, "applicationContext");
        y45.j(sk2Var, "wrapperAdsLoadManager");
        y45.j(xd2Var, "videoAdsResponseFactory");
        this.a = context2;
        this.b = sk2Var;
        this.c = xd2Var;
        this.d = new ArrayList();
    }

    public final class a implements dq1<List<? extends mb2>> {
        private final dq1<List<mb2>> a;
        final yd2 b;

        public a(yd2 yd2Var, dq1<List<mb2>> dq1Var) {
            y45.j(dq1Var, "requestListener");
            this.b = yd2Var;
            this.a = dq1Var;
        }

        private final void a() {
            if (!this.b.d.isEmpty()) {
                this.a.a(this.b.d);
                return;
            }
            g50 g50Var = new g50();
            dq1<List<mb2>> dq1Var = this.a;
            y45.j(g50Var, "error");
            String message = g50Var.getMessage();
            if (message == null) {
                message = "Ad request completed successfully, but there are no ads available.";
            }
            dq1Var.a(new sb2(3, message));
        }

        @Override
        public final void a(sb2 sb2Var) {
            y45.j(sb2Var, "error");
            a();
        }

        @Override
        public final void a(List<? extends mb2> list) {
            List<? extends mb2> list2 = list;
            y45.j(list2, "result");
            this.b.c.getClass();
            wd2 wd2VarA = xd2.a(list2);
            this.b.d.addAll(wd2VarA.a());
            List<mb2> listB = wd2VarA.b();
            if (!listB.isEmpty()) {
                this.b.b.a(this.b.a, listB, this);
            } else {
                a();
            }
        }
    }
}
