package com.cloud.tupdate.net.sign;

import android.util.Base64;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class Crypto {
    public static String a(String str) {
        byte[] bArrDecode = Base64.decode(str, 2);
        byte[] bArr = new byte[12];
        int length = bArrDecode.length - 12;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArrDecode, 0, bArr, 0, 12);
        System.arraycopy(bArrDecode, 12, bArr2, 0, length);
        return new String(b(2, bArr).doFinal(bArr2));
    }

    public static Cipher b(int i, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(i, new SecretKeySpec(HttpSigner.e().substring(0, 16).getBytes(StandardCharsets.UTF_8), "AES"), new GCMParameterSpec(128, bArr));
        return cipher;
    }
}
