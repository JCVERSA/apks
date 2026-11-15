package kz;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.StringCharacterIterator;

public abstract class b {

    private static boolean[] f65499a = new boolean[128];

    private static char[] f65500b = new char[128];

    private static char[] f65501c = new char[128];

    private static char[] f65502d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    static {
        for (int i10 = 0; i10 < 32; i10++) {
            f65499a[i10] = true;
            char[] cArr = f65500b;
            char[] cArr2 = f65502d;
            cArr[i10] = cArr2[i10 >> 4];
            f65501c[i10] = cArr2[i10 & 15];
        }
        f65499a[127] = true;
        f65500b[127] = '7';
        f65501c[127] = 'F';
        char[] cArr3 = {' ', '<', '>', '#', '%', '\"', '{', '}', '|', '\\', '^', '~', '[', ']', '`'};
        for (int i11 = 0; i11 < 15; i11++) {
            char c10 = cArr3[i11];
            f65499a[c10] = true;
            char[] cArr4 = f65500b;
            char[] cArr5 = f65502d;
            cArr4[c10] = cArr5[c10 >> 4];
            f65501c[c10] = cArr5[c10 & 15];
        }
    }

    public static String a(String str) {
        if (str.indexOf(37) == -1) {
            return str;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length());
        StringCharacterIterator stringCharacterIterator = new StringCharacterIterator(str);
        for (char cFirst = stringCharacterIterator.first(); cFirst != 65535; cFirst = stringCharacterIterator.next()) {
            if (cFirst == '%') {
                char next = stringCharacterIterator.next();
                if (next != 65535) {
                    int iDigit = Character.digit(next, 16);
                    char next2 = stringCharacterIterator.next();
                    if (next2 != 65535) {
                        byteArrayOutputStream.write((char) ((iDigit << 4) + Character.digit(next2, 16)));
                    }
                }
            } else {
                byteArrayOutputStream.write(cFirst);
            }
        }
        return byteArrayOutputStream.toString("UTF-8");
    }

    public static String b(String str) throws UnsupportedEncodingException {
        char cCharAt;
        int length = str.length();
        StringBuffer stringBuffer = null;
        int i10 = 0;
        while (i10 < length && (cCharAt = str.charAt(i10)) < 128) {
            if (f65499a[cCharAt]) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer(str.substring(0, i10));
                }
                stringBuffer.append('%');
                stringBuffer.append(f65500b[cCharAt]);
                stringBuffer.append(f65501c[cCharAt]);
            } else if (stringBuffer != null) {
                stringBuffer.append(cCharAt);
            }
            i10++;
        }
        if (i10 < length) {
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer(str.substring(0, i10));
            }
            for (byte b10 : str.substring(i10).getBytes("UTF-8")) {
                if (b10 < 0) {
                    int i11 = b10 + 256;
                    stringBuffer.append('%');
                    stringBuffer.append(f65502d[i11 >> 4]);
                    stringBuffer.append(f65502d[i11 & 15]);
                } else if (f65499a[b10]) {
                    stringBuffer.append('%');
                    stringBuffer.append(f65500b[b10]);
                    stringBuffer.append(f65501c[b10]);
                } else {
                    stringBuffer.append((char) b10);
                }
            }
        }
        return stringBuffer == null ? str : stringBuffer.toString();
    }

    public static String c(String str) {
        return d(str);
    }

    static String d(String str) {
        URL url;
        try {
            url = new URL(str);
        } catch (MalformedURLException unused) {
            url = null;
        }
        if (url == null || !OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE.equals(url.getProtocol())) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Can only handle valid file: URIs, not ");
            stringBuffer.append(str);
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        StringBuffer stringBuffer2 = new StringBuffer(url.getHost());
        if (stringBuffer2.length() > 0) {
            char c10 = File.separatorChar;
            stringBuffer2.insert(0, c10).insert(0, c10);
        }
        String file = url.getFile();
        int iIndexOf = file.indexOf(63);
        if (iIndexOf >= 0) {
            file = file.substring(0, iIndexOf);
        }
        stringBuffer2.append(file);
        String strReplace = stringBuffer2.toString().replace('/', File.separatorChar);
        if (File.pathSeparatorChar == ';' && strReplace.startsWith("\\") && strReplace.length() > 2 && Character.isLetter(strReplace.charAt(1)) && strReplace.lastIndexOf(58) > -1) {
            strReplace = strReplace.substring(1);
        }
        try {
            String strA = a(strReplace);
            String property = System.getProperty("user.dir");
            int iIndexOf2 = property.indexOf(":");
            if (iIndexOf2 <= 0 || !strA.startsWith(File.separator)) {
                return strA;
            }
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(property.substring(0, iIndexOf2 + 1));
            stringBuffer3.append(strA);
            return stringBuffer3.toString();
        } catch (UnsupportedEncodingException e10) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("Could not convert URI ");
            stringBuffer4.append(strReplace);
            stringBuffer4.append(" to path: ");
            stringBuffer4.append(e10.getMessage());
            throw new IllegalStateException(stringBuffer4.toString());
        }
    }
}
