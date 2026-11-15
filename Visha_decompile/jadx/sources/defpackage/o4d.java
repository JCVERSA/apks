package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public abstract class o4d {
    public static final char[] a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

    public static int a(char c) {
        if (c >= 'A' && c <= 'Z') {
            return c - 'A';
        }
        if (c >= 'a' && c <= 'z') {
            return c - 'G';
        }
        if (c >= '0' && c <= '9') {
            return c + 4;
        }
        if (c == '+') {
            return 62;
        }
        if (c == '/') {
            return 63;
        }
        if (c == '=') {
            return 0;
        }
        throw new RuntimeException("unexpected code: ".concat(String.valueOf(c)));
    }

    public static String b(byte[] bArr) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder((bArr.length * 3) / 2);
        int i = length - 3;
        int i2 = 0;
        int i3 = 0;
        while (i2 <= i) {
            int i4 = ((bArr[i2] & 255) << 16) | ((bArr[i2 + 1] & 255) << 8) | (bArr[i2 + 2] & 255);
            char[] cArr = a;
            sb.append(cArr[(i4 >> 18) & 63]);
            sb.append(cArr[(i4 >> 12) & 63]);
            sb.append(cArr[(i4 >> 6) & 63]);
            sb.append(cArr[i4 & 63]);
            i2 += 3;
            int i5 = i3 + 1;
            if (i3 >= 14) {
                sb.append(" ");
                i3 = 0;
            } else {
                i3 = i5;
            }
        }
        if (i2 == length - 2) {
            int i6 = ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2] & 255) << 16);
            char[] cArr2 = a;
            sb.append(cArr2[(i6 >> 18) & 63]);
            sb.append(cArr2[(i6 >> 12) & 63]);
            sb.append(cArr2[(i6 >> 6) & 63]);
            sb.append("=");
        } else if (i2 == length - 1) {
            int i7 = (bArr[i2] & 255) << 16;
            char[] cArr3 = a;
            sb.append(cArr3[(i7 >> 18) & 63]);
            sb.append(cArr3[(i7 >> 12) & 63]);
            sb.append("==");
        }
        return sb.toString();
    }

    public static void c(String str, OutputStream outputStream) throws IOException {
        int length = str.length();
        int i = 0;
        while (true) {
            if (i < length && str.charAt(i) <= ' ') {
                i++;
            } else {
                if (i == length) {
                    return;
                }
                int i2 = i + 2;
                int i3 = i + 3;
                int iA = (a(str.charAt(i)) << 18) + (a(str.charAt(i + 1)) << 12) + (a(str.charAt(i2)) << 6) + a(str.charAt(i3));
                outputStream.write((iA >> 16) & 255);
                if (str.charAt(i2) == '=') {
                    return;
                }
                outputStream.write((iA >> 8) & 255);
                if (str.charAt(i3) == '=') {
                    return;
                }
                outputStream.write(iA & 255);
                i += 4;
            }
        }
    }

    public static byte[] d(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                c(str, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                    return byteArray;
                } catch (IOException unused) {
                    return byteArray;
                }
            } catch (IOException unused2) {
                return null;
            }
        } catch (Exception unused3) {
            byteArrayOutputStream.close();
            return null;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (IOException unused4) {
            }
            throw th;
        }
    }
}
