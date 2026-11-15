package com.amazonaws.util;

public class BinaryUtils {
    public static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str);
    }

    public static byte[] b(String str) {
        byte[] bArr = new byte[(str.length() + 1) / 2];
        int i10 = 0;
        int i11 = 0;
        while (i10 < str.length()) {
            int i12 = i10 + 2;
            bArr[i11] = (byte) Integer.parseInt(str.substring(i10, i12), 16);
            i10 = i12;
            i11++;
        }
        return bArr;
    }

    public static String c(byte[] bArr) {
        return Base64.encodeAsString(bArr);
    }

    public static String d(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10);
            if (hexString.length() == 1) {
                sb2.append("0");
            } else if (hexString.length() == 8) {
                hexString = hexString.substring(6);
            }
            sb2.append(hexString);
        }
        return StringUtils.b(sb2.toString());
    }
}
