package i2;

import androidx.media3.common.h0;
import androidx.media3.exoplayer.w3;
import androidx.media3.exoplayer.y3;

public abstract class e0 {

    private a f61642a;

    private androidx.media3.exoplayer.upstream.e f61643b;

    public interface a {
        void b(w3 w3Var);

        void onTrackSelectionsInvalidated();
    }

    protected final androidx.media3.exoplayer.upstream.e a() {
        return (androidx.media3.exoplayer.upstream.e) androidx.media3.common.util.a.i(this.f61643b);
    }

    public h0 c() {
        return h0.F;
    }

    public y3.a d() {
        return null;
    }

    public void e(a aVar, androidx.media3.exoplayer.upstream.e eVar) {
        this.f61642a = aVar;
        this.f61643b = eVar;
    }

    protected final void f() {
        a aVar = this.f61642a;
        if (aVar != null) {
            aVar.onTrackSelectionsInvalidated();
        }
    }

    protected final void g(w3 w3Var) {
        a aVar = this.f61642a;
        if (aVar != null) {
            aVar.b(w3Var);
        }
    }

    public boolean h() {
        return false;
    }

    public abstract void i(Object obj);

    public void j() {
        this.f61642a = null;
        this.f61643b = null;
    }

    public abstract f0 k(y3[] y3VarArr, f2.z zVar, androidx.media3.exoplayer.source.r.b bVar, androidx.media3.common.e0 e0Var);

    public void l(androidx.media3.common.c cVar) {
    }

    public void m(h0 h0Var) {
    }
}
