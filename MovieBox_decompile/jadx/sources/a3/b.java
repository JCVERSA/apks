package a3;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;

public abstract class b implements x.a {
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
        return "SCTE-35 splice command: type=" + getClass().getSimpleName();
    }
}
