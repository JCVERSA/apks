package com.asa.wbcrypto_wrapper_oscloud_client;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public abstract class Wbcrypto_Wrapper_OSCloud_Client {
    static {
        System.loadLibrary("wbcrypto_wrapper_oscloud_client");
    }

    public static native byte[] ASA_Wbcrypto_Cipher_Dec_Wrapper(byte[] bArr, byte[] bArr2, int i, int i2);

    public static native byte[] ASA_Wbcrypto_Cipher_Enc_Wrapper(byte[] bArr, byte[] bArr2, int i, int i2);

    public static String a() {
        return "ASA_Wbcrypto_Wrapper_Lite_20251209_V1.0.9";
    }

    public static byte[] b(String str, int i) {
        byte[] bArrASA_Wbcrypto_Cipher_Enc_Wrapper = ASA_Wbcrypto_Cipher_Enc_Wrapper(str.getBytes(Charset.forName("utf-8")), null, 0, 1);
        if (bArrASA_Wbcrypto_Cipher_Enc_Wrapper == null) {
            return null;
        }
        return Arrays.copyOf(g(bArrASA_Wbcrypto_Cipher_Enc_Wrapper), i);
    }

    public static String c(String str) {
        byte[] bArrASA_Wbcrypto_Cipher_Dec_Wrapper;
        byte[] bArrG = g(str.getBytes(Charset.forName("utf-8")));
        try {
            bArrASA_Wbcrypto_Cipher_Dec_Wrapper = ASA_Wbcrypto_Cipher_Dec_Wrapper(Arrays.copyOfRange(bArrG, 16, 32), Arrays.copyOf(bArrG, 16), 1, 0);
        } catch (Exception e) {
            e.printStackTrace();
            bArrASA_Wbcrypto_Cipher_Dec_Wrapper = null;
        }
        return f(bArrASA_Wbcrypto_Cipher_Dec_Wrapper);
    }

    public static boolean d(String str, String str2) {
        byte[] bArrASA_Wbcrypto_Cipher_Enc_Wrapper;
        byte[] bArrG = g(str.getBytes(Charset.forName("utf-8")));
        byte[] bArrCopyOf = Arrays.copyOf(bArrG, 16);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrG, 16, 32);
        try {
            bArrASA_Wbcrypto_Cipher_Enc_Wrapper = ASA_Wbcrypto_Cipher_Enc_Wrapper(i(str2), bArrCopyOf, 1, 0);
        } catch (Exception e) {
            e.printStackTrace();
            bArrASA_Wbcrypto_Cipher_Enc_Wrapper = null;
        }
        if (bArrASA_Wbcrypto_Cipher_Enc_Wrapper == null) {
            return false;
        }
        return Arrays.equals(bArrASA_Wbcrypto_Cipher_Enc_Wrapper, bArrCopyOfRange);
    }

    public static String e(byte b) {
        String hexString = Integer.toHexString(b & 255);
        if (hexString.length() < 2) {
            hexString = String.valueOf(0) + hexString;
        }
        return hexString.toUpperCase();
    }

    public static String f(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        if (bArr != null && bArr.length > 0) {
            for (byte b : bArr) {
                stringBuffer.append(e(b));
            }
        }
        return stringBuffer.toString();
    }

    public static byte[] g(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte h(String str) {
        return (byte) Integer.parseInt(str, 16);
    }

    public static byte[] i(String str) {
        int length = str.length();
        if (length % 2 == 1) {
            length++;
            str = "0" + str;
        }
        byte[] bArr = new byte[length / 2];
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 2;
            bArr[i2] = h(str.substring(i, i3));
            i2++;
            i = i3;
        }
        return bArr;
    }
}
