package com.hunantv.imgo.log;

public class a {
    public static void a(byte[] bArr, short s, int i) {
        bArr[i + 1] = (byte) (s >> 8);
        bArr[i] = (byte) s;
    }

    public static int b(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 1] & 255) << 8);
    }

    public static short a(byte[] bArr, int i) {
        return (short) ((bArr[i] & 255) | (bArr[i + 1] << 8));
    }

    public static void a(byte[] bArr, int i, int i2) {
        bArr[i2 + 3] = (byte) (i >> 24);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2] = (byte) i;
    }
}
