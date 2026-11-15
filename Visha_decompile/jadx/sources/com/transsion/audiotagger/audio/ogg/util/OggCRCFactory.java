package com.transsion.audiotagger.audio.ogg.util;

import java.util.logging.Logger;

public class OggCRCFactory {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.ogg");
    private static long[] crc_lookup = new long[256];
    private static boolean init = false;

    public static byte[] computeCRC(byte[] bArr) {
        if (!init) {
            init();
        }
        long j = 0;
        for (byte b : bArr) {
            j = (j << 8) ^ crc_lookup[(int) (((j >>> 24) & 255) ^ ((long) u(b)))];
        }
        return new byte[]{(byte) (j & 255), (byte) ((j >>> 8) & 255), (byte) ((j >>> 16) & 255), (byte) ((j >>> 24) & 255)};
    }

    public static void init() {
        for (int i = 0; i < 256; i++) {
            long j = i << 24;
            for (int i2 = 0; i2 < 8; i2++) {
                j = (2147483648L & j) != 0 ? (j << 1) ^ 79764919 : j << 1;
            }
            crc_lookup[i] = j;
        }
        init = true;
    }

    private static int u(int i) {
        return i & 255;
    }

    public boolean checkCRC(byte[] bArr, byte[] bArr2) {
        return new String(bArr2).equals(new String(computeCRC(bArr)));
    }
}
