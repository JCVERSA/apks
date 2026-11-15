package androidx.media3.exoplayer.upstream;

import android.net.Uri;
import androidx.media3.common.util.a1;
import java.io.InputStream;
import java.util.Map;

public final class q implements Loader.d {

    public final long f12702a;

    public final w1.h f12703b;

    public final int f12704c;

    private final w1.l f12705d;

    private final a f12706e;

    private volatile Object f12707f;

    public interface a {
        Object parse(Uri uri, InputStream inputStream);
    }

    public q(androidx.media3.datasource.a aVar, Uri uri, int i10, a aVar2) {
        this(aVar, new w1.h.b().i(uri).b(1).a(), i10, aVar2);
    }

    public static Object e(androidx.media3.datasource.a aVar, a aVar2, w1.h hVar, int i10) {
        q qVar = new q(aVar, hVar, i10, aVar2);
        qVar.load();
        return androidx.media3.common.util.a.e(qVar.c());
    }

    public long a() {
        return this.f12705d.d();
    }

    public Map b() {
        return this.f12705d.f();
    }

    public final Object c() {
        return this.f12707f;
    }

    public Uri d() {
        return this.f12705d.e();
    }

    @Override
    public final void load() {
        this.f12705d.g();
        w1.f fVar = new w1.f(this.f12705d, this.f12703b);
        try {
            fVar.h();
            this.f12707f = this.f12706e.parse((Uri) androidx.media3.common.util.a.e(this.f12705d.getUri()), fVar);
        } finally {
            a1.m(fVar);
        }
    }

    public q(androidx.media3.datasource.a aVar, w1.h hVar, int i10, a aVar2) {
        this.f12705d = new w1.l(aVar);
        this.f12703b = hVar;
        this.f12704c = i10;
        this.f12706e = aVar2;
        this.f12702a = f2.i.a();
    }

    @Override
    public final void cancelLoad() {
    }
}
