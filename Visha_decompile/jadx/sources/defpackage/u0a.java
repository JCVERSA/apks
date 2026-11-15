package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;

public abstract class u0a {
    public static String a;

    public static class a implements PrivilegedAction {
        @Override
        public String run() {
            return System.getProperty("line.separator");
        }
    }

    static {
        try {
            try {
                a = (String) AccessController.doPrivileged(new a());
            } catch (Exception unused) {
                a = String.format("%n", new Object[0]);
            }
        } catch (Exception unused2) {
            a = "\n";
        }
    }

    public static char[] a(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return cArr;
    }

    public static String b(byte[] bArr) {
        return new String(a(bArr));
    }

    public static String c(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        int iC = ifb.c(bArr, cArr);
        if (iC >= 0) {
            return new String(cArr, 0, iC);
        }
        throw new IllegalArgumentException("Invalid UTF-8 input");
    }

    public static String d() {
        return a;
    }

    public static byte[] e(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr[i] = (byte) str.charAt(i);
        }
        return bArr;
    }

    public static String f(String str) {
        char[] charArray = str.toCharArray();
        boolean z = false;
        for (int i = 0; i != charArray.length; i++) {
            char c = charArray[i];
            if ('A' <= c && 'Z' >= c) {
                charArray[i] = (char) (c + ' ');
                z = true;
            }
        }
        return z ? new String(charArray) : str;
    }

    public static void g(char[] cArr, OutputStream outputStream) throws IOException {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        while (i4 < cArr.length) {
            char c = cArr[i4];
            if (c >= 128) {
                if (c < 2048) {
                    i = c;
                    i2 = (c >> 6) | 192;
                } else {
                    if (c < 55296 || c > 57343) {
                        i = c;
                        i = c;
                        outputStream.write((c >> '\f') | 224);
                        i2 = ((c >> 6) & 63) | 128;
                    } else {
                        i4++;
                        if (i4 >= cArr.length) {
                            i = c;
                            throw new IllegalStateException("invalid UTF-16 codepoint");
                        }
                        char c2 = cArr[i4];
                        if (c > 56319) {
                            i = c;
                            throw new IllegalStateException("invalid UTF-16 codepoint");
                        }
                        i = c;
                        int i5 = (((c & 1023) << 10) | (c2 & 1023)) + 65536;
                        outputStream.write((i5 >> 18) | 240);
                        outputStream.write(((i5 >> 12) & 63) | 128);
                        outputStream.write(((i5 >> 6) & 63) | 128);
                        i3 = i5;
                    }
                    i = (i3 & 63) | 128;
                }
                outputStream.write(i2);
                i3 = c;
                i = (i3 & 63) | 128;
            }
            i = c;
            outputStream.write(i);
            i4++;
        }
    }

    public static byte[] h(String str) {
        return i(str.toCharArray());
    }

    public static byte[] i(char[] cArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            g(cArr, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            throw new IllegalStateException("cannot encode string to byte array!");
        }
    }

    public static String j(String str) {
        char[] charArray = str.toCharArray();
        boolean z = false;
        for (int i = 0; i != charArray.length; i++) {
            char c = charArray[i];
            if ('a' <= c && 'z' >= c) {
                charArray[i] = (char) (c - ' ');
                z = true;
            }
        }
        return z ? new String(charArray) : str;
    }
}
