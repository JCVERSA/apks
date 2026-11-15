package com.transsion.security.aosp.hap.base.auth.impl;

import com.transsion.security.aosp.hap.base.TranConstantsTmp;
import defpackage.dl0;
import defpackage.lxa;
import defpackage.ow4;
import defpackage.pw4;
import defpackage.y45;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.cert.CertificateException;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public final class TranHapKeyStoreLite implements ow4 {
    public final pw4 a;
    public final String b;

    public TranHapKeyStoreLite(pw4 pw4Var) {
        y45.j(pw4Var, "mStore");
        this.a = pw4Var;
        this.b = "TranCryptoKeyStoreLite";
    }

    @Override
    public final KeyStore.Entry a(String str, KeyStore.ProtectionParameter protectionParameter) {
        y45.j(str, "alias");
        return (KeyStore.Entry) dl0.b(null, new TranHapKeyStoreLite$getEntry$1(this, str, null), 1, null);
    }

    @Override
    public final lxa b(String str) {
        y45.j(str, "alias");
        return (lxa) dl0.b(null, new TranHapKeyStoreLite$getKey$1(this, str, null), 1, null);
    }

    @Override
    public final void c(String str, int i, KeyStore.Entry entry, KeyStore.ProtectionParameter protectionParameter) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException, NoSuchProviderException {
        y45.j(str, "alias");
        y45.j(entry, "entry");
        y45.j(protectionParameter, "protParam");
        KeyStore keyStore = KeyStore.getInstance(TranConstantsTmp.a.c(), BouncyCastleProvider.PROVIDER_NAME);
        keyStore.load(null, null);
        char[] charArray = this.b.toCharArray();
        y45.i(charArray, "this as java.lang.String).toCharArray()");
        keyStore.setEntry(str, entry, new KeyStore.PasswordProtection(charArray));
        y45.i(keyStore, "keyStore");
        y45.j(keyStore, "keyStore");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        keyStore.store(byteArrayOutputStream, null);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        y45.i(byteArray, "baos.toByteArray()");
        dl0.b(null, new TranHapKeyStoreLite$saveKey$1(this, str, new lxa(i, byteArray, null, 4, null).c(), null), 1, null);
    }
}
