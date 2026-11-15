package z2;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.google.common.primitives.Longs;

public final class a implements x.a {

    public final long f76597a;

    public final long f76598b;

    public final long f76599c;

    public final long f76600d;

    public final long f76601e;

    public a(long j10, long j11, long j12, long j13, long j14) {
        this.f76597a = j10;
        this.f76598b = j11;
        this.f76599c = j12;
        this.f76600d = j13;
        this.f76601e = j14;
    }

    @Override
    public void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f76597a == aVar.f76597a && this.f76598b == aVar.f76598b && this.f76599c == aVar.f76599c && this.f76600d == aVar.f76600d && this.f76601e == aVar.f76601e;
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
        return ((((((((527 + Longs.e(this.f76597a)) * 31) + Longs.e(this.f76598b)) * 31) + Longs.e(this.f76599c)) * 31) + Longs.e(this.f76600d)) * 31) + Longs.e(this.f76601e);
    }

    public String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f76597a + ", photoSize=" + this.f76598b + ", photoPresentationTimestampUs=" + this.f76599c + ", videoStartPosition=" + this.f76600d + ", videoSize=" + this.f76601e;
    }
}
