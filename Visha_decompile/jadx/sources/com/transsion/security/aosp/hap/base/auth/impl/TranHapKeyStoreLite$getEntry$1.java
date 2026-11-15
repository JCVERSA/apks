package com.transsion.security.aosp.hap.base.auth.impl;

import com.transsion.security.aosp.hap.base.TranConstantsTmp;
import defpackage.lxa;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.cert.CertificateException;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lnk1;", "Ljava/security/KeyStore$Entry;", "kotlin.jvm.PlatformType", "<anonymous>", "(Lnk1;)Ljava/security/KeyStore$Entry;"}, k = 3, mv = {1, 6, 0})
@nt1(c = "com.transsion.security.aosp.hap.base.auth.impl.TranHapKeyStoreLite$getEntry$1", f = "TranHapKeyStoreLite.kt", l = {}, m = "invokeSuspend")
public final class TranHapKeyStoreLite$getEntry$1 extends SuspendLambda implements s74 {
    public final String $alias;
    public int label;
    public final TranHapKeyStoreLite this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranHapKeyStoreLite$getEntry$1(TranHapKeyStoreLite tranHapKeyStoreLite, String str, wh1<? super TranHapKeyStoreLite$getEntry$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = tranHapKeyStoreLite;
        this.$alias = str;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new TranHapKeyStoreLite$getEntry$1(this.this$0, this.$alias, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super KeyStore.Entry> wh1Var) {
        return ((TranHapKeyStoreLite$getEntry$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException, NoSuchProviderException {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        lxa lxaVarB = this.this$0.b(this.$alias);
        byte[] bArrA = lxaVarB == null ? null : lxaVarB.a();
        KeyStore keyStore = KeyStore.getInstance(TranConstantsTmp.a.c(), BouncyCastleProvider.PROVIDER_NAME);
        keyStore.load(new ByteArrayInputStream(bArrA), null);
        y45.i(keyStore, "keyStore");
        String str = this.$alias;
        char[] charArray = this.this$0.b.toCharArray();
        y45.i(charArray, "this as java.lang.String).toCharArray()");
        return keyStore.getEntry(str, new KeyStore.PasswordProtection(charArray));
    }
}
