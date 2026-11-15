package defpackage;

import androidx.media3.muxer.MuxerUtil;

public class j25 {
    public int a;
    public long b;

    public j25(long j, int i) {
        this.b = j;
        this.a = i;
    }

    public static j25 b(String str, int i, int i2) {
        long j;
        int i3;
        if (i >= i2) {
            return null;
        }
        long j2 = 0;
        int i4 = i;
        while (i4 < i2) {
            char cCharAt = str.charAt(i4);
            if (cCharAt < '0' || cCharAt > '9') {
                if (cCharAt >= 'A' && cCharAt <= 'F') {
                    j = j2 * 16;
                    i3 = cCharAt - 'A';
                } else {
                    if (cCharAt < 'a' || cCharAt > 'f') {
                        break;
                    }
                    j = j2 * 16;
                    i3 = cCharAt - 'a';
                }
                j2 = j + ((long) i3) + 10;
            } else {
                j2 = (j2 * 16) + ((long) (cCharAt - '0'));
            }
            if (j2 > MuxerUtil.UNSIGNED_INT_MAX_VALUE) {
                return null;
            }
            i4++;
        }
        if (i4 == i) {
            return null;
        }
        return new j25(j2, i4);
    }

    public static j25 c(String str, int i, int i2, boolean z) {
        if (i >= i2) {
            return null;
        }
        boolean z2 = false;
        if (z) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '+') {
                i++;
            } else if (cCharAt == '-') {
                z2 = true;
                i++;
            }
        }
        long j = 0;
        int i3 = i;
        while (i3 < i2) {
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 < '0' || cCharAt2 > '9') {
                break;
            }
            if (z2) {
                j = (j * 10) - ((long) (cCharAt2 - '0'));
                if (j < -2147483648L) {
                    return null;
                }
            } else {
                j = (j * 10) + ((long) (cCharAt2 - '0'));
                if (j > 2147483647L) {
                    return null;
                }
            }
            i3++;
        }
        if (i3 == i) {
            return null;
        }
        return new j25(j, i3);
    }

    public int a() {
        return this.a;
    }

    public int d() {
        return (int) this.b;
    }
}
