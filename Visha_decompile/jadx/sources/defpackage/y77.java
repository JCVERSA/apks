package defpackage;

import android.content.Context;
import android.content.res.Resources;
import androidx.media3.ui.DefaultTimeBar;
import com.transsion.widgetslib.R;
import java.util.HashMap;

public final class y77 {
    public static final y77 a = new y77();
    public static final HashMap b = new HashMap(4);

    public final z77 a(float f, float f2, r67 r67Var, int i) {
        y45.j(r67Var, "config");
        if (f <= 0.0f || f2 <= 0.0f) {
            return new z77(new float[]{0.0f, 1.0f}, new int[]{DefaultTimeBar.DEFAULT_UNPLAYED_COLOR, 234881023}, 0.0f);
        }
        float fJ = wn8.j(r67Var.getGapSizeRatio(), 0.0f, 1.0f);
        float fJ2 = wn8.j(r67Var.getMainPeakBrightness(), 0.0f, 1.0f);
        float fJ3 = wn8.j(r67Var.getSecondaryPeakBrightnessRatio(), 0.0f, 1.0f);
        int iK = wn8.k(r67Var.getCurvePower(), 1, 7);
        float fJ4 = wn8.j(r67Var.getGapHardness(), 0.0f, 1.0f);
        float fJ5 = wn8.j(r67Var.getGapBrightness(), 0.0f, 1.0f);
        float f3 = f * 0.5f;
        float f4 = f2 * 0.5f;
        double d = f4;
        double d2 = f3;
        double d3 = 6.2831855f;
        float fAtan2 = (float) (Math.atan2(d, d2) / d3);
        float fAtan3 = (float) (Math.atan2(d, -d2) / d3);
        double d4 = -f4;
        float fAtan4 = (float) ((Math.atan2(d4, -f3) + 6.283185307179586d) / d3);
        float fAtan5 = (float) ((Math.atan2(d4, d2) + 6.283185307179586d) / d3);
        float f5 = 1.0f - fAtan5;
        float fMax = Math.max(1.0E-4f, fJ * Math.min(Math.min(f5, fAtan5 - fAtan4), Math.min(fAtan4 - fAtan3, fAtan3 - fAtan2)) * 0.98f);
        float f6 = 255;
        int iC = s86.c(f6 * fJ2);
        float f7 = iC;
        int iC2 = s86.c(fJ3 * f7);
        int iK2 = wn8.k(Math.min(s86.c(f6 * fJ5), iC2), 0, 255);
        float f8 = 0.75f - (0.65f * fJ4);
        int iC3 = s86.c(f7 * f8);
        int iC4 = s86.c(f8 * iC2);
        float f9 = fAtan2 - (((f5 - fMax) + fAtan2) * 0.25f);
        float f10 = fAtan3 - fMax;
        float f11 = ((f10 - fAtan2) * 0.25f) + fAtan2;
        float f12 = fAtan3 + fMax;
        float f13 = fAtan4 - ((fAtan4 - f12) * 0.25f);
        float f14 = fAtan5 - fMax;
        float f15 = fAtan4 + ((f14 - fAtan4) * 0.25f);
        double d5 = iK;
        float fPow = 1.0f - ((float) Math.pow(0.33333334f, d5));
        float fPow2 = 1.0f - ((float) Math.pow(0.6666667f, d5));
        float f16 = f10 - f11;
        float f17 = (f16 * 0.33333334f) + f11;
        float f18 = (f16 * 0.6666667f) + f11;
        float f19 = iC4;
        int iC5 = s86.c(f19 * fPow);
        s86.c(f19 * fPow2);
        float f20 = f13 - f12;
        float f21 = f12 + (f20 * 0.33333334f);
        float f22 = f12 + (f20 * 0.6666667f);
        float f23 = iC3;
        float f24 = fPow2 * f23;
        int iC6 = s86.c(f24);
        float f25 = f23 * fPow;
        int iC7 = s86.c(f25);
        float f26 = f14 - f15;
        float f27 = f15 + (0.33333334f * f26);
        float f28 = f15 + (f26 * 0.6666667f);
        int iC8 = s86.c(f25);
        int iC9 = s86.c(f24);
        float f29 = fMax + fAtan5;
        float f30 = 1.0f - f29;
        float f31 = f30 + f9;
        int iC10 = s86.c((f31 > 0.0f ? f30 / f31 : 0.5f) * f19);
        return new z77(new float[]{0.0f, f9, fAtan2, f11, f17, f18, f10, fAtan3, f12, f21, f22, f13, fAtan4, f15, f27, f28, f14, fAtan5, f29, 1.0f}, new int[]{b(i, iC10), b(i, iC4), b(i, iC2), b(i, iC4), b(i, Math.max(iC5, iK2)), b(i, iK2), b(i, iK2), b(i, iK2), b(i, iK2), b(i, iC6), b(i, iC7), b(i, iC3), b(i, iC), b(i, iC3), b(i, Math.max(iC8, iK2)), b(i, Math.max(iC9, iK2)), b(i, iK2), b(i, iK2), b(i, iK2), b(i, iC10)}, r67Var.getGapRotationDegrees());
    }

    public final int b(int i, int i2) {
        return (wn8.k(i2, 0, 255) << 24) | (i & 16777215);
    }

    public final r67 c(Context context, int i) {
        int i2;
        int i3;
        y45.j(context, "context");
        HashMap map = b;
        Integer numValueOf = Integer.valueOf(i);
        Object r67Var = map.get(numValueOf);
        if (r67Var == null) {
            Resources resources = context.getResources();
            if (i == 1) {
                i2 = R.integer.os_liquid_outline_gap_rotation_circle;
            } else if (i != 3) {
                i2 = i != 4 ? R.integer.os_liquid_outline_gap_rotation_square : R.integer.os_liquid_outline_gap_rotation_capsule_v;
            } else {
                i2 = R.integer.os_liquid_outline_gap_rotation_capsule_h;
            }
            if (i == 1) {
                i3 = R.integer.os_liquid_outline_gap_size_circle;
            } else if (i != 3) {
                i3 = i != 4 ? R.integer.os_liquid_outline_gap_size_square : R.integer.os_liquid_outline_gap_size_capsule_v;
            } else {
                i3 = R.integer.os_liquid_outline_gap_size_capsule_h;
            }
            r67Var = new r67(resources.getInteger(i2), resources.getInteger(i3) / 100.0f, resources.getInteger(R.integer.os_liquid_outline_peak_brightness) / 100.0f, resources.getInteger(R.integer.os_liquid_outline_secondary_ratio) / 100.0f, resources.getInteger(R.integer.os_liquid_outline_curve_power), 0.0f, resources.getInteger(R.integer.os_liquid_outline_gap_brightness) / 100.0f, 32, null);
            map.put(numValueOf, r67Var);
        }
        return (r67) r67Var;
    }

    public final int d(float f, float f2, float f3) {
        if (f <= 0.0f || f2 <= 0.0f) {
            return 2;
        }
        float f4 = f / f2;
        if (f4 > 1.5f) {
            return 3;
        }
        if (f4 < 0.6666667f) {
            return 4;
        }
        float fMax = Math.max(f, f2);
        return (fMax <= 0.0f || (f3 * 2.0f) + 1.0f < fMax) ? 2 : 1;
    }
}
