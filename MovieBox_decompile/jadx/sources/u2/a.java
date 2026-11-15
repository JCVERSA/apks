package u2;

import androidx.media3.common.r;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;

public final class a implements x.a {

    public final int f72996a;

    public final String f72997b;

    public a(int i10, String str) {
        this.f72996a = i10;
        this.f72997b = str;
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
        return "Ait(controlCode=" + this.f72996a + ",url=" + this.f72997b + ")";
    }
}
