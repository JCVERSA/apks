package com.cloud.tmc.kernel.api.bytedata;

public final class ByteOrderValues {
    public static final int BIG_ENDIAN = 1;
    public static final int LITTLE_ENDIAN = 2;

    private ByteOrderValues() {
    }

    public static boolean getBoolean(byte[] bArr) {
        return bArr[0] > 0;
    }

    public static byte getByte(byte[] bArr) {
        return getByte(bArr, 1);
    }

    public static double getDouble(byte[] bArr) {
        return getDouble(bArr, 1);
    }

    public static float getFloat(byte[] bArr) {
        return getFloat(bArr, 1);
    }

    public static int getInt(byte[] bArr) {
        return getInt(bArr, 1);
    }

    public static long getLong(byte[] bArr) {
        return getLong(bArr, 1);
    }

    public static short getShort(byte[] bArr) {
        return getShort(bArr, 1);
    }

    public static void putBoolean(boolean z10, byte[] bArr) {
        bArr[0] = z10 ? (byte) 1 : (byte) 0;
    }

    public static void putByte(byte b10, byte[] bArr) {
        putByte(b10, bArr, 1);
    }

    public static void putDouble(double d10, byte[] bArr) {
        putDouble(d10, bArr, 1);
    }

    public static void putFloat(float f10, byte[] bArr) {
        putFloat(f10, bArr, 1);
    }

    public static void putInt(int i10, byte[] bArr) {
        putInt(i10, bArr, 1);
    }

    public static void putLong(long j10, byte[] bArr) {
        putLong(j10, bArr, 1);
    }

    public static void putShort(short s10, byte[] bArr) {
        putShort(s10, bArr, 1);
    }

    public static byte getByte(byte[] bArr, int i10) {
        return bArr[0];
    }

    public static double getDouble(byte[] bArr, int i10) {
        return Double.longBitsToDouble(getLong(bArr, i10));
    }

    public static float getFloat(byte[] bArr, int i10) {
        return Float.intBitsToFloat(getInt(bArr, i10));
    }

    public static int getInt(byte[] bArr, int i10) {
        int i11;
        byte b10;
        if (i10 == 1) {
            i11 = ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8);
            b10 = bArr[3];
        } else {
            i11 = ((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[1] & 255) << 8);
            b10 = bArr[0];
        }
        return (b10 & 255) | i11;
    }

    public static long getLong(byte[] bArr, int i10) {
        long j10;
        byte b10;
        if (i10 == 1) {
            j10 = (((long) (bArr[0] & 255)) << 56) | (((long) (bArr[1] & 255)) << 48) | (((long) (bArr[2] & 255)) << 40) | (((long) (bArr[3] & 255)) << 32) | (((long) (bArr[4] & 255)) << 24) | (((long) (bArr[5] & 255)) << 16) | (((long) (bArr[6] & 255)) << 8);
            b10 = bArr[7];
        } else {
            j10 = (((long) (bArr[7] & 255)) << 56) | (((long) (bArr[6] & 255)) << 48) | (((long) (bArr[5] & 255)) << 40) | (((long) (bArr[4] & 255)) << 32) | (((long) (bArr[3] & 255)) << 24) | (((long) (bArr[2] & 255)) << 16) | (((long) (bArr[1] & 255)) << 8);
            b10 = bArr[0];
        }
        return j10 | ((long) (b10 & 255));
    }

    public static short getShort(byte[] bArr, int i10) {
        int i11;
        byte b10;
        if (i10 == 1) {
            i11 = (bArr[0] & 255) << 8;
            b10 = bArr[1];
        } else {
            i11 = (bArr[1] & 255) << 8;
            b10 = bArr[0];
        }
        return (short) ((b10 & 255) | i11);
    }

    public static void putByte(byte b10, byte[] bArr, int i10) {
        bArr[0] = b10;
    }

    public static void putDouble(double d10, byte[] bArr, int i10) {
        putLong(Double.doubleToLongBits(d10), bArr, i10);
    }

    public static void putFloat(float f10, byte[] bArr, int i10) {
        putInt(Float.floatToIntBits(f10), bArr, i10);
    }

    public static void putInt(int i10, byte[] bArr, int i11) {
        if (i11 == 1) {
            bArr[0] = (byte) (i10 >> 24);
            bArr[1] = (byte) (i10 >> 16);
            bArr[2] = (byte) (i10 >> 8);
            bArr[3] = (byte) i10;
            return;
        }
        bArr[0] = (byte) i10;
        bArr[1] = (byte) (i10 >> 8);
        bArr[2] = (byte) (i10 >> 16);
        bArr[3] = (byte) (i10 >> 24);
    }

    public static void putLong(long j10, byte[] bArr, int i10) {
        if (i10 == 1) {
            bArr[0] = (byte) (j10 >> 56);
            bArr[1] = (byte) (j10 >> 48);
            bArr[2] = (byte) (j10 >> 40);
            bArr[3] = (byte) (j10 >> 32);
            bArr[4] = (byte) (j10 >> 24);
            bArr[5] = (byte) (j10 >> 16);
            bArr[6] = (byte) (j10 >> 8);
            bArr[7] = (byte) j10;
            return;
        }
        bArr[0] = (byte) j10;
        bArr[1] = (byte) (j10 >> 8);
        bArr[2] = (byte) (j10 >> 16);
        bArr[3] = (byte) (j10 >> 24);
        bArr[4] = (byte) (j10 >> 32);
        bArr[5] = (byte) (j10 >> 40);
        bArr[6] = (byte) (j10 >> 48);
        bArr[7] = (byte) (j10 >> 56);
    }

    public static void putShort(short s10, byte[] bArr, int i10) {
        if (i10 == 1) {
            bArr[0] = (byte) (s10 >> 8);
            bArr[1] = (byte) s10;
        } else {
            bArr[0] = (byte) s10;
            bArr[1] = (byte) (s10 >> 8);
        }
    }
}
