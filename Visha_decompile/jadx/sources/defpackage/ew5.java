package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.security.MessageDigest;

public abstract class ew5 {
    public static final String[] a = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "c", "d", "e", "f"};

    public static String a(String str) {
        try {
            return b(MessageDigest.getInstance("MD5").digest(str.getBytes()));
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static String b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            stringBuffer.append(c(b));
        }
        return stringBuffer.toString();
    }

    public static String c(byte b) {
        int i = b;
        if (b < 0) {
            i = b + 256;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArr = a;
        sb.append(strArr[i / 16]);
        sb.append(strArr[i % 16]);
        return sb.toString();
    }
}
