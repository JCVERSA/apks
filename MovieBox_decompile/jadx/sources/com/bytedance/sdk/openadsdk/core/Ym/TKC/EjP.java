package com.bytedance.sdk.openadsdk.core.Ym.TKC;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.List;

public class EjP {
    public static final List<String> Sj = Arrays.asList(MimeTypes.VIDEO_MP4, MimeTypes.VIDEO_H263);

    public static double Sj(int i10, double d10, int i11, int i12, int i13, @Nullable String str) {
        double dSj = Sj(i10, d10, i11, i12);
        return Sj(str) * (1.0d / ((dSj + 1.0d) + Sj(i13)));
    }

    private static double Sj(int i10, double d10, int i11, int i12) {
        return (d10 > 0.0d ? Math.abs(d10 - (i12 > 0 ? ((double) i11) / ((double) i12) : 0.0d)) : 0.0d) + (i10 > 0 ? Math.abs((i10 - i11) / i10) : 0.0d);
    }

    private static double Sj(int i10) {
        int iMax = Math.max(i10, 0);
        if (700 > iMax || iMax > 1500) {
            return Math.min(Math.abs(700 - iMax) / 700.0f, Math.abs(1500 - iMax) / 1500.0f);
        }
        return 0.0d;
    }

    private static double Sj(String str) {
        if (str == null) {
            str = "";
        }
        int iHashCode = str.hashCode();
        if (iHashCode != -1664118616) {
            return (iHashCode == 1331848029 && str.equals(MimeTypes.VIDEO_MP4)) ? 1.5d : 1.0d;
        }
        str.equals(MimeTypes.VIDEO_H263);
        return 1.0d;
    }
}
