package org.bouncycastle.jcajce.provider.asymmetric.compositesignatures;

import defpackage.b40;
import defpackage.g63;
import defpackage.l1;
import defpackage.nea;
import defpackage.np1;
import defpackage.oa;
import defpackage.og8;
import defpackage.oqc;
import defpackage.qe3;
import defpackage.s0;
import defpackage.s1;
import defpackage.s1a;
import defpackage.sx8;
import defpackage.wp1;
import defpackage.wqc;
import defpackage.yu7;
import defpackage.za0;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.jcajce.CompositePrivateKey;
import org.bouncycastle.jcajce.CompositePublicKey;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public class a extends za0 {
    public static final oa a = new oa(b40.u1);
    public static final oa b = new oa(b40.v1);
    public static final oa c = new oa(b40.w1);
    public static final oa d = new oa(b40.r1);
    public static final oa e = new oa(g63.d);
    public static final oa f;
    public static final oa g;
    public static final oa h;
    public static final oa i;
    public static final oa j;
    public static final oa k;

    public static class C0432a {
        public static final int[] a;

        static {
            int[] iArr = new int[CompositeSignaturesConstants.CompositeName.values().length];
            a = iArr;
            try {
                iArr[CompositeSignaturesConstants.CompositeName.MLDSA44_Ed25519_SHA512.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.MLDSA65_Ed25519_SHA512.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.MLDSA87_Ed448_SHA512.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.MLDSA44_RSA2048_PSS_SHA256.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.MLDSA44_RSA2048_PKCS15_SHA256.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.MLDSA65_RSA3072_PSS_SHA512.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.MLDSA65_RSA3072_PKCS15_SHA512.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.MLDSA44_ECDSA_P256_SHA256.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.MLDSA44_ECDSA_brainpoolP256r1_SHA256.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.MLDSA65_ECDSA_P256_SHA512.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.MLDSA65_ECDSA_brainpoolP256r1_SHA512.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.MLDSA87_ECDSA_P384_SHA512.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.MLDSA87_ECDSA_brainpoolP384r1_SHA512.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.Falcon512_Ed25519_SHA512.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.Falcon512_ECDSA_P256_SHA256.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[CompositeSignaturesConstants.CompositeName.Falcon512_ECDSA_brainpoolP256r1_SHA256.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    static {
        l1 l1Var = wqc.m5;
        f = new oa(l1Var, new oqc(sx8.H));
        g = new oa(l1Var, new oqc(nea.u));
        h = new oa(yu7.F1);
        i = new oa(g63.e);
        j = new oa(l1Var, new oqc(sx8.A));
        k = new oa(l1Var, new oqc(nea.y));
    }

    @Override
    public PublicKey a(s1a s1aVar) throws IOException {
        s1 s1VarZ = s1.z(s1aVar.o().x());
        l1 l1VarM = s1aVar.m().m();
        try {
            List listC = c(l1VarM);
            s0[] s0VarArr = new s0[s1VarZ.size()];
            for (int i2 = 0; i2 < s1VarZ.size(); i2++) {
                if (s1VarZ.A(i2) instanceof wp1) {
                    s0VarArr[i2] = new np1(((wp1) s1VarZ.A(i2)).z());
                } else {
                    s0VarArr[i2] = (np1) s1VarZ.A(i2);
                }
            }
            X509EncodedKeySpec[] x509EncodedKeySpecArrD = d(l1VarM, s0VarArr);
            PublicKey[] publicKeyArr = new PublicKey[s1VarZ.size()];
            for (int i3 = 0; i3 < s1VarZ.size(); i3++) {
                publicKeyArr[i3] = ((KeyFactory) listC.get(i3)).generatePublic(x509EncodedKeySpecArrD[i3]);
            }
            return new CompositePublicKey(l1VarM, publicKeyArr);
        } catch (GeneralSecurityException e2) {
            throw qe3.c(e2.getMessage(), e2);
        }
    }

    @Override
    public PrivateKey b(og8 og8Var) throws IOException {
        s1 s1VarZ = s1.z(og8Var.u());
        l1 l1VarM = og8Var.p().m();
        try {
            List listC = c(l1VarM);
            PrivateKey[] privateKeyArr = new PrivateKey[s1VarZ.size()];
            for (int i2 = 0; i2 < s1VarZ.size(); i2++) {
                privateKeyArr[i2] = ((KeyFactory) listC.get(i2)).generatePrivate(new PKCS8EncodedKeySpec(og8.n(s1VarZ.A(i2)).getEncoded()));
            }
            return new CompositePrivateKey(l1VarM, privateKeyArr);
        } catch (GeneralSecurityException e2) {
            throw qe3.c(e2.getMessage(), e2);
        }
    }

    public final List c(l1 l1Var) {
        String str;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        switch (C0432a.a[((CompositeSignaturesConstants.CompositeName) CompositeSignaturesConstants.c.get(l1Var)).ordinal()]) {
            case 1:
            case 2:
                arrayList2.add("Dilithium");
                arrayList2.add("Ed25519");
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(0), BouncyCastleProvider.PROVIDER_NAME));
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(1), BouncyCastleProvider.PROVIDER_NAME));
                return Collections.unmodifiableList(arrayList);
            case 3:
                arrayList2.add("Dilithium");
                str = "Ed448";
                arrayList2.add(str);
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(0), BouncyCastleProvider.PROVIDER_NAME));
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(1), BouncyCastleProvider.PROVIDER_NAME));
                return Collections.unmodifiableList(arrayList);
            case 4:
            case 5:
            case 6:
            case 7:
                arrayList2.add("Dilithium");
                str = "RSA";
                arrayList2.add(str);
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(0), BouncyCastleProvider.PROVIDER_NAME));
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(1), BouncyCastleProvider.PROVIDER_NAME));
                return Collections.unmodifiableList(arrayList);
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                arrayList2.add("Dilithium");
                arrayList2.add("ECDSA");
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(0), BouncyCastleProvider.PROVIDER_NAME));
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(1), BouncyCastleProvider.PROVIDER_NAME));
                return Collections.unmodifiableList(arrayList);
            case 14:
                arrayList2.add("Falcon");
                arrayList2.add("Ed25519");
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(0), BouncyCastleProvider.PROVIDER_NAME));
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(1), BouncyCastleProvider.PROVIDER_NAME));
                return Collections.unmodifiableList(arrayList);
            case 15:
            case 16:
                arrayList2.add("Falcon");
                arrayList2.add("ECDSA");
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(0), BouncyCastleProvider.PROVIDER_NAME));
                arrayList.add(KeyFactory.getInstance((String) arrayList2.get(1), BouncyCastleProvider.PROVIDER_NAME));
                return Collections.unmodifiableList(arrayList);
            default:
                throw new IllegalArgumentException("Cannot create KeyFactories. Unsupported algorithm identifier.");
        }
    }

    public final X509EncodedKeySpec[] d(l1 l1Var, s0[] s0VarArr) {
        X509EncodedKeySpec[] x509EncodedKeySpecArr = new X509EncodedKeySpec[s0VarArr.length];
        s1a[] s1aVarArr = new s1a[s0VarArr.length];
        switch (C0432a.a[((CompositeSignaturesConstants.CompositeName) CompositeSignaturesConstants.c.get(l1Var)).ordinal()]) {
            case 1:
                s1aVarArr[0] = new s1a(a, s0VarArr[0]);
                s1aVarArr[1] = new s1a(e, s0VarArr[1]);
                break;
            case 2:
                s1aVarArr[0] = new s1a(b, s0VarArr[0]);
                s1aVarArr[1] = new s1a(e, s0VarArr[1]);
                break;
            case 3:
                s1aVarArr[0] = new s1a(c, s0VarArr[0]);
                s1aVarArr[1] = new s1a(i, s0VarArr[1]);
                break;
            case 4:
            case 5:
                s1aVarArr[0] = new s1a(a, s0VarArr[0]);
                s1aVarArr[1] = new s1a(h, s0VarArr[1]);
                break;
            case 6:
            case 7:
                s1aVarArr[0] = new s1a(b, s0VarArr[0]);
                s1aVarArr[1] = new s1a(h, s0VarArr[1]);
                break;
            case 8:
                s1aVarArr[0] = new s1a(a, s0VarArr[0]);
                s1aVarArr[1] = new s1a(f, s0VarArr[1]);
                break;
            case 9:
                s1aVarArr[0] = new s1a(a, s0VarArr[0]);
                s1aVarArr[1] = new s1a(g, s0VarArr[1]);
                break;
            case 10:
                s1aVarArr[0] = new s1a(b, s0VarArr[0]);
                s1aVarArr[1] = new s1a(f, s0VarArr[1]);
                break;
            case 11:
                s1aVarArr[0] = new s1a(b, s0VarArr[0]);
                s1aVarArr[1] = new s1a(g, s0VarArr[1]);
                break;
            case 12:
                s1aVarArr[0] = new s1a(c, s0VarArr[0]);
                s1aVarArr[1] = new s1a(j, s0VarArr[1]);
                break;
            case 13:
                s1aVarArr[0] = new s1a(c, s0VarArr[0]);
                s1aVarArr[1] = new s1a(k, s0VarArr[1]);
                break;
            case 14:
                s1aVarArr[0] = new s1a(d, s0VarArr[0]);
                s1aVarArr[1] = new s1a(e, s0VarArr[1]);
                break;
            case 15:
                s1aVarArr[0] = new s1a(d, s0VarArr[0]);
                s1aVarArr[1] = new s1a(f, s0VarArr[1]);
                break;
            case 16:
                s1aVarArr[0] = new s1a(d, s0VarArr[0]);
                s1aVarArr[1] = new s1a(g, s0VarArr[1]);
                break;
            default:
                throw new IllegalArgumentException("Cannot create key specs. Unsupported algorithm identifier.");
        }
        x509EncodedKeySpecArr[0] = new X509EncodedKeySpec(s1aVarArr[0].getEncoded());
        x509EncodedKeySpecArr[1] = new X509EncodedKeySpec(s1aVarArr[1].getEncoded());
        return x509EncodedKeySpecArr;
    }

    @Override
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        try {
            if (key instanceof PrivateKey) {
                return b(og8.n(key.getEncoded()));
            }
            if (key instanceof PublicKey) {
                return a(s1a.n(key.getEncoded()));
            }
            throw new InvalidKeyException("Key not recognized");
        } catch (IOException e2) {
            throw new InvalidKeyException("Key could not be parsed: " + e2.getMessage());
        }
    }
}
