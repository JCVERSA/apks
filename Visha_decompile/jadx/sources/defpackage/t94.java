package defpackage;

import androidx.collection.ScatterMapKt;
import java.lang.reflect.Array;

public abstract class t94 {
    public static final byte[][] a = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 256, 256);
    public static final byte[] b = new byte[256];

    static {
        long j;
        int i = 1;
        long j2 = 72340172838076673L;
        while (true) {
            j = 506097522914230528L;
            if (i > 255) {
                break;
            }
            for (int i2 = 0; i2 < 256; i2 += 8) {
                cv7.k(f(j2, j), a[i], i2);
                j += 578721382704613384L;
            }
            j2 += ScatterMapKt.BitmaskLsb;
            i++;
        }
        for (int i3 = 0; i3 < 256; i3 += 8) {
            cv7.k(e(j), b, i3);
            j += 578721382704613384L;
        }
    }

    public static short a(short s, short s2) {
        return (short) (s ^ s2);
    }

    public static long b(long j) {
        long j2 = 3689348814741910323L & j;
        long j3 = j & (-3689348814741910324L);
        long j4 = (j2 << 2) ^ j3;
        long j5 = j3 >>> 2;
        return j5 ^ h(j4 ^ j5);
    }

    public static long c(long j, long j2) {
        long jI = i(j, j2);
        long j3 = 3689348814741910323L & jI;
        return (i(((j ^ (j << 2)) & (-3689348814741910324L)) ^ ((jI & (-3689348814741910324L)) >>> 2), ((j2 ^ (j2 << 2)) & (-3689348814741910324L)) ^ 2459565876494606882L) ^ (j3 << 2)) ^ j3;
    }

    public static long d(long j) {
        long j2 = j(j);
        return j2 ^ (h((-3689348814741910324L) & j2) >>> 2);
    }

    public static long e(long j) {
        long jG = g(j);
        long jG2 = g(jG);
        long jF = f(f(jG2, jG), g(jG2));
        return f(jG, g(f(g(g(g(jF))), jF)));
    }

    public static long f(long j, long j2) {
        long jC = c(j, j2);
        long j3 = 1085102592571150095L & jC;
        return (c(((j ^ (j << 4)) & (-1085102592571150096L)) ^ ((jC & (-1085102592571150096L)) >>> 4), ((j2 ^ (j2 << 4)) & (-1085102592571150096L)) ^ 578721382704613384L) ^ (j3 << 4)) ^ j3;
    }

    public static long g(long j) {
        long jD = d(j);
        return jD ^ (b((-1085102592571150096L) & jD) >>> 4);
    }

    public static long h(long j) {
        long j2 = 6148914691236517205L & j;
        long j3 = j & (-6148914691236517206L);
        return (j3 >>> 1) ^ ((j2 << 1) ^ j3);
    }

    public static long i(long j, long j2) {
        long j3 = (((j << 1) & j2) ^ ((j2 << 1) & j)) & (-6148914691236517206L);
        long j4 = j & j2;
        return ((j4 & (-6148914691236517206L)) >>> 1) ^ (j4 ^ j3);
    }

    public static long j(long j) {
        return j ^ (((-6148914691236517206L) & j) >>> 1);
    }

    public static short k(short s, short s2) {
        return (short) (a[s][s2] & 255);
    }
}
