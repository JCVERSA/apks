package com.mgtv.downloader.util;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class e {
    /* JADX WARN: Code duplicated, block: B:32:0x0048 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x0049  */
    @NonNull
    public static String a(@Nullable String str) throws Throwable {
        MessageDigest messageDigest;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                try {
                    messageDigest = MessageDigest.getInstance("SHA-256");
                    try {
                        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(str));
                        try {
                            byte[] bArr = new byte[8192];
                            while (true) {
                                int i = bufferedInputStream2.read(bArr);
                                if (i <= 0) {
                                    break;
                                }
                                messageDigest.update(bArr, 0, i);
                            }
                            bufferedInputStream2.close();
                        } catch (Exception e) {
                            e = e;
                            bufferedInputStream = bufferedInputStream2;
                            e.printStackTrace();
                            if (bufferedInputStream != null) {
                                bufferedInputStream.close();
                            }
                            if (messageDigest == null) {
                                return "";
                            }
                            return d.a(messageDigest.digest());
                        } catch (Throwable th) {
                            th = th;
                            bufferedInputStream = bufferedInputStream2;
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                    }
                } catch (Exception e4) {
                    e = e4;
                    messageDigest = null;
                }
                if (messageDigest == null) {
                    return "";
                }
                return d.a(messageDigest.digest());
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e5) {
            e5.printStackTrace();
        }
    }

    @NonNull
    public static String b(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        byte[] bArrDigest = new byte[1024];
        try {
            bArrDigest = MessageDigest.getInstance("SHA-256").digest(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Huh, UTF-8 should be supported?", e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("Huh, SHA-256 should be supported?", e2);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
        for (byte b : bArrDigest) {
            int i = b & 255;
            if (i < 16) {
                sb.append("0");
            }
            sb.append(Integer.toHexString(i));
        }
        return sb.toString();
    }
}
