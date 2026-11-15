package cb;

import android.graphics.RectF;
import java.util.Arrays;

public final class a implements d {

    private final float f16788a;

    public a(float f10) {
        this.f16788a = f10;
    }

    @Override
    public float a(RectF rectF) {
        return this.f16788a;
    }

    public float b() {
        return this.f16788a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.f16788a == ((a) obj).f16788a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f16788a)});
    }
}
