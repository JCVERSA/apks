package defpackage;

import java.util.HashMap;
import java.util.Map;

public class k42 {
    public static final Map a;
    public static final Map b;

    static {
        HashMap map = new HashMap();
        a = map;
        HashMap map2 = new HashMap();
        b = map2;
        map.put(yu7.P1, "RSASSA-PSS");
        map.put(h63.d, "ED25519");
        map.put(h63.e, "ED448");
        map.put(new l1("1.2.840.113549.1.1.5"), "SHA1WITHRSA");
        map.put(yu7.T1, "SHA224WITHRSA");
        map.put(yu7.Q1, "SHA256WITHRSA");
        map.put(yu7.R1, "SHA384WITHRSA");
        map.put(yu7.S1, "SHA512WITHRSA");
        map.put(ep0.p, "SHAKE128WITHRSAPSS");
        map.put(ep0.q, "SHAKE256WITHRSAPSS");
        map.put(wl1.n, "GOST3411WITHGOST3410");
        map.put(wl1.o, "GOST3411WITHECGOST3410");
        map.put(xv8.i, "GOST3411-2012-256WITHECGOST3410-2012-256");
        map.put(xv8.j, "GOST3411-2012-512WITHECGOST3410-2012-512");
        map.put(z40.d, "SHA1WITHPLAIN-ECDSA");
        map.put(z40.e, "SHA224WITHPLAIN-ECDSA");
        map.put(z40.f, "SHA256WITHPLAIN-ECDSA");
        map.put(z40.g, "SHA384WITHPLAIN-ECDSA");
        map.put(z40.h, "SHA512WITHPLAIN-ECDSA");
        map.put(z40.j, "SHA3-224WITHPLAIN-ECDSA");
        map.put(z40.k, "SHA3-256WITHPLAIN-ECDSA");
        map.put(z40.l, "SHA3-384WITHPLAIN-ECDSA");
        map.put(z40.m, "SHA3-512WITHPLAIN-ECDSA");
        map.put(z40.i, "RIPEMD160WITHPLAIN-ECDSA");
        map.put(p43.s, "SHA1WITHCVC-ECDSA");
        map.put(p43.t, "SHA224WITHCVC-ECDSA");
        map.put(p43.u, "SHA256WITHCVC-ECDSA");
        map.put(p43.v, "SHA384WITHCVC-ECDSA");
        map.put(p43.w, "SHA512WITHCVC-ECDSA");
        map.put(m55.a, "XMSS");
        map.put(m55.b, "XMSSMT");
        map.put(nea.g, "RIPEMD128WITHRSA");
        map.put(nea.f, "RIPEMD160WITHRSA");
        map.put(nea.h, "RIPEMD256WITHRSA");
        map.put(new l1("1.2.840.113549.1.1.4"), "MD5WITHRSA");
        map.put(new l1("1.2.840.113549.1.1.2"), "MD2WITHRSA");
        map.put(new l1("1.2.840.10040.4.3"), "SHA1WITHDSA");
        map.put(wqc.j5, "SHA1WITHECDSA");
        map.put(wqc.o5, "SHA224WITHECDSA");
        map.put(wqc.r5, "SHA256WITHECDSA");
        map.put(wqc.s5, "SHA384WITHECDSA");
        map.put(wqc.t5, "SHA512WITHECDSA");
        map.put(ep0.r, "SHAKE128WITHECDSA");
        map.put(ep0.s, "SHAKE256WITHECDSA");
        map.put(o47.k, "SHA1WITHRSA");
        map.put(o47.j, "SHA1WITHDSA");
        map.put(cx6.a0, "SHA224WITHDSA");
        map.put(cx6.b0, "SHA256WITHDSA");
        map2.put(o47.i, "SHA1");
        map2.put(cx6.f, "SHA224");
        map2.put(cx6.c, "SHA256");
        map2.put(cx6.d, "SHA384");
        map2.put(cx6.e, "SHA512");
        map2.put(cx6.i, "SHA3-224");
        map2.put(cx6.j, "SHA3-256");
        map2.put(cx6.k, "SHA3-384");
        map2.put(cx6.l, "SHA3-512");
        map2.put(nea.c, "RIPEMD128");
        map2.put(nea.b, "RIPEMD160");
        map2.put(nea.d, "RIPEMD256");
    }

    public static String b(l1 l1Var) {
        String str = (String) b.get(l1Var);
        return str != null ? str : l1Var.B();
    }

    public String a(oa oaVar) {
        x0 x0VarP = oaVar.p();
        if (x0VarP == null || up1.c.r(x0VarP) || !oaVar.m().s(yu7.P1)) {
            Map map = a;
            return map.containsKey(oaVar.m()) ? (String) map.get(oaVar.m()) : oaVar.m().B();
        }
        gn8 gn8VarN = gn8.n(x0VarP);
        oa oaVarO = gn8VarN.o();
        if (!oaVarO.m().s(yu7.N1)) {
            return b(gn8VarN.m().m()) + "WITHRSAAND" + oaVarO.m().B();
        }
        oa oaVarM = gn8VarN.m();
        l1 l1VarM = oa.o(oaVarO.p()).m();
        if (l1VarM.s(oaVarM.m())) {
            return b(oaVarM.m()) + "WITHRSAANDMGF1";
        }
        return b(oaVarM.m()) + "WITHRSAANDMGF1USING" + b(l1VarM);
    }
}
