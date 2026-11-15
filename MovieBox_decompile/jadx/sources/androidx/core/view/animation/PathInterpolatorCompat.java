package androidx.core.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

public final class PathInterpolatorCompat {

    static class a {
        static Interpolator a(float f10, float f11) {
            return new PathInterpolator(f10, f11);
        }

        static Interpolator b(float f10, float f11, float f12, float f13) {
            return new PathInterpolator(f10, f11, f12, f13);
        }

        static Interpolator c(Path path) {
            return new PathInterpolator(path);
        }
    }

    private PathInterpolatorCompat() {
    }

    public static Interpolator create(Path path) {
        return a.c(path);
    }

    public static Interpolator create(float f10, float f11) {
        return a.a(f10, f11);
    }

    public static Interpolator create(float f10, float f11, float f12, float f13) {
        return a.b(f10, f11, f12, f13);
    }
}
