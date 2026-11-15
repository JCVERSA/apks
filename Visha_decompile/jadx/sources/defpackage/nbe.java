package defpackage;

import androidx.media3.common.MimeTypes;
import androidx.media3.container.Mp4Box;
import com.google.android.gms.internal.ads.zzfww;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.List;

public final class nbe implements c9e {
    public final u4h a = new u4h(4);
    public final mae b = new mae(-1, -1, MimeTypes.IMAGE_AVIF);

    public final boolean a(d9e d9eVar, int i) {
        u4h u4hVar = this.a;
        u4hVar.i(4);
        ((m8e) d9eVar).e(u4hVar.n(), 0, 4, false);
        return u4hVar.O() == ((long) i);
    }

    @Override
    public final void b(long j, long j2) {
        this.b.b(j, j2);
    }

    @Override
    public final int d(d9e d9eVar, y9e y9eVar) {
        return this.b.d(d9eVar, y9eVar);
    }

    @Override
    public final boolean e(d9e d9eVar) throws EOFException, InterruptedIOException {
        ((m8e) d9eVar).k(4, false);
        return a(d9eVar, Mp4Box.TYPE_ftyp) && a(d9eVar, 1635150182);
    }

    @Override
    public final void f(f9e f9eVar) {
        this.b.f(f9eVar);
    }

    @Override
    public final c9e zzc() {
        return this;
    }

    @Override
    public final List zzd() {
        return zzfww.zzn();
    }
}
