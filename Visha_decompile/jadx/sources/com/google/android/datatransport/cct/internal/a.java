package com.google.android.datatransport.cct.internal;

import com.transsion.push.PushConstants;
import defpackage.a30;
import defpackage.fa3;
import defpackage.i30;
import defpackage.j30;
import defpackage.nd0;
import defpackage.ob;
import defpackage.sp5;
import defpackage.vp3;
import defpackage.xp5;
import defpackage.y20;
import defpackage.yb7;
import defpackage.zb7;
import defpackage.ze1;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

public final class a implements ze1 {
    public static final ze1 a = new a();

    public static final class C0073a implements yb7 {
        public static final C0073a a = new C0073a();
        public static final vp3 b = vp3.d(PushConstants.PROVIDER_FIELD_SDK_VERSION);
        public static final vp3 c = vp3.d(CommonUrlParts.MODEL);
        public static final vp3 d = vp3.d("hardware");
        public static final vp3 e = vp3.d("device");
        public static final vp3 f = vp3.d("product");
        public static final vp3 g = vp3.d("osBuild");
        public static final vp3 h = vp3.d(CommonUrlParts.MANUFACTURER);
        public static final vp3 i = vp3.d("fingerprint");
        public static final vp3 j = vp3.d(CommonUrlParts.LOCALE);
        public static final vp3 k = vp3.d("country");
        public static final vp3 l = vp3.d("mccMnc");
        public static final vp3 m = vp3.d("applicationBuild");

        @Override
        public void a(ob obVar, zb7 zb7Var) {
            zb7Var.e(b, obVar.m());
            zb7Var.e(c, obVar.j());
            zb7Var.e(d, obVar.f());
            zb7Var.e(e, obVar.d());
            zb7Var.e(f, obVar.l());
            zb7Var.e(g, obVar.k());
            zb7Var.e(h, obVar.h());
            zb7Var.e(i, obVar.e());
            zb7Var.e(j, obVar.g());
            zb7Var.e(k, obVar.c());
            zb7Var.e(l, obVar.i());
            zb7Var.e(m, obVar.b());
        }
    }

    public static final class b implements yb7 {
        public static final b a = new b();
        public static final vp3 b = vp3.d("logRequest");

        @Override
        public void a(nd0 nd0Var, zb7 zb7Var) {
            zb7Var.e(b, nd0Var.c());
        }
    }

    public static final class c implements yb7 {
        public static final c a = new c();
        public static final vp3 b = vp3.d("clientType");
        public static final vp3 c = vp3.d("androidClientInfo");

        @Override
        public void a(ClientInfo clientInfo, zb7 zb7Var) {
            zb7Var.e(b, clientInfo.c());
            zb7Var.e(c, clientInfo.b());
        }
    }

    public static final class d implements yb7 {
        public static final d a = new d();
        public static final vp3 b = vp3.d("eventTimeMs");
        public static final vp3 c = vp3.d("eventCode");
        public static final vp3 d = vp3.d("eventUptimeMs");
        public static final vp3 e = vp3.d("sourceExtension");
        public static final vp3 f = vp3.d("sourceExtensionJsonProto3");
        public static final vp3 g = vp3.d("timezoneOffsetSeconds");
        public static final vp3 h = vp3.d("networkConnectionInfo");

        @Override
        public void a(sp5 sp5Var, zb7 zb7Var) {
            zb7Var.d(b, sp5Var.c());
            zb7Var.e(c, sp5Var.b());
            zb7Var.d(d, sp5Var.d());
            zb7Var.e(e, sp5Var.f());
            zb7Var.e(f, sp5Var.g());
            zb7Var.d(g, sp5Var.h());
            zb7Var.e(h, sp5Var.e());
        }
    }

    public static final class e implements yb7 {
        public static final e a = new e();
        public static final vp3 b = vp3.d("requestTimeMs");
        public static final vp3 c = vp3.d("requestUptimeMs");
        public static final vp3 d = vp3.d("clientInfo");
        public static final vp3 e = vp3.d("logSource");
        public static final vp3 f = vp3.d("logSourceName");
        public static final vp3 g = vp3.d("logEvent");
        public static final vp3 h = vp3.d("qosTier");

        @Override
        public void a(xp5 xp5Var, zb7 zb7Var) {
            zb7Var.d(b, xp5Var.g());
            zb7Var.d(c, xp5Var.h());
            zb7Var.e(d, xp5Var.b());
            zb7Var.e(e, xp5Var.d());
            zb7Var.e(f, xp5Var.e());
            zb7Var.e(g, xp5Var.c());
            zb7Var.e(h, xp5Var.f());
        }
    }

    public static final class f implements yb7 {
        public static final f a = new f();
        public static final vp3 b = vp3.d("networkType");
        public static final vp3 c = vp3.d("mobileSubtype");

        @Override
        public void a(NetworkConnectionInfo networkConnectionInfo, zb7 zb7Var) {
            zb7Var.e(b, networkConnectionInfo.c());
            zb7Var.e(c, networkConnectionInfo.b());
        }
    }

    @Override
    public void a(fa3 fa3Var) {
        b bVar = b.a;
        fa3Var.a(nd0.class, bVar);
        fa3Var.a(a30.class, bVar);
        e eVar = e.a;
        fa3Var.a(xp5.class, eVar);
        fa3Var.a(j30.class, eVar);
        c cVar = c.a;
        fa3Var.a(ClientInfo.class, cVar);
        fa3Var.a(com.google.android.datatransport.cct.internal.b.class, cVar);
        C0073a c0073a = C0073a.a;
        fa3Var.a(ob.class, c0073a);
        fa3Var.a(y20.class, c0073a);
        d dVar = d.a;
        fa3Var.a(sp5.class, dVar);
        fa3Var.a(i30.class, dVar);
        f fVar = f.a;
        fa3Var.a(NetworkConnectionInfo.class, fVar);
        fa3Var.a(com.google.android.datatransport.cct.internal.c.class, fVar);
    }
}
