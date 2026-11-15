package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.g1a;
import defpackage.y45;
import java.io.IOException;
import java.net.ProtocolException;
import okio.BufferedSink;
import okio.Okio;

public final class on implements mp0 {
    private final boolean a;

    public on(boolean z) {
        this.a = z;
    }

    @Override
    public final vq1 a(do1 do1Var) throws IOException {
        boolean z;
        vq1.a aVarA;
        y45.j(do1Var, "chain");
        b60 b60VarD = do1Var.d();
        y45.g(b60VarD);
        vp1 vp1VarF = do1Var.f();
        yp1 yp1VarA = vp1VarF.a();
        long jCurrentTimeMillis = System.currentTimeMillis();
        b60VarD.b(vp1VarF);
        if (!ai0.a(vp1VarF.f()) || yp1VarA == null) {
            b60VarD.l();
            z = true;
            aVarA = null;
        } else {
            if (g1a.E("100-continue", vp1VarF.a("Expect"), true)) {
                b60VarD.d();
                aVarA = b60VarD.a(true);
                b60VarD.m();
                z = false;
            } else {
                z = true;
                aVarA = null;
            }
            if (aVarA == null) {
                BufferedSink bufferedSinkBuffer = Okio.buffer(b60VarD.a(vp1VarF));
                yp1VarA.a(bufferedSinkBuffer);
                bufferedSinkBuffer.close();
            } else {
                b60VarD.l();
                if (!b60VarD.f().h()) {
                    b60VarD.k();
                }
            }
        }
        b60VarD.c();
        if (aVarA == null) {
            aVarA = b60VarD.a(false);
            y45.g(aVarA);
            if (z) {
                b60VarD.m();
                z = false;
            }
        }
        vq1 vq1VarA = aVarA.a(vp1VarF).a(b60VarD.f().f()).b(jCurrentTimeMillis).a(System.currentTimeMillis()).a();
        int iD = vq1VarA.d();
        if (iD == 100) {
            vq1.a aVarA2 = b60VarD.a(false);
            y45.g(aVarA2);
            if (z) {
                b60VarD.m();
            }
            vq1VarA = aVarA2.a(vp1VarF).a(b60VarD.f().f()).b(jCurrentTimeMillis).a(System.currentTimeMillis()).a();
            iD = vq1VarA.d();
        }
        b60VarD.b(vq1VarA);
        vq1 vq1VarA2 = (this.a && iD == 101) ? vq1VarA.k().a(g92.c).a() : vq1VarA.k().a(b60VarD.a(vq1VarA)).a();
        if (g1a.E(HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, vq1VarA2.o().a("Connection"), true) || g1a.E(HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, vq1.a(vq1VarA2, "Connection"), true)) {
            b60VarD.k();
        }
        if (iD == 204 || iD == 205) {
            zq1 zq1VarA = vq1VarA2.a();
            if ((zq1VarA != null ? zq1VarA.a() : -1L) > 0) {
                zq1 zq1VarA2 = vq1VarA2.a();
                throw new ProtocolException("HTTP " + iD + " had non-zero Content-Length: " + (zq1VarA2 != null ? Long.valueOf(zq1VarA2.a()) : null));
            }
        }
        return vq1VarA2;
    }
}
