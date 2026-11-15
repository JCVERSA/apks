package defpackage;

import android.view.animation.Interpolator;

public abstract class pr5 implements Interpolator {
    public final float[] a;
    public final float b;

    public pr5(float[] fArr) {
        y45.j(fArr, "values");
        this.a = fArr;
        this.b = 1.0f / hi.a0(fArr);
    }

    @Override
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int iG = wn8.g((int) (hi.a0(this.a) * f), this.a.length - 2);
        float f2 = this.b;
        float f3 = (f - (iG * f2)) / f2;
        float[] fArr = this.a;
        float f4 = fArr[iG];
        return f4 + (f3 * (fArr[iG + 1] - f4));
    }
}
