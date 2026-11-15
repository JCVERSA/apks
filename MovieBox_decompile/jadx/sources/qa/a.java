package qa;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

public class a {

    public static final TimeInterpolator f69577a = new LinearInterpolator();

    public static final TimeInterpolator f69578b = new o1.b();

    public static final TimeInterpolator f69579c = new o1.a();

    public static final TimeInterpolator f69580d = new o1.c();

    public static final TimeInterpolator f69581e = new DecelerateInterpolator();

    public static float a(float f10, float f11, float f12) {
        return f10 + (f12 * (f11 - f10));
    }

    public static float b(float f10, float f11, float f12, float f13, float f14) {
        if (f14 <= f12) {
            return f10;
        }
        return f14 >= f13 ? f11 : a(f10, f11, (f14 - f12) / (f13 - f12));
    }

    public static int c(int i10, int i11, float f10) {
        return i10 + Math.round(f10 * (i11 - i10));
    }
}
