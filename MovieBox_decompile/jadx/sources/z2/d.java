package z2;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.google.common.primitives.Floats;

public final class d implements x.a {

    public final float f76607a;

    public final int f76608b;

    public d(float f10, int i10) {
        this.f76607a = f10;
        this.f76608b = i10;
    }

    @Override
    public void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f76607a == dVar.f76607a && this.f76608b == dVar.f76608b;
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
        return ((527 + Floats.a(this.f76607a)) * 31) + this.f76608b;
    }

    public String toString() {
        return "smta: captureFrameRate=" + this.f76607a + ", svcTemporalLayerCount=" + this.f76608b;
    }
}
