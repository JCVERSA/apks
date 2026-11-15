package com.yandex.mobile.ads.impl;

import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.jvm.internal.Lambda;
import org.apache.commons.text.StringSubstitutor;

public final class if0 {
    private final q52 a;
    private final po b;
    private final List<Certificate> c;
    private final yi5 d;

    public static final class a {

        public static final class C0320a extends Lambda implements c74 {
            final List<Certificate> b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0320a(List<? extends Certificate> list) {
                super(0);
                this.b = list;
            }

            @Override
            public final Object invoke() {
                return this.b;
            }
        }

        public static if0 a(SSLSession sSLSession) throws IOException {
            List listK;
            y45.j(sSLSession, "<this>");
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite == null) {
                throw new IllegalStateException("cipherSuite == null");
            }
            if (y45.e(cipherSuite, "TLS_NULL_WITH_NULL_NULL") || y45.e(cipherSuite, "SSL_NULL_WITH_NULL_NULL")) {
                throw new IOException("cipherSuite == " + cipherSuite);
            }
            po poVarA = po.b.a(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                throw new IllegalStateException("tlsVersion == null");
            }
            if (y45.e("NONE", protocol)) {
                throw new IOException("tlsVersion == NONE");
            }
            q52.c.getClass();
            q52 q52VarA = q52.a.a(protocol);
            try {
                Certificate[] peerCertificates = sSLSession.getPeerCertificates();
                listK = peerCertificates != null ? g92.a(Arrays.copyOf(peerCertificates, peerCertificates.length)) : defpackage.y71.k();
            } catch (SSLPeerUnverifiedException unused) {
                listK = defpackage.y71.k();
            }
            Certificate[] localCertificates = sSLSession.getLocalCertificates();
            return new if0(q52VarA, poVarA, localCertificates != null ? g92.a(Arrays.copyOf(localCertificates, localCertificates.length)) : defpackage.y71.k(), new C0320a(listK));
        }
    }

    public static final class b extends Lambda implements c74 {
        final c74 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(c74 c74Var) {
            super(0);
            this.b = c74Var;
        }

        @Override
        public final Object invoke() {
            try {
                return (List) this.b.invoke();
            } catch (SSLPeerUnverifiedException unused) {
                return defpackage.y71.k();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public if0(q52 q52Var, po poVar, List<? extends Certificate> list, c74 c74Var) {
        y45.j(q52Var, "tlsVersion");
        y45.j(poVar, "cipherSuite");
        y45.j(list, "localCertificates");
        y45.j(c74Var, "peerCertificatesFn");
        this.a = q52Var;
        this.b = poVar;
        this.c = list;
        this.d = kotlin.b.a(new b(c74Var));
    }

    public final po a() {
        return this.b;
    }

    public final List<Certificate> b() {
        return this.c;
    }

    public final List<Certificate> c() {
        return (List) this.d.getValue();
    }

    public final q52 d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof if0) {
            if0 if0Var = (if0) obj;
            if (if0Var.a == this.a && y45.e(if0Var.b, this.b) && y45.e((List) if0Var.d.getValue(), (List) this.d.getValue()) && y45.e(if0Var.c, this.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() + aa.a((List) this.d.getValue(), (this.b.hashCode() + ((this.a.hashCode() + 527) * 31)) * 31, 31);
    }

    public final String toString() {
        String type;
        String type2;
        List<Certificate> list = (List) this.d.getValue();
        ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
        for (Certificate certificate : list) {
            if (certificate instanceof X509Certificate) {
                type2 = ((X509Certificate) certificate).getSubjectDN().toString();
            } else {
                type2 = certificate.getType();
                y45.i(type2, "getType(...)");
            }
            arrayList.add(type2);
        }
        String string = arrayList.toString();
        q52 q52Var = this.a;
        po poVar = this.b;
        List<Certificate> list2 = this.c;
        ArrayList arrayList2 = new ArrayList(defpackage.z71.v(list2, 10));
        for (Certificate certificate2 : list2) {
            if (certificate2 instanceof X509Certificate) {
                type = ((X509Certificate) certificate2).getSubjectDN().toString();
            } else {
                type = certificate2.getType();
                y45.i(type, "getType(...)");
            }
            arrayList2.add(type);
        }
        return "Handshake{tlsVersion=" + q52Var + " cipherSuite=" + poVar + " peerCertificates=" + string + " localCertificates=" + arrayList2 + StringSubstitutor.DEFAULT_VAR_END;
    }
}
