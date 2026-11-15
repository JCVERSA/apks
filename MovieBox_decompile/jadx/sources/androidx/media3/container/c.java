package androidx.media3.container;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;

public final class c implements x.a {

    public final int f10270a;

    public c(int i10) {
        this.f10270a = i10;
    }

    @Override
    public void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && this.f10270a == ((c) obj).f10270a;
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
        return this.f10270a;
    }

    public String toString() {
        return "Mp4AlternateGroup: " + this.f10270a;
    }
}
