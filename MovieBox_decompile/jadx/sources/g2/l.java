package g2;

import androidx.media3.common.r;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class l extends e {

    private final f f60644j;

    private f.b f60645k;

    private k2.h f60646l;

    private long f60647m;

    private volatile boolean f60648n;

    public l(androidx.media3.datasource.a aVar, w1.h hVar, r rVar, int i10, Object obj, f fVar) {
        super(aVar, hVar, 2, rVar, i10, obj, C.TIME_UNSET, C.TIME_UNSET);
        this.f60644j = fVar;
    }

    @Override
    public void cancelLoad() {
        this.f60648n = true;
    }

    public void e(f.b bVar) {
        this.f60645k = bVar;
    }

    @Override
    public void load() {
        if (this.f60647m == 0) {
            this.f60644j.e(this.f60645k, C.TIME_UNSET, C.TIME_UNSET);
        }
        try {
            w1.h hVarE = this.f60596b.e(this.f60647m);
            w1.l lVar = this.f60603i;
            k2.j jVar = new k2.j(lVar, hVarE.f74103g, lVar.a(hVarE));
            while (!this.f60648n && this.f60644j.a(jVar)) {
                try {
                } catch (Throwable th2) {
                    this.f60647m = jVar.getPosition() - this.f60596b.f74103g;
                    this.f60646l = this.f60644j.b();
                    throw th2;
                }
            }
            this.f60647m = jVar.getPosition() - this.f60596b.f74103g;
            this.f60646l = this.f60644j.b();
            w1.g.a(this.f60603i);
        } catch (Throwable th3) {
            w1.g.a(this.f60603i);
            throw th3;
        }
    }
}
