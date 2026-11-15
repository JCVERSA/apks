package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.util.HashMap;
import java.util.Map;

public class y40 {
    public final int a;
    public final int b;
    public final int c;
    public final Map d;

    public y40(int i) {
        HashMap map = new HashMap();
        this.d = map;
        if (((-65535) & i) != 1) {
            throw new IllegalArgumentException();
        }
        this.a = i;
        int i2 = (i + 63) >>> 6;
        this.b = i2;
        this.c = i2 * 2;
        b(map, i);
    }

    public static int a(int i, int i2, int i3) {
        int i4 = 1;
        while (i3 >= 32) {
            i4 = (int) ((((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) (i2 * i4))) * ((long) i)) + ((long) i4)) >>> 32);
            i3 -= 32;
        }
        if (i3 <= 0) {
            return i4;
        }
        return (int) ((((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) ((i2 * i4) & ((-1) >>> (-i3))))) * ((long) i)) + ((long) i4)) >>> i3);
    }

    public static void b(Map map, int i) {
        int i2;
        int i3 = i - 2;
        int iA = 32 - c35.a(i3);
        int iM = cq6.m(-i);
        for (int i4 = 1; i4 < iA; i4++) {
            int i5 = 1 << (i4 - 1);
            if (i5 >= 64 && !map.containsKey(c35.d(i5))) {
                map.put(c35.d(i5), c35.d(a(i, iM, i5)));
            }
            int i6 = 1 << i4;
            if ((i3 & i6) != 0 && (i2 = (i6 - 1) & i3) >= 64 && !map.containsKey(c35.d(i2))) {
                map.put(c35.d(i2), c35.d(a(i, iM, i2)));
            }
        }
    }
}
