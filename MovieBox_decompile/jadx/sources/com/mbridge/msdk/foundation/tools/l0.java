package com.mbridge.msdk.foundation.tools;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class l0 {

    protected static char[] f34937a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    protected static MessageDigest f34938b = null;

    private static String f34939c = "SameFileMD5";

    static {
        try {
            f34938b = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e10) {
            System.err.println(l0.class.getName() + "初始化失败，MessageDigest不支持MD5Util.");
            e10.printStackTrace();
        }
    }

    public static String a(File file) throws IOException {
        RandomAccessFile randomAccessFile;
        if (file == null || !file.exists()) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            randomAccessFile = new RandomAccessFile(file, CampaignEx.JSON_KEY_AD_R);
            try {
                byte[] bArr = new byte[10485760];
                while (true) {
                    int i10 = randomAccessFile.read(bArr);
                    if (i10 == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, i10);
                }
                String strA = a(messageDigest.digest());
                try {
                    randomAccessFile.close();
                } catch (IOException e10) {
                    o0.b(f34939c, e10.getMessage());
                }
                return strA;
            } catch (Throwable th2) {
                th = th2;
                try {
                    o0.b(f34939c, th.getMessage());
                    return "";
                } finally {
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e11) {
                            o0.b(f34939c, e11.getMessage());
                        }
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    private static String a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    private static String a(byte[] bArr, int i10, int i11) {
        StringBuffer stringBuffer = new StringBuffer(i11 * 2);
        int i12 = i11 + i10;
        while (i10 < i12) {
            a(bArr[i10], stringBuffer);
            i10++;
        }
        return stringBuffer.toString();
    }

    private static void a(byte b10, StringBuffer stringBuffer) {
        char[] cArr = f34937a;
        char c10 = cArr[(b10 & 240) >> 4];
        char c11 = cArr[b10 & 15];
        stringBuffer.append(c10);
        stringBuffer.append(c11);
    }
}
