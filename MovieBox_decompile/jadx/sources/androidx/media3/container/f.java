package androidx.media3.container;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.google.common.primitives.Longs;

public final class f implements x.a {

    public final long f10278a;

    public final long f10279b;

    public final long f10280c;

    public f(long j10, long j11, long j12) {
        this.f10278a = j10;
        this.f10279b = j11;
        this.f10280c = j12;
    }

    @Override
    public void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f10278a == fVar.f10278a && this.f10279b == fVar.f10279b && this.f10280c == fVar.f10280c;
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
        return ((((527 + Longs.e(this.f10278a)) * 31) + Longs.e(this.f10279b)) * 31) + Longs.e(this.f10280c);
    }

    public String toString() {
        return "Mp4Timestamp: creation time=" + this.f10278a + ", modification time=" + this.f10279b + ", timescale=" + this.f10280c;
    }
}
