package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.p0;
import java.io.InputStream;
import java.util.Map;

public final class b0 implements Loader.d {

    public final long f26499a;

    public final n f26500b;

    public final int f26501c;

    private final i0 f26502d;

    private final a f26503e;

    private volatile Object f26504f;

    public interface a {
        Object parse(Uri uri, InputStream inputStream);
    }

    public b0(k kVar, Uri uri, int i10, a aVar) {
        this(kVar, new n.b().i(uri).b(1).a(), i10, aVar);
    }

    public static Object e(k kVar, a aVar, n nVar, int i10) {
        b0 b0Var = new b0(kVar, nVar, i10, aVar);
        b0Var.load();
        return com.google.android.exoplayer2.util.a.e(b0Var.c());
    }

    public long a() {
        return this.f26502d.f();
    }

    public Map b() {
        return this.f26502d.i();
    }

    public final Object c() {
        return this.f26504f;
    }

    public Uri d() {
        return this.f26502d.h();
    }

    @Override
    public final void load() {
        this.f26502d.j();
        l lVar = new l(this.f26502d, this.f26500b);
        try {
            lVar.h();
            this.f26504f = this.f26503e.parse((Uri) com.google.android.exoplayer2.util.a.e(this.f26502d.getUri()), lVar);
        } finally {
            p0.n(lVar);
        }
    }

    public b0(k kVar, n nVar, int i10, a aVar) {
        this.f26502d = new i0(kVar);
        this.f26500b = nVar;
        this.f26501c = i10;
        this.f26503e = aVar;
        this.f26499a = v9.h.a();
    }

    @Override
    public final void cancelLoad() {
    }
}
