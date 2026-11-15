package com.transsion.athena.aatnhe;

import java.util.HashMap;
import java.util.Map;

public class aethna {

    private static final char[] f41409a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};

    private static final Map<Character, Integer> f41410b = new HashMap();

    private long f41411c = 0;

    private byte f41412d = 0;

    static {
        for (int i10 = 0; i10 < 32; i10++) {
            f41410b.put(Character.valueOf(f41409a[i10]), Integer.valueOf(i10));
        }
    }

    private aethna(double d10, double d11, int i10) {
        int iMin = Math.min(i10, 64);
        double[] dArr = {-90.0d, 90.0d};
        double[] dArr2 = {-180.0d, 180.0d};
        boolean z10 = true;
        while (this.f41412d < iMin) {
            if (z10) {
                a(d11, dArr2);
            } else {
                a(d10, dArr);
            }
            z10 = !z10;
        }
        this.f41411c <<= 64 - iMin;
    }

    public static aethna a(double d10, double d11, int i10) {
        if (i10 > 12) {
            throw new IllegalArgumentException("A geohash can only be 12 character long.");
        }
        int i11 = i10 * 5;
        return new aethna(d10, d11, i11 <= 60 ? i11 : 60);
    }

    private void a(double d10, double[] dArr) {
        double d11 = (dArr[0] + dArr[1]) / 2.0d;
        if (d10 >= d11) {
            this.f41412d = (byte) (this.f41412d + 1);
            this.f41411c = (this.f41411c << 1) | 1;
            dArr[0] = d11;
        } else {
            this.f41412d = (byte) (this.f41412d + 1);
            this.f41411c <<= 1;
            dArr[1] = d11;
        }
    }

    public String a() {
        if (this.f41412d % 5 == 0) {
            StringBuilder sb2 = new StringBuilder();
            long j10 = this.f41411c;
            int iCeil = (int) Math.ceil(((double) this.f41412d) / 5.0d);
            for (int i10 = 0; i10 < iCeil; i10++) {
                sb2.append(f41409a[(int) (((-576460752303423488L) & j10) >>> 59)]);
                j10 <<= 5;
            }
            return sb2.toString();
        }
        throw new IllegalStateException("Cannot convert a geohash to base32 if the precision is not a multiple of 5.");
    }
}
