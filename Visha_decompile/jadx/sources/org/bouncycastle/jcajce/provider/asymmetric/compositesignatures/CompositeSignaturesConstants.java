package org.bouncycastle.jcajce.provider.asymmetric.compositesignatures;

import defpackage.l1;
import defpackage.vp6;
import java.util.HashMap;
import java.util.Map;

public abstract class CompositeSignaturesConstants {
    public static final l1[] a;
    public static final HashMap b;
    public static final HashMap c;
    public static final HashMap d;

    public enum CompositeName {
        MLDSA44_RSA2048_PSS_SHA256("MLDSA44-RSA2048-PSS-SHA256"),
        MLDSA44_RSA2048_PKCS15_SHA256("MLDSA44-RSA2048-PKCS15-SHA256"),
        MLDSA44_Ed25519_SHA512("MLDSA44-Ed25519-SHA512"),
        MLDSA44_ECDSA_P256_SHA256("MLDSA44-ECDSA-P256-SHA256"),
        MLDSA44_ECDSA_brainpoolP256r1_SHA256("MLDSA44-ECDSA-brainpoolP256r1-SHA256"),
        MLDSA65_RSA3072_PSS_SHA512("MLDSA65-RSA3072-PSS-SHA512"),
        MLDSA65_RSA3072_PKCS15_SHA512("MLDSA65-RSA3072-PKCS15-SHA512"),
        MLDSA65_ECDSA_brainpoolP256r1_SHA512("MLDSA65-ECDSA-brainpoolP256r1-SHA512"),
        MLDSA65_ECDSA_P256_SHA512("MLDSA65-ECDSA-P256-SHA512"),
        MLDSA65_Ed25519_SHA512("MLDSA65-Ed25519-SHA512"),
        MLDSA87_ECDSA_P384_SHA512("MLDSA87-ECDSA-P384-SHA512"),
        MLDSA87_ECDSA_brainpoolP384r1_SHA512("MLDSA87-ECDSA-brainpoolP384r1-SHA512"),
        MLDSA87_Ed448_SHA512("MLDSA87-Ed448-SHA512"),
        Falcon512_ECDSA_P256_SHA256("Falcon512-ECDSA-P256-SHA256"),
        Falcon512_ECDSA_brainpoolP256r1_SHA256("Falcon512-ECDSA-brainpoolP256r1-SHA256"),
        Falcon512_Ed25519_SHA512("Falcon512-Ed25519-SHA512");

        private final String id;

        CompositeName(String str) {
            this.id = str;
        }

        public String getId() {
            return this.id;
        }
    }

    static {
        l1 l1Var = vp6.T;
        l1 l1Var2 = vp6.U;
        l1 l1Var3 = vp6.V;
        l1 l1Var4 = vp6.W;
        l1 l1Var5 = vp6.X;
        l1 l1Var6 = vp6.Y;
        l1 l1Var7 = vp6.Z;
        l1 l1Var8 = vp6.a0;
        l1 l1Var9 = vp6.b0;
        l1 l1Var10 = vp6.c0;
        l1 l1Var11 = vp6.d0;
        l1 l1Var12 = vp6.e0;
        l1 l1Var13 = vp6.f0;
        l1 l1Var14 = vp6.g0;
        l1 l1Var15 = vp6.h0;
        l1 l1Var16 = vp6.i0;
        a = new l1[]{l1Var, l1Var2, l1Var3, l1Var4, l1Var5, l1Var6, l1Var7, l1Var8, l1Var9, l1Var10, l1Var11, l1Var12, l1Var13, l1Var14, l1Var15, l1Var16};
        HashMap map = new HashMap();
        b = map;
        map.put(CompositeName.MLDSA44_RSA2048_PSS_SHA256, l1Var);
        map.put(CompositeName.MLDSA44_RSA2048_PKCS15_SHA256, l1Var2);
        map.put(CompositeName.MLDSA44_ECDSA_P256_SHA256, l1Var4);
        map.put(CompositeName.MLDSA44_ECDSA_brainpoolP256r1_SHA256, l1Var5);
        map.put(CompositeName.MLDSA44_Ed25519_SHA512, l1Var3);
        map.put(CompositeName.MLDSA65_RSA3072_PSS_SHA512, l1Var6);
        map.put(CompositeName.MLDSA65_RSA3072_PKCS15_SHA512, l1Var7);
        map.put(CompositeName.MLDSA65_ECDSA_P256_SHA512, l1Var8);
        map.put(CompositeName.MLDSA65_ECDSA_brainpoolP256r1_SHA512, l1Var9);
        map.put(CompositeName.MLDSA65_Ed25519_SHA512, l1Var10);
        map.put(CompositeName.MLDSA87_ECDSA_P384_SHA512, l1Var11);
        map.put(CompositeName.MLDSA87_ECDSA_brainpoolP384r1_SHA512, l1Var12);
        map.put(CompositeName.MLDSA87_Ed448_SHA512, l1Var13);
        map.put(CompositeName.Falcon512_ECDSA_P256_SHA256, l1Var14);
        map.put(CompositeName.Falcon512_ECDSA_brainpoolP256r1_SHA256, l1Var15);
        map.put(CompositeName.Falcon512_Ed25519_SHA512, l1Var16);
        c = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            c.put(entry.getValue(), entry.getKey());
        }
        d = new HashMap();
        for (l1 l1Var17 : a) {
            d.put(l1Var17, (CompositeName) c.get(l1Var17));
        }
    }
}
