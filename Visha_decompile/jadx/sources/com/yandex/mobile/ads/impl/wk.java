package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.security.GeneralSecurityException;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

public final class wk extends eo {
    private final k72 a;

    public wk(k72 k72Var) {
        y45.j(k72Var, "trustRootIndex");
        this.a = k72Var;
    }

    @Override
    public final List a(String str, List list) throws SSLPeerUnverifiedException {
        y45.j(list, "chain");
        y45.j(str, "hostname");
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        Object objRemoveFirst = arrayDeque.removeFirst();
        y45.i(objRemoveFirst, "removeFirst(...)");
        arrayList.add(objRemoveFirst);
        boolean z = false;
        for (int i = 0; i < 9; i++) {
            Object obj = arrayList.get(arrayList.size() - 1);
            y45.h(obj, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            X509Certificate x509Certificate = (X509Certificate) obj;
            X509Certificate x509CertificateA = this.a.a(x509Certificate);
            if (x509CertificateA != null) {
                if (arrayList.size() > 1 || !y45.e(x509Certificate, x509CertificateA)) {
                    arrayList.add(x509CertificateA);
                }
                if (y45.e(x509CertificateA.getIssuerDN(), x509CertificateA.getSubjectDN())) {
                    try {
                        x509CertificateA.verify(x509CertificateA.getPublicKey());
                        return arrayList;
                    } catch (GeneralSecurityException unused) {
                    }
                }
                z = true;
            } else {
                Iterator it = arrayDeque.iterator();
                y45.i(it, "iterator(...)");
                while (true) {
                    if (!it.hasNext()) {
                        if (z) {
                            return arrayList;
                        }
                        throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate);
                    }
                    Object next = it.next();
                    y45.h(next, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    X509Certificate x509Certificate2 = (X509Certificate) next;
                    if (y45.e(x509Certificate.getIssuerDN(), x509Certificate2.getSubjectDN())) {
                        try {
                            x509Certificate.verify(x509Certificate2.getPublicKey());
                            it.remove();
                            arrayList.add(x509Certificate2);
                            break;
                        } catch (GeneralSecurityException unused2) {
                            continue;
                        }
                    }
                }
            }
        }
        throw new SSLPeerUnverifiedException("Certificate chain too long: " + arrayList);
    }

    public final boolean equals(Object obj) {
        return obj == this || ((obj instanceof wk) && y45.e(((wk) obj).a, this.a));
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
