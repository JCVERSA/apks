package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.g1a;
import defpackage.y45;
import java.io.IOException;
import java.util.List;
import okio.GzipSource;
import okio.Okio;

public final class dm implements mp0 {
    private final qs a;

    public dm(qs qsVar) {
        y45.j(qsVar, "cookieJar");
        this.a = qsVar;
    }

    @Override
    public final vq1 a(do1 do1Var) throws IOException {
        boolean z;
        zq1 zq1VarA;
        y45.j(do1Var, "chain");
        vp1 vp1VarI = do1Var.i();
        vp1VarI.getClass();
        vp1.a aVar = new vp1.a(vp1VarI);
        yp1 yp1VarA = vp1VarI.a();
        if (yp1VarA != null) {
            cx0 cx0VarB = yp1VarA.b();
            if (cx0VarB != null) {
                aVar.b("Content-Type", cx0VarB.toString());
            }
            long jA = yp1VarA.a();
            if (jA != -1) {
                aVar.b("Content-Length", String.valueOf(jA));
                aVar.a("Transfer-Encoding");
            } else {
                aVar.b("Transfer-Encoding", "chunked");
                aVar.a("Content-Length");
            }
        }
        int i = 0;
        if (vp1VarI.a("Host") == null) {
            aVar.b("Host", g92.a(vp1VarI.g(), false));
        }
        if (vp1VarI.a("Connection") == null) {
            aVar.b("Connection", "Keep-Alive");
        }
        if (vp1VarI.a(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING) == null && vp1VarI.a("Range") == null) {
            aVar.b(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "gzip");
            z = true;
        } else {
            z = false;
        }
        List<os> listA = this.a.a(vp1VarI.g());
        if (!listA.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (Object obj : listA) {
                int i2 = i + 1;
                if (i < 0) {
                    defpackage.y71.u();
                }
                os osVar = (os) obj;
                if (i > 0) {
                    sb.append("; ");
                }
                sb.append(osVar.e());
                sb.append('=');
                sb.append(osVar.f());
                i = i2;
            }
            String string = sb.toString();
            y45.i(string, "toString(...)");
            aVar.b(HttpHeaders.HEAD_KEY_COOKIE, string);
        }
        if (vp1VarI.a("User-Agent") == null) {
            aVar.b("User-Agent", "okhttp/4.9.3");
        }
        vq1 vq1VarA = do1Var.a(aVar.a());
        xh0.a(this.a, vp1VarI.g(), vq1VarA.g());
        vq1.a aVarA = new vq1.a(vq1VarA).a(vp1VarI);
        if (z && g1a.E("gzip", vq1.a(vq1VarA, "Content-Encoding"), true) && xh0.a(vq1VarA) && (zq1VarA = vq1VarA.a()) != null) {
            GzipSource gzipSource = new GzipSource(zq1VarA.c());
            aVarA.a(vq1VarA.g().b().a("Content-Encoding").a("Content-Length").a());
            aVarA.a(new eo1(vq1.a(vq1VarA, "Content-Type"), -1L, Okio.buffer(gzipSource)));
        }
        return aVarA.a();
    }
}
