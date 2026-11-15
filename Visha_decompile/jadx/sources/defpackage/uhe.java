package defpackage;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.media3.muxer.MuxerUtil;
import com.google.android.gms.internal.ads.s7;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;

public final class uhe {
    public final String a;
    public final int b;
    public final Integer c;
    public final Integer d;
    public final float e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final int j;

    public uhe(String str, int i, Integer num, Integer num2, float f, boolean z, boolean z2, boolean z3, boolean z4, int i2) {
        this.a = str;
        this.b = i;
        this.c = num;
        this.d = num2;
        this.e = f;
        this.f = z;
        this.g = z2;
        this.h = z3;
        this.i = z4;
        this.j = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x010d, code lost:
    
        if (r4 != 3) goto L61;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static uhe b(String str, she sheVar) {
        float f;
        int i;
        String strTrim;
        n7g.d(str.startsWith("Style:"));
        String[] strArrSplit = TextUtils.split(str.substring(6), StringUtils.COMMA);
        int length = strArrSplit.length;
        int i2 = sheVar.k;
        if (length != i2) {
            Object[] objArr = {Integer.valueOf(i2), Integer.valueOf(length), str};
            int i3 = kfh.a;
            zrg.f("SsaStyle", String.format(Locale.US, "Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", objArr));
            return null;
        }
        try {
            String strTrim2 = strArrSplit[sheVar.a].trim();
            int i4 = sheVar.b;
            int iD = i4 != -1 ? d(strArrSplit[i4].trim()) : -1;
            int i5 = sheVar.c;
            Integer numC = i5 != -1 ? c(strArrSplit[i5].trim()) : null;
            int i6 = sheVar.d;
            Integer numC2 = i6 != -1 ? c(strArrSplit[i6].trim()) : null;
            int i7 = sheVar.e;
            if (i7 != -1) {
                String strTrim3 = strArrSplit[i7].trim();
                try {
                    f = Float.parseFloat(strTrim3);
                } catch (NumberFormatException e) {
                    zrg.g("SsaStyle", "Failed to parse font size: '" + strTrim3 + "'", e);
                    f = -3.4028235E38f;
                }
            } else {
                f = -3.4028235E38f;
            }
            int i8 = sheVar.f;
            boolean z = i8 != -1 && e(strArrSplit[i8].trim());
            int i9 = sheVar.g;
            boolean z2 = i9 != -1 && e(strArrSplit[i9].trim());
            int i10 = sheVar.h;
            boolean z3 = i10 != -1 && e(strArrSplit[i10].trim());
            int i11 = sheVar.i;
            boolean z4 = i11 != -1 && e(strArrSplit[i11].trim());
            int i12 = sheVar.j;
            if (i12 != -1) {
                strTrim = strArrSplit[i12].trim();
                try {
                    i = Integer.parseInt(strTrim.trim());
                    if (i != 1) {
                    }
                } catch (NumberFormatException unused) {
                }
            } else {
                i = -1;
            }
            return new uhe(strTrim2, iD, numC, numC2, f, z, z2, z3, z4, i);
        } catch (RuntimeException e2) {
            zrg.g("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e2);
            return null;
        }
        zrg.f("SsaStyle", "Ignoring unknown BorderStyle: ".concat(String.valueOf(strTrim)));
        i = -1;
        return new uhe(strTrim2, iD, numC, numC2, f, z, z2, z3, z4, i);
    }

    public static Integer c(String str) {
        try {
            long j = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            n7g.d(j <= MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            return Integer.valueOf(Color.argb(s7.b(((j >> 24) & 255) ^ 255), s7.b(j & 255), s7.b((j >> 8) & 255), s7.b((j >> 16) & 255)));
        } catch (IllegalArgumentException e) {
            zrg.g("SsaStyle", "Failed to parse color expression: '" + str + "'", e);
            return null;
        }
    }

    public static int d(String str) {
        try {
            int i = Integer.parseInt(str.trim());
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    return i;
                default:
                    zrg.f("SsaStyle", "Ignoring unknown alignment: ".concat(String.valueOf(str)));
                    return -1;
            }
        } catch (NumberFormatException unused) {
        }
    }

    public static boolean e(String str) {
        try {
            int i = Integer.parseInt(str);
            return i == 1 || i == -1;
        } catch (NumberFormatException e) {
            zrg.g("SsaStyle", "Failed to parse boolean value: '" + str + "'", e);
            return false;
        }
    }
}
