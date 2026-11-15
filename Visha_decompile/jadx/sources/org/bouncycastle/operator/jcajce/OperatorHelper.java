package org.bouncycastle.operator.jcajce;

import defpackage.c35;
import defpackage.cx6;
import defpackage.g1;
import defpackage.gn8;
import defpackage.i95;
import defpackage.k42;
import defpackage.l1;
import defpackage.me5;
import defpackage.nea;
import defpackage.o47;
import defpackage.oa;
import defpackage.s1;
import defpackage.sn6;
import defpackage.wl1;
import defpackage.yu7;
import defpackage.yx6;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.Signature;
import java.security.cert.CertificateException;
import java.security.spec.PSSParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class OperatorHelper {
    public static final Map b;
    public static final Map c;
    public static final Map d;
    public static final Map e;
    public static final Map f;
    public static k42 g;
    public i95 a;

    public static class OpCertificateException extends CertificateException {
        private Throwable cause;

        public OpCertificateException(String str, Throwable th) {
            super(str);
            this.cause = th;
        }

        @Override
        public Throwable getCause() {
            return this.cause;
        }
    }

    static {
        HashMap map = new HashMap();
        b = map;
        HashMap map2 = new HashMap();
        c = map2;
        HashMap map3 = new HashMap();
        d = map3;
        HashMap map4 = new HashMap();
        e = map4;
        HashMap map5 = new HashMap();
        f = map5;
        g = new k42();
        map.put(o47.i, "SHA1");
        map.put(cx6.f, "SHA224");
        map.put(cx6.c, "SHA256");
        map.put(cx6.d, "SHA384");
        map.put(cx6.e, "SHA512");
        map.put(nea.c, "RIPEMD128");
        map.put(nea.b, "RIPEMD160");
        map.put(nea.d, "RIPEMD256");
        map2.put(yu7.F1, "RSA/ECB/PKCS1Padding");
        map2.put(o47.l, "Elgamal/ECB/PKCS1Padding");
        map2.put(yu7.M1, "RSA/ECB/OAEPPadding");
        map2.put(wl1.m, "ECGOST3410");
        l1 l1Var = yu7.A3;
        map3.put(l1Var, "DESEDEWrap");
        map3.put(yu7.B3, "RC2Wrap");
        l1 l1Var2 = cx6.B;
        map3.put(l1Var2, "AESWrap");
        l1 l1Var3 = cx6.K;
        map3.put(l1Var3, "AESWrap");
        l1 l1Var4 = cx6.T;
        map3.put(l1Var4, "AESWrap");
        l1 l1Var5 = yx6.d;
        map3.put(l1Var5, "CamelliaWrap");
        l1 l1Var6 = yx6.e;
        map3.put(l1Var6, "CamelliaWrap");
        l1 l1Var7 = yx6.f;
        map3.put(l1Var7, "CamelliaWrap");
        l1 l1Var8 = me5.d;
        map3.put(l1Var8, "SEEDWrap");
        l1 l1Var9 = yu7.m2;
        map3.put(l1Var9, "DESede");
        map5.put(l1Var, c35.d(192));
        map5.put(l1Var2, c35.d(128));
        map5.put(l1Var3, c35.d(192));
        map5.put(l1Var4, c35.d(256));
        map5.put(l1Var5, c35.d(128));
        map5.put(l1Var6, c35.d(192));
        map5.put(l1Var7, c35.d(256));
        map5.put(l1Var8, c35.d(128));
        map5.put(l1Var9, c35.d(192));
        map4.put(cx6.w, "AES");
        map4.put(cx6.y, "AES");
        map4.put(cx6.H, "AES");
        map4.put(cx6.Q, "AES");
        map4.put(l1Var9, "DESede");
        map4.put(yu7.n2, "RC2");
    }

    public OperatorHelper(i95 i95Var) {
        this.a = i95Var;
    }

    public static String c(oa oaVar) {
        return g.a(oaVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.security.MessageDigest] */
    public MessageDigest a(oa oaVar) throws NoSuchAlgorithmException {
        i95 i95Var;
        String strB;
        try {
            if (oaVar.m().s(cx6.t)) {
                i95Var = this.a;
                strB = "SHAKE256-" + g1.y(oaVar.p()).A();
            } else if (oaVar.m().s(cx6.s)) {
                i95Var = this.a;
                strB = "SHAKE128-" + g1.y(oaVar.p()).A();
            } else {
                i95Var = this.a;
                strB = sn6.b(oaVar.m());
            }
            this = i95Var.b(strB);
            return this;
        } catch (NoSuchAlgorithmException e2) {
            Map map = b;
            if (map.get(oaVar.m()) == null) {
                throw e2;
            }
            return this.a.b((String) map.get(oaVar.m()));
        }
    }

    public Signature b(oa oaVar) {
        Signature signatureD;
        String strC = c(oaVar);
        try {
            signatureD = this.a.d(strC);
        } catch (NoSuchAlgorithmException e2) {
            if (!strC.endsWith("WITHRSAANDMGF1")) {
                throw e2;
            }
            signatureD = this.a.d(strC.substring(0, strC.indexOf(87)) + "WITHRSASSA-PSS");
        }
        if (oaVar.m().s(yu7.P1)) {
            s1 s1VarZ = s1.z(oaVar.p());
            if (d(s1VarZ)) {
                try {
                    AlgorithmParameters algorithmParametersA = this.a.a("PSS");
                    algorithmParametersA.init(s1VarZ.getEncoded());
                    signatureD.setParameter(algorithmParametersA.getParameterSpec(PSSParameterSpec.class));
                } catch (IOException e3) {
                    throw new GeneralSecurityException("unable to process PSS parameters: " + e3.getMessage());
                }
            }
        }
        return signatureD;
    }

    public final boolean d(s1 s1Var) {
        if (s1Var == null || s1Var.size() == 0) {
            return false;
        }
        gn8 gn8VarN = gn8.n(s1Var);
        if (gn8VarN.o().m().s(yu7.N1) && gn8VarN.m().equals(oa.o(gn8VarN.o().p()))) {
            return gn8VarN.p().intValue() != a(gn8VarN.m()).getDigestLength();
        }
        return true;
    }
}
