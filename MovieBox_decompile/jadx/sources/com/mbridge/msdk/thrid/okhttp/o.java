package com.mbridge.msdk.thrid.okhttp;

import java.io.IOException;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

public final class o {

    private final b0 f37451a;

    private final f f37452b;

    private final List<Certificate> f37453c;

    private final List<Certificate> f37454d;

    private o(b0 b0Var, f fVar, List<Certificate> list, List<Certificate> list2) {
        this.f37451a = b0Var;
        this.f37452b = fVar;
        this.f37453c = list;
        this.f37454d = list2;
    }

    public static o a(SSLSession sSLSession) throws IOException {
        Certificate[] peerCertificates;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        if ("SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
        f fVarA = f.a(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        if ("NONE".equals(protocol)) {
            throw new IOException("tlsVersion == NONE");
        }
        b0 b0VarA = b0.a(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
            peerCertificates = null;
        }
        List listA = peerCertificates != null ? com.mbridge.msdk.thrid.okhttp.internal.c.a(peerCertificates) : Collections.emptyList();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new o(b0VarA, fVarA, listA, localCertificates != null ? com.mbridge.msdk.thrid.okhttp.internal.c.a(localCertificates) : Collections.emptyList());
    }

    public List<Certificate> b() {
        return this.f37453c;
    }

    public b0 c() {
        return this.f37451a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f37451a.equals(oVar.f37451a) && this.f37452b.equals(oVar.f37452b) && this.f37453c.equals(oVar.f37453c) && this.f37454d.equals(oVar.f37454d);
    }

    public int hashCode() {
        return ((((((this.f37451a.hashCode() + 527) * 31) + this.f37452b.hashCode()) * 31) + this.f37453c.hashCode()) * 31) + this.f37454d.hashCode();
    }

    public f a() {
        return this.f37452b;
    }
}
