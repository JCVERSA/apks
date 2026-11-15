package o1;

import android.view.animation.Interpolator;

abstract class d implements Interpolator {

    private final float[] f67444a;

    private final float f67445b;

    protected d(float[] fArr) {
        this.f67444a = fArr;
        this.f67445b = 1.0f / (fArr.length - 1);
    }

    @Override
    public float getInterpolation(float f10) {
        if (f10 >= 1.0f) {
            return 1.0f;
        }
        if (f10 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f67444a;
        int iMin = Math.min((int) ((fArr.length - 1) * f10), fArr.length - 2);
        float f11 = this.f67445b;
        float f12 = (f10 - (iMin * f11)) / f11;
        float[] fArr2 = this.f67444a;
        float f13 = fArr2[iMin];
        return f13 + (f12 * (fArr2[iMin + 1] - f13));
    }
}
