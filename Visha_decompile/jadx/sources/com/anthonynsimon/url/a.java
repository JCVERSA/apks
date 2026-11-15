package com.anthonynsimon.url;

import com.anthonynsimon.url.exceptions.InvalidHexException;
import com.anthonynsimon.url.exceptions.MalformedURLException;
import java.nio.charset.StandardCharsets;
import org.apache.commons.io.IOUtils;

public abstract class a {
    public static final char[] a = {'!', '$', '&', '\'', '(', ')', '*', '+', ',', ';', '=', ':', '[', ']', '<', '>', '\"'};
    public static final char[] b = {'-', '_', '.', '~'};
    public static final short[] c = {0, 192, 224, 240};

    public static class C0026a {
        public static final int[] a;

        static {
            int[] iArr = new int[URLPart.values().length];
            a = iArr;
            try {
                iArr[URLPart.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[URLPart.CREDENTIALS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[URLPart.QUERY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[URLPart.FRAGMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static String a(String str) throws MalformedURLException {
        if (!d(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        int length = str.length();
        String str2 = "";
        int i = 0;
        while (i < charArray.length) {
            char c2 = charArray[i];
            if (c2 != '%') {
                str2 = str2 + c2;
                i++;
            } else {
                if (i + 2 >= length) {
                    throw new MalformedURLException("invalid escape sequence");
                }
                try {
                    byte bG = g(str.substring(i + 1, i + 3).toCharArray());
                    int i2 = 0;
                    for (short s : c) {
                        if ((bG & s) != s) {
                            break;
                        }
                        i2++;
                    }
                    byte[] bytes = new byte[i2];
                    int i3 = 0;
                    while (i3 < i2) {
                        if (str.charAt(i) != '%') {
                            byte[] bArr = new byte[i3];
                            for (int i4 = 0; i4 < i3; i4++) {
                                bArr[i4] = bytes[i4];
                            }
                            bytes = bArr;
                            break;
                        }
                        int i5 = i + 3;
                        if (i5 > length) {
                            bytes = "�".getBytes();
                            break;
                        }
                        try {
                            bytes[i3] = g(str.substring(i + 1, i5).toCharArray());
                            i3++;
                            i = i5;
                        } catch (InvalidHexException e) {
                            throw new MalformedURLException(e.getMessage());
                        }
                    }
                    str2 = str2 + new String(bytes);
                } catch (InvalidHexException e2) {
                    throw new MalformedURLException(e2.getMessage());
                }
            }
        }
        return str2;
    }

    public static String b(String str, URLPart uRLPart) {
        if (!c(str, uRLPart)) {
            return str;
        }
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        String str2 = "";
        int i = 0;
        while (i < bytes.length) {
            int i2 = 0;
            for (short s : c) {
                if ((bytes[i] & s) != s) {
                    break;
                }
                i2++;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                char c2 = (char) bytes[i];
                str2 = f(c2, uRLPart) ? str2 + "%" + "0123456789ABCDEF".charAt((bytes[i] & 255) >> 4) + "0123456789ABCDEF".charAt(bytes[i] & 15) : str2 + c2;
                i++;
            }
        }
        return str2;
    }

    public static boolean c(String str, URLPart uRLPart) {
        for (char c2 : str.toCharArray()) {
            if (f(c2, uRLPart)) {
                return true;
            }
        }
        return false;
    }

    public static boolean d(String str) {
        return str.indexOf(37) >= 0;
    }

    public static int e(int i, int i2) {
        int i3 = 1;
        while (i2 > 0) {
            i3 *= i;
            i2--;
        }
        return i3;
    }

    public static boolean f(char c2, URLPart uRLPart) {
        if (('A' <= c2 && c2 <= 'Z') || (('a' <= c2 && c2 <= 'z') || ('0' <= c2 && c2 <= '9'))) {
            return false;
        }
        if (uRLPart == URLPart.HOST || uRLPart == URLPart.PATH) {
            if (c2 == '%') {
                return true;
            }
            for (char c3 : a) {
                if (c3 == c2) {
                    return false;
                }
            }
        }
        for (char c4 : b) {
            if (c4 == c2) {
                return false;
            }
        }
        char[] cArr = {'$', '&', '+', ',', IOUtils.DIR_SEPARATOR_UNIX, ':', ';', '=', '?', '@'};
        for (int i = 0; i < 10; i++) {
            if (cArr[i] == c2) {
                int i2 = C0026a.a[uRLPart.ordinal()];
                if (i2 == 1) {
                    return c2 == '?';
                }
                if (i2 != 2) {
                    return i2 != 4;
                }
                return c2 == '@' || c2 == '/' || c2 == '?' || c2 == ':';
            }
        }
        return true;
    }

    public static byte g(char[] cArr) throws InvalidHexException {
        int i;
        int iE = 0;
        for (int i2 = 0; i2 < cArr.length; i2++) {
            char c2 = cArr[(cArr.length - i2) - 1];
            if ('0' <= c2 && c2 <= '9') {
                i = c2 - '0';
            } else if ('a' > c2 || c2 > 'f') {
                i = ('A' > c2 || c2 > 'F') ? -1 : c2 - '7';
            } else {
                i = c2 - 'W';
            }
            if (i < 0 || i >= 16) {
                throw new InvalidHexException("not a valid hex char: " + c2);
            }
            iE += i * e(16, i2);
        }
        return (byte) iE;
    }
}
