package defpackage;

import android.content.Context;
import android.util.Log;
import java.security.MessageDigest;

public abstract class n3d {
    public static String a(Context context) {
        String strV;
        try {
            try {
                strV = mpd.v(context);
            } catch (Exception e) {
                Log.i("ODIN", "Error generating ODIN-1: ", e);
                return null;
            }
        } catch (Exception unused) {
            strV = mpd.v(context);
        }
        return b(strV);
    }

    public static String b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("iso-8859-1"), 0, str.length());
            return c(messageDigest.digest());
        } catch (Exception e) {
            Log.i("ODIN", "Error generating generating SHA-1: ", e);
            return null;
        }
    }

    public static String c(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bArr.length; i++) {
            int i2 = (bArr[i] >>> 4) & 15;
            int i3 = 0;
            while (true) {
                if (i2 < 0 || i2 > 9) {
                    stringBuffer.append((char) (i2 + 87));
                } else {
                    stringBuffer.append((char) (i2 + 48));
                }
                i2 = bArr[i] & 15;
                int i4 = i3 + 1;
                if (i3 >= 1) {
                    break;
                }
                i3 = i4;
            }
        }
        return stringBuffer.toString();
    }
}
