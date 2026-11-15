package com.cloud.tmc.miniutils.util;

public class HexUtil {
    private static final char[] DIGITS_LOWER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final char[] DIGITS_UPPER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static byte charToByte(char c10) {
        return (byte) "0123456789ABCDEF".indexOf(c10);
    }

    public static char[] encodeHex(byte[] bArr) {
        return encodeHex(bArr, true);
    }

    public static String encodeHexStr(byte[] bArr) {
        return encodeHexStr(bArr, true);
    }

    public static String extractData(byte[] bArr, int i10) {
        return formatHexString(new byte[]{bArr[i10]});
    }

    public static String formatHexString(byte[] bArr) {
        return formatHexString(bArr, false);
    }

    public static byte[] hexStringToBytes(String str) {
        if (str == null || str.equals("")) {
            return new byte[0];
        }
        String upperCase = str.trim().toUpperCase();
        int length = upperCase.length() / 2;
        char[] charArray = upperCase.toCharArray();
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) ((charToByte(charArray[i11 + 1]) & 255) | (charToByte(charArray[i11]) << 4));
        }
        return bArr;
    }

    public static char[] encodeHex(byte[] bArr, boolean z10) {
        return encodeHex(bArr, z10 ? DIGITS_LOWER : DIGITS_UPPER);
    }

    public static String encodeHexStr(byte[] bArr, boolean z10) {
        return encodeHexStr(bArr, z10 ? DIGITS_LOWER : DIGITS_UPPER);
    }

    public static String formatHexString(byte[] bArr, boolean z10) {
        if (bArr == null || bArr.length < 1) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10 & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            sb2.append(hexString);
            if (z10) {
                sb2.append(" ");
            }
        }
        return sb2.toString().trim();
    }

    protected static char[] encodeHex(byte[] bArr, char[] cArr) {
        if (bArr == null) {
            return null;
        }
        char[] cArr2 = new char[bArr.length << 1];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            cArr2[i10] = cArr[(b10 & 240) >>> 4];
            i10 += 2;
            cArr2[i11] = cArr[b10 & 15];
        }
        return cArr2;
    }

    protected static String encodeHexStr(byte[] bArr, char[] cArr) {
        return new String(encodeHex(bArr, cArr));
    }
}
