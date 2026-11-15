package com.yandex.mobile.ads.impl;

import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import defpackage.g1a;
import defpackage.y45;
import java.io.Closeable;
import java.io.IOException;

public final class dn implements mp0 {

    public static final class a {
        private a() {
        }

        public static final qf0 a(qf0 qf0Var, qf0 qf0Var2) {
            qf0.a aVar = new qf0.a();
            int size = qf0Var.size();
            for (int i = 0; i < size; i++) {
                String strA = qf0Var.a(i);
                String strB = qf0Var.b(i);
                if ((!g1a.E("Warning", strA, true) || !g1a.R(strB, "1", false, 2, null)) && (g1a.E("Content-Length", strA, true) || g1a.E("Content-Encoding", strA, true) || g1a.E("Content-Type", strA, true) || !a(strA) || qf0Var2.a(strA) == null)) {
                    aVar.a(strA, strB);
                }
            }
            int size2 = qf0Var2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String strA2 = qf0Var2.a(i2);
                if (!g1a.E("Content-Length", strA2, true) && !g1a.E("Content-Encoding", strA2, true) && !g1a.E("Content-Type", strA2, true) && a(strA2)) {
                    aVar.a(strA2, qf0Var2.b(i2));
                }
            }
            return aVar.a();
        }

        public a(int i) {
            this();
        }

        public static final vq1 a(vq1 vq1Var) {
            if ((vq1Var != null ? vq1Var.a() : null) == null) {
                return vq1Var;
            }
            vq1Var.getClass();
            return new vq1.a(vq1Var).a((zq1) null).a();
        }

        private static boolean a(String str) {
            return (g1a.E("Connection", str, true) || g1a.E("Keep-Alive", str, true) || g1a.E(RtspHeaders.PROXY_AUTHENTICATE, str, true) || g1a.E("Proxy-Authorization", str, true) || g1a.E("TE", str, true) || g1a.E("Trailers", str, true) || g1a.E("Transfer-Encoding", str, true) || g1a.E("Upgrade", str, true)) ? false : true;
        }
    }

    @Override
    public final vq1 a(do1 do1Var) throws IOException {
        w50 w50VarE;
        y45.j(do1Var, "chain");
        zn1 zn1VarA = do1Var.a();
        gn gnVarA = new gn.a(System.currentTimeMillis(), do1Var.i()).a();
        vp1 vp1VarB = gnVarA.b();
        vq1 vq1VarA = gnVarA.a();
        zn1 zn1Var = zn1VarA != null ? zn1VarA : null;
        if (zn1Var == null || (w50VarE = zn1Var.e()) == null) {
            w50VarE = w50.a;
        }
        if (vp1VarB == null && vq1VarA == null) {
            vq1 vq1VarA2 = new vq1.a().a(do1Var.i()).a(mm1.e).a(504).a("Unsatisfiable Request (only-if-cached)").a(g92.c).b(-1L).a(System.currentTimeMillis()).a();
            w50VarE.getClass();
            y45.j(zn1VarA, NotificationCompat.CATEGORY_CALL);
            y45.j(vq1VarA2, "response");
            return vq1VarA2;
        }
        if (vp1VarB == null) {
            y45.g(vq1VarA);
            vq1VarA.getClass();
            vq1 vq1VarA3 = new vq1.a(vq1VarA).a(a.a(vq1VarA)).a();
            w50VarE.getClass();
            y45.j(zn1VarA, NotificationCompat.CATEGORY_CALL);
            y45.j(vq1VarA3, "response");
            return vq1VarA3;
        }
        if (vq1VarA != null) {
            w50VarE.getClass();
            y45.j(zn1VarA, NotificationCompat.CATEGORY_CALL);
            y45.j(vq1VarA, "cachedResponse");
        }
        vq1 vq1VarA4 = do1Var.a(vp1VarB);
        if (vq1VarA != null) {
            if (vq1VarA4.d() == 304) {
                new vq1.a(vq1VarA).a(a.a(vq1VarA.g(), vq1VarA4.g())).b(vq1VarA4.p()).a(vq1VarA4.n()).a(a.a(vq1VarA)).b(a.a(vq1VarA4)).a();
                zq1 zq1VarA = vq1VarA4.a();
                y45.g(zq1VarA);
                g92.a((Closeable) zq1VarA.c());
                y45.g(null);
                throw null;
            }
            zq1 zq1VarA2 = vq1VarA.a();
            if (zq1VarA2 != null) {
                g92.a(zq1VarA2);
            }
        }
        y45.g(vq1VarA4);
        return new vq1.a(vq1VarA4).a(a.a(vq1VarA)).b(a.a(vq1VarA4)).a();
    }
}
