package com.aliyun.utils;

import android.text.TextUtils;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

public class EncodeUtils {
    private static final String TAG = "EncodeUtils";

    public static String getBase64(String str) {
        byte[] bytes;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            bytes = str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            bytes = null;
        }
        if (bytes != null) {
            return new String(Base64.encode(bytes, 0));
        }
        return null;
    }

    public static String getDecodeBase64(String str) {
        byte[] bytes;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            bytes = str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            bytes = null;
        }
        if (bytes != null) {
            return new String(Base64.decode(bytes, 0));
        }
        return null;
    }

    public static String getMD5(String str) {
        return getMD5(str.getBytes());
    }

    public static String getMD5(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr2 = new char[32];
            int i10 = 0;
            for (int i11 = 0; i11 < 16; i11++) {
                byte b10 = bArrDigest[i11];
                int i12 = i10 + 1;
                cArr2[i10] = cArr[(b10 >>> 4) & 15];
                i10 += 2;
                cArr2[i12] = cArr[b10 & 15];
            }
            return new String(cArr2);
        } catch (Exception unused) {
            return "";
        }
    }
}
