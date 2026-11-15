package com.yandex.mobile.ads.impl;

import defpackage.c74;
import defpackage.ccb;
import defpackage.g1a;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.jvm.internal.Lambda;
import okio.ByteString;

public final class fo {
    public static final fo c = new a().a();
    private final Set<c> a;
    private final eo b;

    public static final class a {
        private final ArrayList a = new ArrayList();

        public final fo a() {
            return new fo(defpackage.i81.g1(this.a), null);
        }
    }

    public static final class b {
        public static String a(X509Certificate x509Certificate) {
            y45.j(x509Certificate, "certificate");
            if (x509Certificate == null) {
                throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
            }
            return "sha256/" + c(x509Certificate).base64();
        }

        public static ByteString b(X509Certificate x509Certificate) {
            y45.j(x509Certificate, "<this>");
            ByteString.Companion companion = ByteString.INSTANCE;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            y45.i(encoded, "getEncoded(...)");
            return ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null).sha1();
        }

        public static ByteString c(X509Certificate x509Certificate) {
            y45.j(x509Certificate, "<this>");
            ByteString.Companion companion = ByteString.INSTANCE;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            y45.i(encoded, "getEncoded(...)");
            return ByteString.Companion.of$default(companion, encoded, 0, 0, 3, null).sha256();
        }
    }

    public static final class c {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            ((c) obj).getClass();
            return y45.e(null, null) && y45.e(null, null) && y45.e(null, null);
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    public static final class d extends Lambda implements c74 {
        final List<Certificate> c;
        final String d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public d(List<? extends Certificate> list, String str) {
            super(0);
            this.c = list;
            this.d = str;
        }

        /* JADX WARN: Code duplicated, block: B:6:0x0012  */
        @Override
        public final Object invoke() throws SSLPeerUnverifiedException {
            List<Certificate> listA;
            eo eoVarA = fo.this.a();
            if (eoVarA != null) {
                listA = eoVarA.a(this.d, this.c);
                if (listA == null) {
                    listA = this.c;
                }
            } else {
                listA = this.c;
            }
            ArrayList arrayList = new ArrayList(defpackage.z71.v(listA, 10));
            for (Certificate certificate : listA) {
                y45.h(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                arrayList.add((X509Certificate) certificate);
            }
            return arrayList;
        }
    }

    public fo(Set<c> set, eo eoVar) {
        y45.j(set, "pins");
        this.a = set;
        this.b = eoVar;
    }

    public final void a(String str, List<? extends Certificate> list) throws SSLPeerUnverifiedException {
        y45.j(str, "hostname");
        y45.j(list, "peerCertificates");
        a(str, new d(list, str));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof fo) {
            fo foVar = (fo) obj;
            if (y45.e(foVar.a, this.a) && y45.e(foVar.b, this.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.a.hashCode() + 1517) * 41;
        eo eoVar = this.b;
        return iHashCode + (eoVar != null ? eoVar.hashCode() : 0);
    }

    public final void a(String str, c74 c74Var) throws SSLPeerUnverifiedException {
        y45.j(str, "hostname");
        y45.j(c74Var, "cleanedPeerCertificatesFn");
        y45.j(str, "hostname");
        Set<c> set = this.a;
        List<c> listK = defpackage.y71.k();
        for (Object obj : set) {
            ((c) obj).getClass();
            y45.j(str, "hostname");
            if (!g1a.R(null, "**.", false, 2, null)) {
                if (!g1a.R(null, "*.", false, 2, null)) {
                    if (y45.e(str, null)) {
                        if (listK.isEmpty()) {
                            listK = new ArrayList();
                        }
                        y45.h(listK, "null cannot be cast to non-null type kotlin.collections.MutableList<T of com.monetization.ads.embedded.okhttp.src.main.kotlin.okhttp3.internal.Util.filterList>");
                        ccb.c(listK).add(obj);
                    }
                } else {
                    throw null;
                }
            } else {
                throw null;
            }
        }
        if (listK.isEmpty()) {
            return;
        }
        List<X509Certificate> list = (List) c74Var.invoke();
        for (X509Certificate x509Certificate : list) {
            Iterator it = listK.iterator();
            ByteString byteStringC = null;
            ByteString byteStringB = null;
            while (it.hasNext()) {
                ((c) it.next()).getClass();
                if (y45.e(null, "sha256")) {
                    if (byteStringC == null) {
                        byteStringC = b.c(x509Certificate);
                    }
                    if (y45.e(null, byteStringC)) {
                        return;
                    }
                } else if (y45.e(null, "sha1")) {
                    if (byteStringB == null) {
                        byteStringB = b.b(x509Certificate);
                    }
                    if (y45.e(null, byteStringB)) {
                        return;
                    }
                } else {
                    throw new AssertionError("unsupported hashAlgorithm: " + ((String) null));
                }
            }
        }
        StringBuilder sb = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
        for (X509Certificate x509Certificate2 : list) {
            sb.append("\n    ");
            sb.append(b.a(x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        for (c cVar : listK) {
            sb.append("\n    ");
            sb.append(cVar);
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        throw new SSLPeerUnverifiedException(string);
    }

    public final eo a() {
        return this.b;
    }

    public final fo a(eo eoVar) {
        y45.j(eoVar, "certificateChainCleaner");
        return y45.e(this.b, eoVar) ? this : new fo(this.a, eoVar);
    }
}
