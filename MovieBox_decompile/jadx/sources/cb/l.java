package cb;

import android.graphics.RectF;
import java.util.Arrays;

public final class l implements d {

    private final float f16846a;

    public l(float f10) {
        this.f16846a = f10;
    }

    private static float b(RectF rectF) {
        return Math.min(rectF.width(), rectF.height());
    }

    @Override
    public float a(RectF rectF) {
        return this.f16846a * b(rectF);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l) && this.f16846a == ((l) obj).f16846a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f16846a)});
    }
}
