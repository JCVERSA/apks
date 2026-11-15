package com.yandex.mobile.ads.impl;

import com.alibaba.android.arouter.utils.Consts;
import com.lzy.okgo.cookie.SerializableCookie;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.y45;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import okio.Utf8;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public final class ee1 implements HostnameVerifier {
    public static final ee1 a = new ee1();

    private ee1() {
    }

    public static List a(X509Certificate x509Certificate) {
        y45.j(x509Certificate, "certificate");
        return defpackage.i81.J0(a(x509Certificate, 7), a(x509Certificate, 2));
    }

    @Override
    public final boolean verify(String str, SSLSession sSLSession) {
        y45.j(str, SerializableCookie.HOST);
        y45.j(sSLSession, "session");
        if (str.length() != ((int) Utf8.size$default(str, 0, 0, 3, null))) {
            return false;
        }
        try {
            Certificate certificate = sSLSession.getPeerCertificates()[0];
            y45.h(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            return a(str, (X509Certificate) certificate);
        } catch (SSLException unused) {
            return false;
        }
    }

    private static List a(X509Certificate x509Certificate, int i) {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return defpackage.y71.k();
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && y45.e(list.get(0), Integer.valueOf(i)) && (obj = list.get(1)) != null) {
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return defpackage.y71.k();
        }
    }

    public static boolean a(String str, X509Certificate x509Certificate) {
        y45.j(str, SerializableCookie.HOST);
        y45.j(x509Certificate, "certificate");
        if (g92.a(str)) {
            String strA = jg0.a(str);
            List listA = a(x509Certificate, 7);
            if ((listA instanceof Collection) && listA.isEmpty()) {
                return false;
            }
            Iterator it = listA.iterator();
            while (it.hasNext()) {
                if (y45.e(strA, jg0.a((String) it.next()))) {
                }
            }
            return false;
        }
        if (str.length() == ((int) Utf8.size$default(str, 0, 0, 3, null))) {
            Locale locale = Locale.US;
            y45.i(locale, "US");
            str = str.toLowerCase(locale);
            y45.i(str, "toLowerCase(...)");
        }
        List listA2 = a(x509Certificate, 2);
        if ((listA2 instanceof Collection) && listA2.isEmpty()) {
            return false;
        }
        Iterator it2 = listA2.iterator();
        while (it2.hasNext()) {
            if (a(str, (String) it2.next())) {
            }
        }
        return false;
        return true;
    }

    private static boolean a(String str, String str2) {
        if (str != null && str.length() != 0 && !g1a.R(str, Consts.DOT, false, 2, null) && !g1a.D(str, FileTree.PARENT_DIR, false, 2, null) && str2 != null && str2.length() != 0 && !g1a.R(str2, Consts.DOT, false, 2, null) && !g1a.D(str2, FileTree.PARENT_DIR, false, 2, null)) {
            if (!g1a.D(str, Consts.DOT, false, 2, null)) {
                str = str + Consts.DOT;
            }
            String str3 = str;
            if (!g1a.D(str2, Consts.DOT, false, 2, null)) {
                str2 = str2 + Consts.DOT;
            }
            if (str2.length() == ((int) Utf8.size$default(str2, 0, 0, 3, null))) {
                Locale locale = Locale.US;
                y45.i(locale, "US");
                str2 = str2.toLowerCase(locale);
                y45.i(str2, "toLowerCase(...)");
            }
            if (!j1a.X(str2, "*", false, 2, null)) {
                return y45.e(str3, str2);
            }
            if (!g1a.R(str2, "*.", false, 2, null) || j1a.l0(str2, '*', 1, false, 4, null) != -1 || str3.length() < str2.length() || y45.e("*.", str2)) {
                return false;
            }
            String strSubstring = str2.substring(1);
            y45.i(strSubstring, "substring(...)");
            if (!g1a.D(str3, strSubstring, false, 2, null)) {
                return false;
            }
            int length = str3.length() - strSubstring.length();
            return length <= 0 || j1a.r0(str3, '.', length + (-1), false, 4, null) == -1;
        }
        return false;
    }
}
