package defpackage;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import okhttp3.internal.Util;

public final class tx8 {
    public static final tx8 a = new tx8();

    public final String a(String str) {
        y45.j(str, "data");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            y45.i(messageDigest, "getInstance(...)");
            try {
                Charset charsetForName = Charset.forName("UTF-8");
                y45.i(charsetForName, "forName(...)");
                byte[] bytes = str.getBytes(charsetForName);
                y45.i(bytes, "getBytes(...)");
                byte[] bArrDigest = messageDigest.digest(bytes);
                StringBuffer stringBuffer = new StringBuffer();
                for (byte b : bArrDigest) {
                    int i = b & 255;
                    if (i < 16) {
                        stringBuffer.append("0");
                    }
                    stringBuffer.append(Util.toHexString(i));
                }
                String string = stringBuffer.toString();
                y45.i(string, "toString(...)");
                return string;
            } catch (UnsupportedEncodingException e) {
                oq5.a.c(e);
                return "";
            }
        } catch (Exception e2) {
            oq5.a.c(e2);
            return "";
        }
    }

    public final String b(String str) {
        y45.j(str, "data");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA");
            y45.i(messageDigest, "getInstance(...)");
            try {
                Charset charsetForName = Charset.forName("UTF-8");
                y45.i(charsetForName, "forName(...)");
                byte[] bytes = str.getBytes(charsetForName);
                y45.i(bytes, "getBytes(...)");
                byte[] bArrDigest = messageDigest.digest(bytes);
                StringBuffer stringBuffer = new StringBuffer();
                for (byte b : bArrDigest) {
                    int i = b & 255;
                    if (i < 16) {
                        stringBuffer.append("0");
                    }
                    stringBuffer.append(Util.toHexString(i));
                }
                String string = stringBuffer.toString();
                y45.i(string, "toString(...)");
                return string;
            } catch (UnsupportedEncodingException e) {
                oq5.a.c(e);
                return "";
            }
        } catch (Exception e2) {
            oq5.a.c(e2);
            return "";
        }
    }
}
