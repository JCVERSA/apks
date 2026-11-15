package com.transsion.security.aosp.hap.base.impl;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import android.security.keystore.KeyProtection;
import com.lzy.okgo.model.Progress;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.security.aosp.hap.base.TranConstantsTmp;
import defpackage.awa;
import defpackage.ch1;
import defpackage.cqc;
import defpackage.dl0;
import defpackage.fi;
import defpackage.h95;
import defpackage.ixa;
import defpackage.j1a;
import defpackage.lqc;
import defpackage.lxa;
import defpackage.mk0;
import defpackage.mw4;
import defpackage.mxa;
import defpackage.na;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nw4;
import defpackage.ow4;
import defpackage.pw4;
import defpackage.qw4;
import defpackage.s1a;
import defpackage.s74;
import defpackage.w74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.y74;
import defpackage.z45;
import defpackage.zfb;
import hyperion.hap.ICryptoManager;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.X509Certificate;
import java.security.spec.ECGenParameterSpec;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.bouncycastle.cert.jcajce.JcaX509CertificateConverter;
import org.bouncycastle.operator.OperatorCreationException;

public final class TranHapCryptoManagerV2Impl implements ICryptoManager {
    public final mw4 a;
    public final qw4 b;
    public final pw4 c;
    public final ow4 d;
    public final nw4 e;
    public final String f;
    public boolean g;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lnk1;", "", "", "<anonymous>", "(Lnk1;)Ljava/util/List;"}, k = 3, mv = {1, 6, 0})
    @nt1(c = "com.transsion.security.aosp.hap.base.impl.TranHapCryptoManagerV2Impl$aliases$1", f = "TranHapCryptoManagerV2Impl.kt", l = {239}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        int label;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return TranHapCryptoManagerV2Impl.this.new AnonymousClass1(wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super List<String>> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                pw4 pw4VarE = TranHapCryptoManagerV2Impl.this.e();
                this.label = 1;
                obj = pw4VarE.b(this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return obj;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)[B"}, k = 3, mv = {1, 6, 0})
    @nt1(c = "com.transsion.security.aosp.hap.base.impl.TranHapCryptoManagerV2Impl$exportKey$1", f = "TranHapCryptoManagerV2Impl.kt", l = {}, m = "invokeSuspend")
    public static final class C23771 extends SuspendLambda implements s74 {
        final String $alias;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23771(String str, wh1<? super C23771> wh1Var) {
            super(2, wh1Var);
            this.$alias = str;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return TranHapCryptoManagerV2Impl.this.new C23771(this.$alias, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super byte[]> wh1Var) {
            return ((C23771) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            KeyStore.Entry entryA = TranHapCryptoManagerV2Impl.this.d().a(this.$alias, null);
            if (entryA instanceof KeyStore.PrivateKeyEntry) {
                return ((KeyStore.PrivateKeyEntry) entryA).getCertificate().getEncoded();
            }
            return null;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)Z"}, k = 3, mv = {1, 6, 0})
    @nt1(c = "com.transsion.security.aosp.hap.base.impl.TranHapCryptoManagerV2Impl$generateKey$1", f = "TranHapCryptoManagerV2Impl.kt", l = {129}, m = "invokeSuspend")
    public static final class C23781 extends SuspendLambda implements s74 {
        final String $alias;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23781(String str, wh1<? super C23781> wh1Var) {
            super(2, wh1Var);
            this.$alias = str;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return TranHapCryptoManagerV2Impl.this.new C23781(this.$alias, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super Boolean> wh1Var) {
            return ((C23781) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                pw4 pw4VarE = TranHapCryptoManagerV2Impl.this.e();
                this.label = 1;
                obj = pw4VarE.b(this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return mk0.a(((List) obj).contains(this.$alias));
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "", "<anonymous>", "(Lnk1;)Z"}, k = 3, mv = {1, 6, 0})
    @nt1(c = "com.transsion.security.aosp.hap.base.impl.TranHapCryptoManagerV2Impl$importKey$1", f = "TranHapCryptoManagerV2Impl.kt", l = {273}, m = "invokeSuspend")
    public static final class C23791 extends SuspendLambda implements s74 {
        final String $alias;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23791(String str, wh1<? super C23791> wh1Var) {
            super(2, wh1Var);
            this.$alias = str;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return TranHapCryptoManagerV2Impl.this.new C23791(this.$alias, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super Boolean> wh1Var) {
            return ((C23791) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                pw4 pw4VarE = TranHapCryptoManagerV2Impl.this.e();
                this.label = 1;
                obj = pw4VarE.b(this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return mk0.a(((List) obj).contains(this.$alias));
        }
    }

    public TranHapCryptoManagerV2Impl(Context context, mw4 mw4Var, qw4 qw4Var, pw4 pw4Var, ow4 ow4Var, nw4 nw4Var) {
        y45.j(context, "context");
        y45.j(mw4Var, "authStatus");
        y45.j(qw4Var, "usageDelegate");
        y45.j(pw4Var, "mStore");
        y45.j(ow4Var, "ks");
        y45.j(nw4Var, "asn1Helper");
        this.a = mw4Var;
        this.b = qw4Var;
        this.c = pw4Var;
        this.d = ow4Var;
        this.e = nw4Var;
        this.f = "TranHapCryptoManagerImpl";
        this.g = true;
    }

    public final void a(byte[] bArr, w74 w74Var) {
        if (bArr.length < 16) {
            throw new IllegalArgumentException("incorrect argument size!");
        }
        w74Var.invoke(bArr, 0, Integer.valueOf(bArr.length - 16), fi.r(bArr, bArr.length - 16, bArr.length));
    }

    @Override
    public List aliases() {
        this.a.a();
        return (List) dl0.b(null, new AnonymousClass1(null), 1, null);
    }

    public final void b(byte[] bArr, y74 y74Var) {
        int length = bArr.length;
        int i = length - 1;
        if (i < 12) {
            throw new IllegalArgumentException("incorrect argument size!");
        }
        byte b = bArr[i];
        if (b > 127 || b < -128) {
            throw new IllegalArgumentException("incorrect size of aad[${Byte.MIN_VALUE} - ${Byte.MAX_VALUE}");
        }
        int i2 = length - 13;
        byte[] bArrR = fi.r(bArr, i2, i);
        int i3 = i2 - b;
        y74Var.invoke(bArr, 0, Integer.valueOf(i3), fi.r(bArr, i3, i2), bArrR);
    }

    public final X509Certificate c(KeyPair keyPair) throws JcaX509CertificateConverter.ExCertificateParsingException, OperatorCreationException, JcaX509CertificateConverter.ExCertificateException {
        String str;
        y45.j(keyPair, "keyPair");
        long jCurrentTimeMillis = System.currentTimeMillis();
        Date date = new Date(jCurrentTimeMillis);
        Date date2 = new Date(jCurrentTimeMillis + 31536000000L);
        Locale locale = new Locale("en", "GB");
        BigInteger bigIntegerValueOf = BigInteger.valueOf(System.currentTimeMillis());
        cqc cqcVar = new cqc("CN=TranHap Self Signed Certificate");
        lqc lqcVar = new lqc(cqcVar, bigIntegerValueOf, date, date2, locale, cqcVar, s1a.n(keyPair.getPublic().getEncoded()));
        String algorithm = keyPair.getPrivate().getAlgorithm();
        if (y45.e(algorithm, "RSA")) {
            str = "SHA256withRSA";
        } else {
            if (!y45.e(algorithm, "EC")) {
                throw new IllegalArgumentException(y45.s("Unsupported key algorithm: ", keyPair.getPrivate().getAlgorithm()));
            }
            str = "SHA256withECDSA";
        }
        ch1 ch1VarB = new h95(str).b(keyPair.getPrivate());
        y45.i(ch1VarB, "JcaContentSignerBuilder(sigAlg).build(privateKey)");
        X509Certificate x509CertificateA = new JcaX509CertificateConverter().a(lqcVar.a(ch1VarB));
        y45.i(x509CertificateA, "JcaX509CertificateConver…der.build(contentSigner))");
        return x509CertificateA;
    }

    public final ow4 d() {
        return this.d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public byte[] decrypt(String str, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException {
        lxa lxaVarB;
        y45.j(str, "alias");
        y45.j(bArr, "input");
        this.a.a();
        final KeyStore.Entry entryA = this.d.a(str, null);
        if (entryA != null && (lxaVarB = this.d.b(str)) != null) {
            na naVarA = mxa.a(lxaVarB.b());
            if (entryA instanceof KeyStore.SecretKeyEntry) {
                try {
                    String strA = naVarA.a();
                    awa awaVar = awa.a;
                    if (y45.e(strA, awaVar.a())) {
                        final Cipher cipher = Cipher.getInstance(naVarA.a());
                        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                        a(bArr, new w74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(4);
                            }

                            @Override
                            public Object invoke(Object obj, Object obj2, Object obj3, Object obj4) throws InvalidKeyException, InvalidAlgorithmParameterException {
                                invoke((byte[]) obj, ((Number) obj2).intValue(), ((Number) obj3).intValue(), (byte[]) obj4);
                                return zfb.a;
                            }

                            /* JADX WARN: Type inference failed for: r3v2, types: [T, byte[]] */
                            public final void invoke(byte[] bArr2, int i, int i2, byte[] bArr3) throws InvalidKeyException, InvalidAlgorithmParameterException {
                                y45.j(bArr2, "inb");
                                y45.j(bArr3, "iv");
                                cipher.init(2, ((KeyStore.SecretKeyEntry) entryA).getSecretKey(), new IvParameterSpec(bArr3));
                                ref$ObjectRef.element = cipher.doFinal(bArr2, i, i2);
                            }
                        });
                        return (byte[]) ref$ObjectRef.element;
                    }
                    if (y45.e(strA, awaVar.b())) {
                        final Cipher cipher2 = Cipher.getInstance(naVarA.a());
                        final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                        b(bArr, new y74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(5);
                            }

                            @Override
                            public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) throws InvalidKeyException, InvalidAlgorithmParameterException {
                                invoke((byte[]) obj, ((Number) obj2).intValue(), ((Number) obj3).intValue(), (byte[]) obj4, (byte[]) obj5);
                                return zfb.a;
                            }

                            /* JADX WARN: Type inference failed for: r4v2, types: [T, byte[]] */
                            public final void invoke(byte[] bArr2, int i, int i2, byte[] bArr3, byte[] bArr4) throws InvalidKeyException, InvalidAlgorithmParameterException {
                                y45.j(bArr2, "inb");
                                y45.j(bArr3, "aad");
                                y45.j(bArr4, "iv");
                                cipher2.init(2, ((KeyStore.SecretKeyEntry) entryA).getSecretKey(), new GCMParameterSpec(128, bArr4));
                                cipher2.updateAAD(bArr3);
                                ref$ObjectRef2.element = cipher2.doFinal(bArr2, i, i2);
                            }
                        });
                        return (byte[]) ref$ObjectRef2.element;
                    }
                } catch (ArrayIndexOutOfBoundsException unused) {
                    throw new IllegalArgumentException("incorrect argument size!");
                }
            } else if (entryA instanceof KeyStore.PrivateKeyEntry) {
                String strA2 = naVarA.a();
                awa awaVar2 = awa.a;
                if (y45.e(strA2, awaVar2.d())) {
                    ixa ixaVar = ixa.a;
                    PrivateKey privateKey = ((KeyStore.PrivateKeyEntry) entryA).getPrivateKey();
                    y45.i(privateKey, "keyEntry.privateKey");
                    return ixaVar.f(privateKey, bArr);
                }
                if (y45.e(strA2, awaVar2.e())) {
                    ixa ixaVar2 = ixa.a;
                    PrivateKey privateKey2 = ((KeyStore.PrivateKeyEntry) entryA).getPrivateKey();
                    y45.i(privateKey2, "keyEntry.privateKey");
                    return ixaVar2.h(privateKey2, bArr);
                }
            }
        }
        return null;
    }

    public final pw4 e() {
        return this.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public byte[] encrypt(String str, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException {
        lxa lxaVarB;
        y45.j(str, "alias");
        y45.j(bArr, "input");
        this.a.a();
        final KeyStore.Entry entryA = this.d.a(str, null);
        if (entryA != null && (lxaVarB = this.d.b(str)) != null) {
            na naVarA = mxa.a(lxaVarB.b());
            if (entryA instanceof KeyStore.SecretKeyEntry) {
                try {
                    String strA = naVarA.a();
                    awa awaVar = awa.a;
                    if (y45.e(strA, awaVar.a())) {
                        final Cipher cipher = Cipher.getInstance(naVarA.a());
                        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                        a(bArr, new w74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(4);
                            }

                            @Override
                            public Object invoke(Object obj, Object obj2, Object obj3, Object obj4) throws InvalidKeyException, InvalidAlgorithmParameterException {
                                invoke((byte[]) obj, ((Number) obj2).intValue(), ((Number) obj3).intValue(), (byte[]) obj4);
                                return zfb.a;
                            }

                            /* JADX WARN: Type inference failed for: r3v2, types: [T, byte[]] */
                            public final void invoke(byte[] bArr2, int i, int i2, byte[] bArr3) throws InvalidKeyException, InvalidAlgorithmParameterException {
                                y45.j(bArr2, "inb");
                                y45.j(bArr3, "iv");
                                cipher.init(1, ((KeyStore.SecretKeyEntry) entryA).getSecretKey(), new IvParameterSpec(bArr3));
                                ref$ObjectRef.element = cipher.doFinal(bArr2, i, i2);
                            }
                        });
                        return (byte[]) ref$ObjectRef.element;
                    }
                    if (y45.e(strA, awaVar.b())) {
                        final Cipher cipher2 = Cipher.getInstance(naVarA.a());
                        final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                        b(bArr, new y74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(5);
                            }

                            @Override
                            public Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) throws InvalidKeyException, InvalidAlgorithmParameterException {
                                invoke((byte[]) obj, ((Number) obj2).intValue(), ((Number) obj3).intValue(), (byte[]) obj4, (byte[]) obj5);
                                return zfb.a;
                            }

                            /* JADX WARN: Type inference failed for: r4v2, types: [T, byte[]] */
                            public final void invoke(byte[] bArr2, int i, int i2, byte[] bArr3, byte[] bArr4) throws InvalidKeyException, InvalidAlgorithmParameterException {
                                y45.j(bArr2, "inb");
                                y45.j(bArr3, "aad");
                                y45.j(bArr4, "iv");
                                cipher2.init(1, ((KeyStore.SecretKeyEntry) entryA).getSecretKey(), new GCMParameterSpec(128, bArr4));
                                cipher2.updateAAD(bArr3);
                                ref$ObjectRef2.element = cipher2.doFinal(bArr2, i, i2);
                            }
                        });
                        return (byte[]) ref$ObjectRef2.element;
                    }
                } catch (ArrayIndexOutOfBoundsException unused) {
                    throw new IllegalArgumentException("incorrect argument size!");
                }
            } else if (entryA instanceof KeyStore.PrivateKeyEntry) {
                String strA2 = naVarA.a();
                awa awaVar2 = awa.a;
                if (y45.e(strA2, awaVar2.d())) {
                    ixa ixaVar = ixa.a;
                    PublicKey publicKey = ((KeyStore.PrivateKeyEntry) entryA).getCertificate().getPublicKey();
                    y45.i(publicKey, "keyEntry.certificate.publicKey");
                    return ixaVar.g(publicKey, bArr);
                }
                if (y45.e(strA2, awaVar2.e())) {
                    ixa ixaVar2 = ixa.a;
                    PublicKey publicKey2 = ((KeyStore.PrivateKeyEntry) entryA).getCertificate().getPublicKey();
                    y45.i(publicKey2, "keyEntry.certificate.publicKey");
                    return ixaVar2.i(publicKey2, bArr);
                }
            }
        }
        return null;
    }

    @Override
    public byte[] exportKey(String str) {
        y45.j(str, "alias");
        this.a.a();
        return (byte[]) dl0.b(null, new C23771(str, null), 1, null);
    }

    public final void f(String str) {
        this.a.a();
        dl0.b(null, new TranHapCryptoManagerV2Impl$removeCKey$1(this, str, null), 1, null);
    }

    @Override
    public void generateKey(String str, int i) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        y45.j(str, "alias");
        this.a.a();
        qw4.a.b(this.b, new String[]{str}, null, null, null, 14, null);
        if (((Boolean) dl0.b(null, new C23781(str, null), 1, null)).booleanValue()) {
            return;
        }
        String strA = mxa.a(i).a();
        awa awaVar = awa.a;
        if (y45.e(strA, awaVar.a())) {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", TranConstantsTmp.a.d());
            y45.i(new KeyGenParameterSpec.Builder(str, 3).setBlockModes("CBC").setEncryptionPaddings("PKCS7Padding").setRandomizedEncryptionRequired(false).setKeySize(mxa.a(i).b()).build(), "Builder(alias,\n         …                 .build()");
            keyGenerator.init(mxa.a(i).b());
            SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
            ow4 ow4VarD = d();
            KeyStore.SecretKeyEntry secretKeyEntry = new KeyStore.SecretKeyEntry(secretKeyGenerateKey);
            KeyProtection keyProtectionBuild = new KeyProtection.Builder(3).setBlockModes("CBC").setEncryptionPaddings("PKCS7Padding").setRandomizedEncryptionRequired(false).build();
            y45.i(keyProtectionBuild, "Builder(\n               …                 .build()");
            ow4VarD.c(str, i, secretKeyEntry, keyProtectionBuild);
            return;
        }
        if (y45.e(strA, awaVar.b())) {
            KeyGenerator keyGenerator2 = KeyGenerator.getInstance("AES", TranConstantsTmp.a.d());
            keyGenerator2.init(mxa.a(i).b());
            SecretKey secretKeyGenerateKey2 = keyGenerator2.generateKey();
            ow4 ow4VarD2 = d();
            KeyStore.SecretKeyEntry secretKeyEntry2 = new KeyStore.SecretKeyEntry(secretKeyGenerateKey2);
            KeyProtection keyProtectionBuild2 = new KeyProtection.Builder(3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setRandomizedEncryptionRequired(false).build();
            y45.i(keyProtectionBuild2, "Builder(\n               …                 .build()");
            ow4VarD2.c(str, i, secretKeyEntry2, keyProtectionBuild2);
            return;
        }
        if (y45.e(strA, awaVar.d())) {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", TranConstantsTmp.a.d());
            keyPairGenerator.initialize(mxa.a(i).b());
            KeyPair keyPairGenKeyPair = keyPairGenerator.genKeyPair();
            ow4 ow4VarD3 = d();
            PrivateKey privateKey = keyPairGenKeyPair.getPrivate();
            y45.i(keyPairGenKeyPair, "it");
            KeyStore.PrivateKeyEntry privateKeyEntry = new KeyStore.PrivateKeyEntry(privateKey, new X509Certificate[]{c(keyPairGenKeyPair)});
            KeyProtection keyProtectionBuild3 = new KeyProtection.Builder(32 | 3).setEncryptionPaddings("OAEPPadding").setDigests("SHA-1").build();
            y45.i(keyProtectionBuild3, "Builder(\n               …                 .build()");
            ow4VarD3.c(str, i, privateKeyEntry, keyProtectionBuild3);
            return;
        }
        if (y45.e(strA, awaVar.e())) {
            KeyPairGenerator keyPairGenerator2 = KeyPairGenerator.getInstance("RSA", TranConstantsTmp.a.d());
            keyPairGenerator2.initialize(mxa.a(i).b());
            KeyPair keyPairGenKeyPair2 = keyPairGenerator2.genKeyPair();
            ow4 ow4VarD4 = d();
            PrivateKey privateKey2 = keyPairGenKeyPair2.getPrivate();
            y45.i(keyPairGenKeyPair2, "it");
            KeyStore.PrivateKeyEntry privateKeyEntry2 = new KeyStore.PrivateKeyEntry(privateKey2, new X509Certificate[]{c(keyPairGenKeyPair2)});
            KeyProtection keyProtectionBuild4 = new KeyProtection.Builder(32 | 3).setBlockModes("ECB").setEncryptionPaddings("OAEPPadding").setDigests("SHA-256").build();
            y45.i(keyProtectionBuild4, "Builder(\n               …                 .build()");
            ow4VarD4.c(str, i, privateKeyEntry2, keyProtectionBuild4);
            return;
        }
        if (y45.e(strA, awaVar.c())) {
            KeyGenerator keyGenerator3 = KeyGenerator.getInstance("HmacSHA256", TranConstantsTmp.a.d());
            keyGenerator3.init(mxa.a(i).b());
            SecretKey secretKeyGenerateKey3 = keyGenerator3.generateKey();
            ow4 ow4VarD5 = d();
            KeyStore.SecretKeyEntry secretKeyEntry3 = new KeyStore.SecretKeyEntry(secretKeyGenerateKey3);
            KeyProtection keyProtectionBuild5 = new KeyProtection.Builder(4).build();
            y45.i(keyProtectionBuild5, "Builder(KeyProperties.PU…                 .build()");
            ow4VarD5.c(str, i, secretKeyEntry3, keyProtectionBuild5);
            return;
        }
        if (y45.e(strA, awaVar.f())) {
            KeyPairGenerator keyPairGenerator3 = KeyPairGenerator.getInstance("EC", TranConstantsTmp.a.d());
            keyPairGenerator3.initialize(new ECGenParameterSpec("secp256r1"));
            KeyPair keyPairGenKeyPair3 = keyPairGenerator3.genKeyPair();
            ow4 ow4VarD6 = d();
            PrivateKey privateKey3 = keyPairGenKeyPair3.getPrivate();
            y45.i(keyPairGenKeyPair3, "it");
            KeyStore.PrivateKeyEntry privateKeyEntry3 = new KeyStore.PrivateKeyEntry(privateKey3, new X509Certificate[]{c(keyPairGenKeyPair3)});
            KeyProtection keyProtectionBuild6 = new KeyProtection.Builder(12).setDigests("SHA-256").build();
            y45.i(keyProtectionBuild6, "Builder(\n               …                 .build()");
            ow4VarD6.c(str, i, privateKeyEntry3, keyProtectionBuild6);
        }
    }

    @Override
    public byte[] getImportKeyAAD(int i) {
        this.a.a();
        return this.e.a(i);
    }

    @Override
    public void importKey(String str, int i, String str2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        y45.j(str, "alias");
        y45.j(str2, "decryptKeyalias");
        y45.j(bArr, "encryptedTmpKey");
        y45.j(bArr2, "encryptedKey");
        y45.j(bArr3, "iv");
        y45.j(bArr4, "aad");
        y45.j(bArr5, Progress.TAG);
        this.a.a();
        qw4.a.b(this.b, new String[]{str}, null, null, null, 14, null);
        if (((Boolean) dl0.b(null, new C23791(str, null), 1, null)).booleanValue()) {
            return;
        }
        KeyStore.Entry entryA = this.d.a(str2, null);
        if (entryA == null) {
            throw new IllegalArgumentException("specified key not exist!!");
        }
        if (!(entryA instanceof KeyStore.PrivateKeyEntry)) {
            throw new IllegalArgumentException("specified key type not correct!!");
        }
        byte[] bArrA = ixa.a.a(new SecretKeySpec(decrypt(str2, bArr), "AES"), fi.z(bArr2, bArr5), getImportKeyAAD(i == 1050 ? 2 : 1), bArr3);
        ow4 ow4Var = this.d;
        String strA = mxa.a(i).a();
        KeyStore.SecretKeyEntry secretKeyEntry = new KeyStore.SecretKeyEntry(new SecretKeySpec(bArrA, j1a.V(strA, DownloadFacadeEnum.USER_MAC, true) ? strA : "AES"));
        KeyProtection keyProtectionBuild = new KeyProtection.Builder(7).setBlockModes("CBC", "GCM").setEncryptionPaddings("PKCS7Padding", "NoPadding").setRandomizedEncryptionRequired(false).build();
        y45.i(keyProtectionBuild, "Builder(KeyProperties.PU…\n                .build()");
        ow4Var.c(str, i, secretKeyEntry, keyProtectionBuild);
    }

    @Override
    public void removeKey(String str) {
        y45.j(str, "alias");
        this.a.a();
        f(str);
    }

    @Override
    public byte[] sign(String str, byte[] bArr) {
        lxa lxaVarB;
        y45.j(str, "alias");
        y45.j(bArr, "input");
        this.a.a();
        KeyStore.Entry entryA = this.d.a(str, null);
        if (entryA != null && (lxaVarB = this.d.b(str)) != null) {
            String strA = mxa.a(lxaVarB.b()).a();
            awa awaVar = awa.a;
            if (y45.e(strA, awaVar.c()) ? true : y45.e(strA, "AES")) {
                if (entryA instanceof KeyStore.SecretKeyEntry) {
                    ixa ixaVar = ixa.a;
                    SecretKey secretKey = ((KeyStore.SecretKeyEntry) entryA).getSecretKey();
                    y45.i(secretKey, "keyEntry.secretKey");
                    return ixaVar.d(secretKey, bArr);
                }
            } else if (y45.e(strA, awaVar.f()) && (entryA instanceof KeyStore.PrivateKeyEntry)) {
                ixa ixaVar2 = ixa.a;
                PrivateKey privateKey = ((KeyStore.PrivateKeyEntry) entryA).getPrivateKey();
                y45.i(privateKey, "keyEntry.privateKey");
                return ixaVar2.b(privateKey, bArr);
            }
        }
        return null;
    }

    @Override
    public void updateKey(String str, int i) throws NoSuchAlgorithmException, NoSuchProviderException, InvalidAlgorithmParameterException {
        y45.j(str, "alias");
        this.a.a();
        qw4.a.b(this.b, new String[]{str}, null, null, null, 14, null);
        removeKey(str);
        generateKey(str, i);
    }

    @Override
    public boolean verify(String str, byte[] bArr, byte[] bArr2) {
        lxa lxaVarB;
        y45.j(str, "alias");
        y45.j(bArr, "input");
        y45.j(bArr2, "signature");
        this.a.a();
        KeyStore.Entry entryA = this.d.a(str, null);
        if (entryA != null && (lxaVarB = this.d.b(str)) != null) {
            String strA = mxa.a(lxaVarB.b()).a();
            awa awaVar = awa.a;
            if (y45.e(strA, awaVar.c())) {
                if (entryA instanceof KeyStore.SecretKeyEntry) {
                    ixa ixaVar = ixa.a;
                    SecretKey secretKey = ((KeyStore.SecretKeyEntry) entryA).getSecretKey();
                    y45.i(secretKey, "keyEntry.secretKey");
                    return ixaVar.e(secretKey, bArr, bArr2);
                }
            } else if (y45.e(strA, awaVar.f()) && (entryA instanceof KeyStore.PrivateKeyEntry)) {
                ixa ixaVar2 = ixa.a;
                PublicKey publicKey = ((KeyStore.PrivateKeyEntry) entryA).getCertificate().getPublicKey();
                y45.i(publicKey, "keyEntry.certificate.publicKey");
                return ixaVar2.c(publicKey, bArr, bArr2);
            }
        }
        return false;
    }
}
