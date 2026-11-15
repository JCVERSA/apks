package cb;

import android.graphics.RectF;
import java.util.Arrays;

public final class c implements d {

    private final float f16791a;

    public c(float f10) {
        this.f16791a = f10;
    }

    public static c b(a aVar) {
        return new c(aVar.b());
    }

    private static float c(RectF rectF) {
        return Math.min(rectF.width() / 2.0f, rectF.height() / 2.0f);
    }

    @Override
    public float a(RectF rectF) {
        return Math.min(this.f16791a, c(rectF));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && this.f16791a == ((c) obj).f16791a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f16791a)});
    }
}
