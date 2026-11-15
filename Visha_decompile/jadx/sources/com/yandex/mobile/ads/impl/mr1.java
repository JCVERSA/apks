package com.yandex.mobile.ads.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.text.Regex;

public final class mr1 implements mp0 {
    private final fe1 a;

    public mr1(fe1 fe1Var) {
        y45.j(fe1Var, "client");
        this.a = fe1Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x007b, code lost:
    
        if (r9.intValue() > 0) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final vp1 a(vq1 vq1Var, b60 b60Var) throws IOException {
        String strA;
        gi0.a aVarA;
        String strA2;
        ao1 ao1VarF;
        vs1 vs1VarK = (b60Var == null || (ao1VarF = b60Var.f()) == null) ? null : ao1VarF.k();
        int iD = vq1Var.d();
        String strF = vq1Var.o().f();
        if (iD != 307 && iD != 308) {
            if (iD == 401) {
                return this.a.c().a(vs1VarK, vq1Var);
            }
            if (iD == 421) {
                vq1Var.o().getClass();
                if (b60Var == null || !b60Var.i()) {
                    return null;
                }
                b60Var.f().i();
                return vq1Var.o();
            }
            if (iD == 503) {
                vq1 vq1VarL = vq1Var.l();
                if ((vq1VarL == null || vq1VarL.d() != 503) && (strA2 = vq1.a(vq1Var, "Retry-After")) != null && new Regex("\\d+").matches(strA2)) {
                    Integer numValueOf = Integer.valueOf(strA2);
                    y45.i(numValueOf, "valueOf(...)");
                    if (numValueOf.intValue() == 0) {
                        return vq1Var.o();
                    }
                }
                return null;
            }
            if (iD == 407) {
                y45.g(vs1VarK);
                if (vs1VarK.b().type() == Proxy.Type.HTTP) {
                    return this.a.s().a(vs1VarK, vq1Var);
                }
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            if (iD == 408) {
                if (!this.a.v()) {
                    return null;
                }
                vq1Var.o().getClass();
                vq1 vq1VarL2 = vq1Var.l();
                if (vq1VarL2 != null && vq1VarL2.d() == 408) {
                    return null;
                }
                String strA3 = vq1.a(vq1Var, "Retry-After");
                if (strA3 != null) {
                    if (new Regex("\\d+").matches(strA3)) {
                        Integer numValueOf2 = Integer.valueOf(strA3);
                        y45.i(numValueOf2, "valueOf(...)");
                    }
                    return null;
                }
                return vq1Var.o();
            }
            switch (iD) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return null;
            }
        }
        if (!this.a.l() || (strA = vq1.a(vq1Var, "Location")) == null) {
            return null;
        }
        gi0 gi0VarG = vq1Var.o().g();
        gi0VarG.getClass();
        y45.j(strA, AuthInfo.Component.CODE_LINK);
        y45.j(strA, AuthInfo.Component.CODE_LINK);
        try {
            aVarA = new gi0.a().a(gi0VarG, strA);
        } catch (IllegalArgumentException unused) {
            aVarA = null;
        }
        gi0 gi0VarA = aVarA != null ? aVarA.a() : null;
        if (gi0VarA == null) {
            return null;
        }
        if (!y45.e(gi0VarA.k(), vq1Var.o().g().k()) && !this.a.m()) {
            return null;
        }
        vp1 vp1VarO = vq1Var.o();
        vp1VarO.getClass();
        vp1.a aVar = new vp1.a(vp1VarO);
        if (ai0.a(strF)) {
            int iD2 = vq1Var.d();
            y45.j(strF, "method");
            boolean z = y45.e(strF, "PROPFIND") || iD2 == 308 || iD2 == 307;
            y45.j(strF, "method");
            if (y45.e(strF, "PROPFIND") || iD2 == 308 || iD2 == 307) {
                aVar.a(strF, z ? vq1Var.o().a() : null);
            } else {
                aVar.a(ShareTarget.METHOD_GET, (yp1) null);
            }
            if (!z) {
                aVar.a("Transfer-Encoding");
                aVar.a("Content-Length");
                aVar.a("Content-Type");
            }
        }
        gi0 gi0VarG2 = vq1Var.o().g();
        y45.j(gi0VarG2, "<this>");
        y45.j(gi0VarA, "other");
        if (!y45.e(gi0VarG2.g(), gi0VarA.g()) || gi0VarG2.i() != gi0VarA.i() || !y45.e(gi0VarG2.k(), gi0VarA.k())) {
            aVar.a(RtspHeaders.AUTHORIZATION);
        }
        return aVar.a(gi0VarA).a();
    }

    @Override
    public final vq1 a(do1 do1Var) throws IOException {
        vq1 vq1VarA;
        y45.j(do1Var, "chain");
        vp1 vp1VarF = do1Var.f();
        zn1 zn1VarB = do1Var.b();
        List listK = defpackage.y71.k();
        int i = 0;
        vq1 vq1Var = null;
        while (true) {
            boolean z = true;
            while (true) {
                zn1VarB.a(vp1VarF, z);
                try {
                    if (!zn1VarB.j()) {
                        try {
                            try {
                                vq1VarA = do1Var.a(vp1VarF);
                            } catch (IOException e) {
                                if (a(e, zn1VarB, vp1VarF, !(e instanceof qr))) {
                                    listK = defpackage.i81.K0(listK, e);
                                    zn1VarB.a(true);
                                    z = false;
                                } else {
                                    throw g92.a(e, listK);
                                }
                            }
                        } catch (xs1 e2) {
                            if (a(e2.b(), zn1VarB, vp1VarF, false)) {
                                listK = defpackage.i81.K0(listK, e2.a());
                                zn1VarB.a(true);
                                z = false;
                            } else {
                                throw g92.a(e2.a(), listK);
                            }
                        }
                    } else {
                        throw new IOException("Canceled");
                    }
                    z = false;
                } catch (Throwable th) {
                    zn1VarB.a(true);
                    throw th;
                }
            }
            if (vq1Var != null) {
                vq1VarA = vq1VarA.k().c(vq1Var.k().a((zq1) null).a()).a();
            }
            vq1Var = vq1VarA;
            b60 b60VarG = zn1VarB.g();
            vp1 vp1VarA = a(vq1Var, b60VarG);
            if (vp1VarA == null) {
                if (b60VarG != null && b60VarG.j()) {
                    zn1VarB.n();
                }
                zn1VarB.a(false);
                return vq1Var;
            }
            zq1 zq1VarA = vq1Var.a();
            if (zq1VarA != null) {
                g92.a(zq1VarA);
            }
            i++;
            if (i <= 20) {
                zn1VarB.a(true);
                vp1VarF = vp1VarA;
            } else {
                throw new ProtocolException("Too many follow-up requests: " + i);
            }
        }
    }

    private final boolean a(IOException iOException, zn1 zn1Var, vp1 vp1Var, boolean z) {
        if (this.a.v()) {
            return !(z && (iOException instanceof FileNotFoundException)) && !(iOException instanceof ProtocolException) && (!(iOException instanceof InterruptedIOException) ? ((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException) : !((iOException instanceof SocketTimeoutException) && !z)) && zn1Var.m();
        }
        return false;
    }
}
