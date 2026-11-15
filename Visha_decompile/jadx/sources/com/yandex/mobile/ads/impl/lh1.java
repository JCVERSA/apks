package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.hisavana.common.tracking.TrackingKey;
import com.lzy.okgo.model.Progress;
import defpackage.abb;
import defpackage.y45;
import java.util.Locale;
import java.util.Map;
import kotlin.Pair;

public final class lh1 implements u82 {
    private final z62 a;
    private final u62 b;
    private final gq1 c;
    private final s82 d;
    private final Context e;

    public lh1(Context context, o3 o3Var, z62 z62Var) {
        u62 u62Var = new u62(context, o3Var);
        int i = gq1.c;
        this(context, o3Var, z62Var, u62Var, gq1.a.a(), new s82(context));
    }

    @Override
    public final void a(String str) {
        y45.j(str, "url");
        String strA = this.d.a(str);
        int i = pw1.l;
        kh1 kh1Var = new kh1(this.e, strA, new a(str, pw1.a.a().a(this.e), this.b, this.a));
        gq1 gq1Var = this.c;
        Context context = this.e;
        synchronized (gq1Var) {
            y45.j(context, "context");
            y45.j(kh1Var, Progress.REQUEST);
            hd1.a(context).a(kh1Var);
        }
    }

    public lh1(Context context, o3 o3Var, z62 z62Var, u62 u62Var, gq1 gq1Var, s82 s82Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(z62Var, "trackingUrlType");
        y45.j(u62Var, "trackingReporter");
        y45.j(gq1Var, "requestManager");
        y45.j(s82Var, "urlModifier");
        this.a = z62Var;
        this.b = u62Var;
        this.c = gq1Var;
        this.d = s82Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.e = applicationContext;
    }

    public static final class a implements qk.a<xc1> {
        private final String a;
        private final ju1 b;
        private final u62 c;
        private final z62 d;

        public a(String str, ju1 ju1Var, u62 u62Var, z62 z62Var) {
            y45.j(str, "trackingUrl");
            y45.j(u62Var, "trackingReporter");
            y45.j(z62Var, "trackingUrlType");
            this.a = str;
            this.b = ju1Var;
            this.c = u62Var;
            this.d = z62Var;
        }

        @Override
        public final void a(si2 si2Var) {
            y45.j(si2Var, "error");
            Object[] objArr = {this.a, si2Var.toString()};
            int i = sp0.b;
            y45.j(objArr, "args");
            Pair pairA = abb.a("tracking_result", "failure");
            String lowerCase = this.d.name().toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
            Pair pairA2 = abb.a("tracking_url_type", lowerCase);
            String message = si2Var.getMessage();
            if (message == null) {
                message = "Unknown Volley error";
            }
            Map mapQ = kotlin.collections.a.q(pairA, pairA2, abb.a(TrackingKey.ERROR_MESSAGE, message));
            u62 u62Var = this.c;
            op1.b bVar = op1.b.c;
            u62Var.a(mapQ, this.b);
        }

        @Override
        public final void a(Object obj) {
            xc1 xc1Var = (xc1) obj;
            y45.j(xc1Var, "response");
            int i = xc1Var.a;
            Object[] objArr = {this.a, Integer.valueOf(i)};
            int i2 = sp0.b;
            y45.j(objArr, "args");
            Pair pairA = abb.a("tracking_result", "success");
            String lowerCase = this.d.name().toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
            Map mapQ = kotlin.collections.a.q(pairA, abb.a("tracking_url_type", lowerCase), abb.a(TrackingKey.CODE, Integer.valueOf(i)));
            u62 u62Var = this.c;
            op1.b bVar = op1.b.c;
            u62Var.a(mapQ, this.b);
        }
    }
}
