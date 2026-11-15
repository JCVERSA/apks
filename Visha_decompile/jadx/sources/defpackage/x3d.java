package defpackage;

import java.util.HashMap;
import java.util.Map;

public class x3d {
    public static final char[] c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    public static final Map d = new HashMap();
    public long a = 0;
    public byte b = 0;

    static {
        for (int i = 0; i < 32; i++) {
            d.put(Character.valueOf(c[i]), Integer.valueOf(i));
        }
    }

    public x3d(double d2, double d3, int i) {
        int iMin = Math.min(i, 64);
        double[] dArr = {-90.0d, 90.0d};
        double[] dArr2 = {-180.0d, 180.0d};
        boolean z = true;
        while (this.b < iMin) {
            if (z) {
                c(d3, dArr2);
            } else {
                c(d2, dArr);
            }
            z = !z;
        }
        this.a <<= 64 - iMin;
    }

    public static x3d a(double d2, double d3, int i) {
        if (i > 12) {
            throw new IllegalArgumentException("A geohash can only be 12 character long.");
        }
        int i2 = i * 5;
        return new x3d(d2, d3, i2 <= 60 ? i2 : 60);
    }

    public String b() {
        if (this.b % 5 != 0) {
            throw new IllegalStateException("Cannot convert a geohash to base32 if the precision is not a multiple of 5.");
        }
        StringBuilder sb = new StringBuilder();
        long j = this.a;
        int iCeil = (int) Math.ceil(((double) this.b) / 5.0d);
        for (int i = 0; i < iCeil; i++) {
            sb.append(c[(int) (((-576460752303423488L) & j) >>> 59)]);
            j <<= 5;
        }
        return sb.toString();
    }

    public final void c(double d2, double[] dArr) {
        double d3 = (dArr[0] + dArr[1]) / 2.0d;
        if (d2 >= d3) {
            this.b = (byte) (this.b + 1);
            this.a = (this.a << 1) | 1;
            dArr[0] = d3;
        } else {
            this.b = (byte) (this.b + 1);
            this.a <<= 1;
            dArr[1] = d3;
        }
    }
}
