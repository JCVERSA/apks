package cb;

import android.graphics.RectF;
import java.util.Arrays;

public final class b implements d {

    private final d f16789a;

    private final float f16790b;

    public b(float f10, d dVar) {
        while (dVar instanceof b) {
            dVar = ((b) dVar).f16789a;
            f10 += ((b) dVar).f16790b;
        }
        this.f16789a = dVar;
        this.f16790b = f10;
    }

    @Override
    public float a(RectF rectF) {
        return Math.max(0.0f, this.f16789a.a(rectF) + this.f16790b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f16789a.equals(bVar.f16789a) && this.f16790b == bVar.f16790b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16789a, Float.valueOf(this.f16790b)});
    }
}
