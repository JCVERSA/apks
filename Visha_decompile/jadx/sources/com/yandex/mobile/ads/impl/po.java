package com.yandex.mobile.ads.impl;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.g1a;
import defpackage.y45;
import java.util.Comparator;
import java.util.LinkedHashMap;

public final class po {
    public static final b b;
    private static final a c = new a();
    private static final LinkedHashMap d = new LinkedHashMap();
    public static final po e;
    public static final po f;
    public static final po g;
    public static final po h;
    public static final po i;
    public static final po j;
    public static final po k;
    public static final po l;
    public static final po m;
    public static final po n;
    public static final po o;
    public static final po p;
    public static final po q;
    public static final po r;
    public static final po s;
    public static final po t;
    private final String a;

    public static final class a implements Comparator<String> {
        /* JADX WARN: Code duplicated, block: B:13:0x003d A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:14:0x003f A[RETURN, SYNTHETIC] */
        @Override
        public final int compare(String str, String str2) {
            String str3 = str;
            String str4 = str2;
            y45.j(str3, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
            y45.j(str4, "b");
            int iMin = Math.min(str3.length(), str4.length());
            for (int i = 4; i < iMin; i++) {
                char cCharAt = str3.charAt(i);
                char cCharAt2 = str4.charAt(i);
                if (cCharAt != cCharAt2) {
                    if (y45.l(cCharAt, cCharAt2) < 0) {
                        return -1;
                    }
                    return 1;
                }
            }
            int length = str3.length();
            int length2 = str4.length();
            if (length == length2) {
                return 0;
            }
            if (length < length2) {
                return -1;
            }
            return 1;
        }
    }

    public static final class b {
        private b() {
        }

        private static String b(String str) {
            if (g1a.R(str, "TLS_", false, 2, null)) {
                String strSubstring = str.substring(4);
                y45.i(strSubstring, "substring(...)");
                return "SSL_" + strSubstring;
            }
            if (!g1a.R(str, "SSL_", false, 2, null)) {
                return str;
            }
            String strSubstring2 = str.substring(4);
            y45.i(strSubstring2, "substring(...)");
            return "TLS_" + strSubstring2;
        }

        public final synchronized po a(String str) {
            po poVar;
            try {
                y45.j(str, "javaName");
                poVar = (po) ((LinkedHashMap) po.d).get(str);
                if (poVar == null) {
                    poVar = (po) ((LinkedHashMap) po.d).get(b(str));
                    if (poVar == null) {
                        poVar = new po(str, 0);
                    }
                    po.d.put(str, poVar);
                }
            } catch (Throwable th) {
                throw th;
            }
            return poVar;
        }

        public b(int i) {
            this();
        }
    }

    static {
        int i2 = 0;
        b = new b(i2);
        po poVarA = oo.a("SSL_RSA_WITH_DES_CBC_SHA", oo.a("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", oo.a("SSL_RSA_WITH_RC4_128_SHA", oo.a("SSL_RSA_WITH_RC4_128_MD5", oo.a("SSL_RSA_EXPORT_WITH_RC4_40_MD5", oo.a("SSL_RSA_WITH_NULL_SHA", oo.a("SSL_RSA_WITH_NULL_MD5", new po("SSL_RSA_WITH_NULL_MD5", i2), "SSL_RSA_WITH_NULL_SHA", 0), "SSL_RSA_EXPORT_WITH_RC4_40_MD5", 0), "SSL_RSA_WITH_RC4_128_MD5", 0), "SSL_RSA_WITH_RC4_128_SHA", 0), "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 0), "SSL_RSA_WITH_DES_CBC_SHA", 0), "SSL_RSA_WITH_3DES_EDE_CBC_SHA", 0);
        d.put("SSL_RSA_WITH_3DES_EDE_CBC_SHA", poVarA);
        e = poVarA;
        d.put("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", oo.a("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", oo.a("SSL_DHE_RSA_WITH_DES_CBC_SHA", oo.a("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", oo.a("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", oo.a("SSL_DHE_DSS_WITH_DES_CBC_SHA", oo.a("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", new po("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", i2), "SSL_DHE_DSS_WITH_DES_CBC_SHA", 0), "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 0), "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 0), "SSL_DHE_RSA_WITH_DES_CBC_SHA", 0), "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 0), "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 0));
        po poVarA2 = oo.a("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", oo.a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", oo.a("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", oo.a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", oo.a("TLS_KRB5_WITH_RC4_128_MD5", oo.a("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", oo.a("TLS_KRB5_WITH_DES_CBC_MD5", oo.a("TLS_KRB5_WITH_RC4_128_SHA", oo.a("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", oo.a("TLS_KRB5_WITH_DES_CBC_SHA", oo.a("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", oo.a("SSL_DH_anon_WITH_DES_CBC_SHA", oo.a("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", oo.a("SSL_DH_anon_WITH_RC4_128_MD5", new po("SSL_DH_anon_WITH_RC4_128_MD5", i2), "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 0), "SSL_DH_anon_WITH_DES_CBC_SHA", 0), "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 0), "TLS_KRB5_WITH_DES_CBC_SHA", 0), "TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 0), "TLS_KRB5_WITH_RC4_128_SHA", 0), "TLS_KRB5_WITH_DES_CBC_MD5", 0), "TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 0), "TLS_KRB5_WITH_RC4_128_MD5", 0), "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 0), "TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 0), "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 0), "TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 0), "TLS_RSA_WITH_AES_128_CBC_SHA", 0);
        d.put("TLS_RSA_WITH_AES_128_CBC_SHA", poVarA2);
        f = poVarA2;
        d.put("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", oo.a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", new po("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", i2), "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 0));
        po poVarA3 = oo.a("TLS_DH_anon_WITH_AES_128_CBC_SHA", new po("TLS_DH_anon_WITH_AES_128_CBC_SHA", i2), "TLS_RSA_WITH_AES_256_CBC_SHA", 0);
        d.put("TLS_RSA_WITH_AES_256_CBC_SHA", poVarA3);
        g = poVarA3;
        d.put("TLS_DH_anon_WITH_AES_256_CBC_SHA256", oo.a("TLS_DH_anon_WITH_AES_128_CBC_SHA256", oo.a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", oo.a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", oo.a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", oo.a("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", oo.a("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", oo.a("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", oo.a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", oo.a("TLS_RSA_WITH_AES_256_CBC_SHA256", oo.a("TLS_RSA_WITH_AES_128_CBC_SHA256", oo.a("TLS_RSA_WITH_NULL_SHA256", oo.a("TLS_DH_anon_WITH_AES_256_CBC_SHA", oo.a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", oo.a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", new po("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", i2), "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 0), "TLS_DH_anon_WITH_AES_256_CBC_SHA", 0), "TLS_RSA_WITH_NULL_SHA256", 0), "TLS_RSA_WITH_AES_128_CBC_SHA256", 0), "TLS_RSA_WITH_AES_256_CBC_SHA256", 0), "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 0), "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 0), "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 0), "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 0), "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 0), "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 0), "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 0), "TLS_DH_anon_WITH_AES_128_CBC_SHA256", 0), "TLS_DH_anon_WITH_AES_256_CBC_SHA256", 0));
        po poVarA4 = oo.a("TLS_RSA_WITH_SEED_CBC_SHA", oo.a("TLS_PSK_WITH_AES_256_CBC_SHA", oo.a("TLS_PSK_WITH_AES_128_CBC_SHA", oo.a("TLS_PSK_WITH_3DES_EDE_CBC_SHA", oo.a("TLS_PSK_WITH_RC4_128_SHA", oo.a("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", oo.a("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", oo.a("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", new po("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", i2), "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 0), "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 0), "TLS_PSK_WITH_RC4_128_SHA", 0), "TLS_PSK_WITH_3DES_EDE_CBC_SHA", 0), "TLS_PSK_WITH_AES_128_CBC_SHA", 0), "TLS_PSK_WITH_AES_256_CBC_SHA", 0), "TLS_RSA_WITH_SEED_CBC_SHA", 0), "TLS_RSA_WITH_AES_128_GCM_SHA256", 0);
        d.put("TLS_RSA_WITH_AES_128_GCM_SHA256", poVarA4);
        h = poVarA4;
        po poVar = new po("TLS_RSA_WITH_AES_256_GCM_SHA384", i2);
        d.put("TLS_RSA_WITH_AES_256_GCM_SHA384", poVar);
        i = poVar;
        d.put("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", oo.a("TLS_DH_anon_WITH_AES_256_GCM_SHA384", oo.a("TLS_DH_anon_WITH_AES_128_GCM_SHA256", oo.a("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", oo.a("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", oo.a("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", oo.a("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", new po("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", i2), "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 0), "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 0), "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 0), "TLS_DH_anon_WITH_AES_128_GCM_SHA256", 0), "TLS_DH_anon_WITH_AES_256_GCM_SHA384", 0), "TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 0));
        d.put("TLS_ECDHE_RSA_WITH_NULL_SHA", oo.a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", oo.a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", oo.a("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", oo.a("TLS_ECDH_RSA_WITH_RC4_128_SHA", oo.a("TLS_ECDH_RSA_WITH_NULL_SHA", oo.a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", oo.a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", oo.a("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", oo.a("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", oo.a("TLS_ECDHE_ECDSA_WITH_NULL_SHA", oo.a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", oo.a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", oo.a("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", oo.a("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", oo.a("TLS_ECDH_ECDSA_WITH_NULL_SHA", oo.a("TLS_FALLBACK_SCSV", new po("TLS_FALLBACK_SCSV", i2), "TLS_ECDH_ECDSA_WITH_NULL_SHA", 0), "TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 0), "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 0), "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 0), "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 0), "TLS_ECDHE_ECDSA_WITH_NULL_SHA", 0), "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 0), "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 0), "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 0), "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 0), "TLS_ECDH_RSA_WITH_NULL_SHA", 0), "TLS_ECDH_RSA_WITH_RC4_128_SHA", 0), "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 0), "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 0), "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 0), "TLS_ECDHE_RSA_WITH_NULL_SHA", 0));
        po poVarA5 = oo.a("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", oo.a("TLS_ECDHE_RSA_WITH_RC4_128_SHA", new po("TLS_ECDHE_RSA_WITH_RC4_128_SHA", i2), "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 0), "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 0);
        d.put("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", poVarA5);
        j = poVarA5;
        po poVar2 = new po("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", i2);
        d.put("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", poVar2);
        k = poVar2;
        d.put("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", oo.a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", oo.a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", oo.a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", oo.a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", oo.a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", oo.a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", oo.a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", oo.a("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", oo.a("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", oo.a("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", oo.a("TLS_ECDH_anon_WITH_RC4_128_SHA", oo.a("TLS_ECDH_anon_WITH_NULL_SHA", new po("TLS_ECDH_anon_WITH_NULL_SHA", i2), "TLS_ECDH_anon_WITH_RC4_128_SHA", 0), "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 0), "TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 0), "TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 0), "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 0), "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 0), "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 0), "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 0), "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 0), "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 0), "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 0), "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 0));
        po poVar3 = new po("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", i2);
        d.put("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", poVar3);
        l = poVar3;
        po poVar4 = new po("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", i2);
        d.put("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", poVar4);
        m = poVar4;
        po poVarA6 = oo.a("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", oo.a("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", new po("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", i2), "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 0), "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 0);
        d.put("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", poVarA6);
        n = poVarA6;
        po poVar5 = new po("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", i2);
        d.put("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", poVar5);
        o = poVar5;
        po poVarA7 = oo.a("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", oo.a("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", oo.a("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", oo.a("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", new po("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", i2), "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 0), "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 0), "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 0), "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 0);
        d.put("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", poVarA7);
        p = poVarA7;
        po poVar6 = new po("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", i2);
        d.put("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", poVar6);
        q = poVar6;
        po poVarA8 = oo.a("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", oo.a("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", new po("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", i2), "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", 0), "TLS_AES_128_GCM_SHA256", 0);
        d.put("TLS_AES_128_GCM_SHA256", poVarA8);
        r = poVarA8;
        po poVar7 = new po("TLS_AES_256_GCM_SHA384", i2);
        d.put("TLS_AES_256_GCM_SHA384", poVar7);
        s = poVar7;
        po poVar8 = new po("TLS_CHACHA20_POLY1305_SHA256", i2);
        d.put("TLS_CHACHA20_POLY1305_SHA256", poVar8);
        t = poVar8;
        d.put("TLS_AES_128_CCM_8_SHA256", oo.a("TLS_AES_128_CCM_SHA256", new po("TLS_AES_128_CCM_SHA256", i2), "TLS_AES_128_CCM_8_SHA256", 0));
    }

    private po(String str) {
        this.a = str;
    }

    public final String c() {
        return this.a;
    }

    public final String toString() {
        return this.a;
    }

    public po(String str, int i2) {
        this(str);
    }
}
