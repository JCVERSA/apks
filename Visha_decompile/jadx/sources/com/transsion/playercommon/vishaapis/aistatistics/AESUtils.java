package com.transsion.playercommon.vishaapis.aistatistics;

import android.util.Base64;
import com.blankj.utilcode.util.LogUtils;
import com.google.gson.reflect.TypeToken;
import defpackage.fi1;
import defpackage.r0a;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class AESUtils {
    private static final int KEY_STANDARD_LENGTH = 16;

    public static byte[] decrypt(byte[] bArr, String str) {
        if (r0a.g(str)) {
            throw new RuntimeException("Encryption and decryption exception!");
        }
        if (str.length() != 16) {
            throw new RuntimeException("Encryption and decryption exception!");
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(StandardCharsets.UTF_8), "AES");
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(2, secretKeySpec);
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            LogUtils.l("Encryption and decryption error!", e);
            return null;
        }
    }

    public static String decryptString(String str, String str2) {
        byte[] bArrDecrypt = decrypt(Base64.decode(str, 0), str2);
        Objects.requireNonNull(bArrDecrypt);
        return new String(bArrDecrypt, StandardCharsets.UTF_8);
    }

    public static byte[] decrypt_cbc(String str, String str2, String str3) {
        try {
            Charset charset = StandardCharsets.UTF_8;
            IvParameterSpec ivParameterSpec = new IvParameterSpec(str3.getBytes(charset));
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(charset), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(Base64.decode(str, 0));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] encrypt(byte[] bArr, String str) {
        if (r0a.g(str)) {
            throw new RuntimeException("Encryption and decryption exception!");
        }
        if (str.length() != 16) {
            throw new RuntimeException("Encryption and decryption exception!");
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(StandardCharsets.UTF_8), "AES");
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            return cipher.doFinal(bArr);
        } catch (InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            LogUtils.l("Encryption and decryption error!", e);
            return null;
        }
    }

    public static String encryptString(String str, String str2) {
        return Base64.encodeToString(encrypt(str.getBytes(StandardCharsets.UTF_8), str2), 0);
    }

    public static String encrypt_cbc(byte[] bArr, String str, String str2) {
        try {
            Charset charset = StandardCharsets.UTF_8;
            IvParameterSpec ivParameterSpec = new IvParameterSpec(str2.getBytes(charset));
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(charset), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return Base64.encodeToString(cipher.doFinal(bArr), 0);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static KeyBean getKey() {
        List list = (List) fi1.c(decryptString(KeyConstant.KEY_SET, KeyConstant.TAG), new TypeToken<List<String>>() {
        }.getType());
        int iNextInt = new Random(1L).nextInt(list.size() - 1);
        return new KeyBean((String) list.get(iNextInt), iNextInt + 1);
    }

    public static String mark(String str) {
        if (KeyConstant.keyBean == null) {
            KeyConstant.keyBean = getKey();
        }
        return encrypt_cbc(GzipUtil.compress(str.replaceAll("\\n", "")), KeyConstant.keyBean.getKey(), "abcdefghijk1mnop").replaceAll("\\n", "").replaceAll("\n", "");
    }
}
