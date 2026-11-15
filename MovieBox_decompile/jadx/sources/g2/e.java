package g2;

import android.net.Uri;
import androidx.media3.common.r;
import androidx.media3.exoplayer.upstream.Loader;
import java.util.Map;

public abstract class e implements Loader.d {

    public final long f60595a = f2.i.a();

    public final w1.h f60596b;

    public final int f60597c;

    public final r f60598d;

    public final int f60599e;

    public final Object f60600f;

    public final long f60601g;

    public final long f60602h;

    protected final w1.l f60603i;

    public e(androidx.media3.datasource.a aVar, w1.h hVar, int i10, r rVar, int i11, Object obj, long j10, long j11) {
        this.f60603i = new w1.l(aVar);
        this.f60596b = (w1.h) androidx.media3.common.util.a.e(hVar);
        this.f60597c = i10;
        this.f60598d = rVar;
        this.f60599e = i11;
        this.f60600f = obj;
        this.f60601g = j10;
        this.f60602h = j11;
    }

    public final long a() {
        return this.f60603i.d();
    }

    public final long b() {
        return this.f60602h - this.f60601g;
    }

    public final Map c() {
        return this.f60603i.f();
    }

    public final Uri d() {
        return this.f60603i.e();
    }
}
