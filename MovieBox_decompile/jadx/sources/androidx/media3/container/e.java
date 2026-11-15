package androidx.media3.container;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.google.common.primitives.Floats;

public final class e implements x.a {

    public final float f10276a;

    public final float f10277b;

    public e(float f10, float f11) {
        androidx.media3.common.util.a.b(f10 >= -90.0f && f10 <= 90.0f && f11 >= -180.0f && f11 <= 180.0f, "Invalid latitude or longitude");
        this.f10276a = f10;
        this.f10277b = f11;
    }

    @Override
    public void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.f10276a == eVar.f10276a && this.f10277b == eVar.f10277b;
    }

    @Override
    public byte[] getWrappedMetadataBytes() {
        return w.a(this);
    }

    @Override
    public r getWrappedMetadataFormat() {
        return w.b(this);
    }

    public int hashCode() {
        return ((527 + Floats.a(this.f10276a)) * 31) + Floats.a(this.f10277b);
    }

    public String toString() {
        return "xyz: latitude=" + this.f10276a + ", longitude=" + this.f10277b;
    }
}
