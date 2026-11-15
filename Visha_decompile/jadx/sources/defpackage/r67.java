package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class r67 {
    public final float a;
    public final float b;
    public final float c;
    public final float d;
    public final int e;
    public final float f;
    public final float g;

    public r67(float f, float f2, float f3, float f4, int i, float f5, float f6) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.e = i;
        this.f = f5;
        this.g = f6;
    }

    public static r67 b(r67 r67Var, float f, float f2, float f3, float f4, int i, float f5, float f6, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            f = r67Var.a;
        }
        if ((i2 & 2) != 0) {
            f2 = r67Var.b;
        }
        float f7 = f2;
        if ((i2 & 4) != 0) {
            f3 = r67Var.c;
        }
        float f8 = f3;
        if ((i2 & 8) != 0) {
            f4 = r67Var.d;
        }
        float f9 = f4;
        if ((i2 & 16) != 0) {
            i = r67Var.e;
        }
        int i3 = i;
        if ((i2 & 32) != 0) {
            f5 = r67Var.f;
        }
        float f10 = f5;
        if ((i2 & 64) != 0) {
            f6 = r67Var.g;
        }
        return r67Var.a(f, f7, f8, f9, i3, f10, f6);
    }

    public final r67 a(float f, float f2, float f3, float f4, int i, float f5, float f6) {
        return new r67(f, f2, f3, f4, i, f5, f6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r67)) {
            return false;
        }
        r67 r67Var = (r67) obj;
        return Float.compare(this.a, r67Var.a) == 0 && Float.compare(this.b, r67Var.b) == 0 && Float.compare(this.c, r67Var.c) == 0 && Float.compare(this.d, r67Var.d) == 0 && this.e == r67Var.e && Float.compare(this.f, r67Var.f) == 0 && Float.compare(this.g, r67Var.g) == 0;
    }

    public final int getCurvePower() {
        return this.e;
    }

    public final float getGapBrightness() {
        return this.g;
    }

    public final float getGapHardness() {
        return this.f;
    }

    public final float getGapRotationDegrees() {
        return this.a;
    }

    public final float getGapSizeRatio() {
        return this.b;
    }

    public final float getMainPeakBrightness() {
        return this.c;
    }

    public final float getSecondaryPeakBrightnessRatio() {
        return this.d;
    }

    public int hashCode() {
        return (((((((((((Float.hashCode(this.a) * 31) + Float.hashCode(this.b)) * 31) + Float.hashCode(this.c)) * 31) + Float.hashCode(this.d)) * 31) + Integer.hashCode(this.e)) * 31) + Float.hashCode(this.f)) * 31) + Float.hashCode(this.g);
    }

    public String toString() {
        return "OSLiquidOutlineConfig(gapRotationDegrees=" + this.a + ", gapSizeRatio=" + this.b + ", mainPeakBrightness=" + this.c + ", secondaryPeakBrightnessRatio=" + this.d + ", curvePower=" + this.e + ", gapHardness=" + this.f + ", gapBrightness=" + this.g + ")";
    }

    public r67(float f, float f2, float f3, float f4, int i, float f5, float f6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0.0f : f, (i2 & 2) != 0 ? 0.0f : f2, (i2 & 4) != 0 ? 1.0f : f3, (i2 & 8) != 0 ? 0.55f : f4, (i2 & 16) != 0 ? 3 : i, (i2 & 32) != 0 ? 0.0f : f5, (i2 & 64) != 0 ? 0.05f : f6);
    }
}
