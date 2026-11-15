package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.util.Base64;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public final class x01 {
    private final String a;
    private final int b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public x01(int i, String str) {
        this(i, str, 0);
        y45.j(str, "publicKey");
    }

    @SuppressLint({"TrulyRandom"})
    public final byte[] a(byte[] bArr) {
        y45.j(bArr, "input");
        try {
            byte[] bArrDecode = Base64.decode(this.a, 0);
            if (bArrDecode == null) {
                return null;
            }
            SecureRandom secureRandom = new SecureRandom();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[16];
            secureRandom.nextBytes(bArr3);
            secureRandom.nextBytes(bArr2);
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArrDecode));
            y45.g(publicKeyGeneratePublic);
            return a(bArr, bArr3, bArr2, publicKeyGeneratePublic);
        } catch (Throwable th) {
            sp0.b(th);
            return null;
        }
    }

    private x01(int i, String str, int i2) {
        this.a = str;
        this.b = i;
    }

    private final byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, PublicKey publicKey) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr2.length + bArr3.length);
            try {
                byteArrayOutputStream.write(bArr2);
                byteArrayOutputStream.write(bArr3);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                y45.i(byteArray, "toByteArray(...)");
                defpackage.ly0.a(byteArrayOutputStream, null);
                Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                xc xcVar = new xc(AESEncrypter.DEFAULT_ALGORITHM, bArr2, bArr3);
                cipher.init(1, publicKey);
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(bArr.length);
                try {
                    byteArrayOutputStream2.write(ByteBuffer.allocate(4).putInt(this.b).array());
                    byteArrayOutputStream2.write(cipher.doFinal(byteArray));
                    byteArrayOutputStream2.write(xcVar.a(bArr));
                    byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
                    defpackage.ly0.a(byteArrayOutputStream2, null);
                    return byteArray2;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        defpackage.ly0.a(byteArrayOutputStream2, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    defpackage.ly0.a(byteArrayOutputStream, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            sp0.b(th5);
            return null;
        }
    }
}
