package y2;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;

public abstract class i implements x.a {

    public final String f76117a;

    public i(String str) {
        this.f76117a = str;
    }

    @Override
    public void a(v.b bVar) {
        w.c(this, bVar);
    }

    @Override
    public byte[] getWrappedMetadataBytes() {
        return w.a(this);
    }

    @Override
    public r getWrappedMetadataFormat() {
        return w.b(this);
    }

    public String toString() {
        return this.f76117a;
    }
}
