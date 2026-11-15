package com.amazonaws.util;

import com.amazonaws.logging.LogFactory;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5Utils {
    public static byte[] a(File file) {
        return b(new FileInputStream(file));
    }

    public static byte[] b(InputStream inputStream) {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                byte[] bArr = new byte[16384];
                while (true) {
                    int i10 = bufferedInputStream.read(bArr, 0, 16384);
                    if (i10 == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, i10);
                    try {
                        bufferedInputStream.close();
                    } catch (Exception e10) {
                        LogFactory.b(Md5Utils.class).a("Unable to close input stream of hash candidate: " + e10);
                    }
                    throw th;
                }
                byte[] bArrDigest = messageDigest.digest();
                try {
                    bufferedInputStream.close();
                } catch (Exception e11) {
                    LogFactory.b(Md5Utils.class).a("Unable to close input stream of hash candidate: " + e11);
                }
                return bArrDigest;
            } catch (NoSuchAlgorithmException e12) {
                throw new IllegalStateException(e12);
            }
        } catch (Throwable th2) {
            bufferedInputStream.close();
            throw th2;
        }
    }

    public static byte[] c(byte[] bArr) {
        try {
            return MessageDigest.getInstance("MD5").digest(bArr);
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public static String d(File file) {
        return Base64.encodeAsString(a(file));
    }

    public static String e(byte[] bArr) {
        return Base64.encodeAsString(c(bArr));
    }
}
