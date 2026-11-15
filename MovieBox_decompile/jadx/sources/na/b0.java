package na;

import com.google.android.exoplayer2.a3;
import com.google.android.exoplayer2.l3;

public abstract class b0 {

    private a f67006a;

    private com.google.android.exoplayer2.upstream.e f67007b;

    public interface a {
        void onTrackSelectionsInvalidated();
    }

    protected final com.google.android.exoplayer2.upstream.e a() {
        return (com.google.android.exoplayer2.upstream.e) com.google.android.exoplayer2.util.a.i(this.f67007b);
    }

    public z b() {
        return z.A;
    }

    public void c(a aVar, com.google.android.exoplayer2.upstream.e eVar) {
        this.f67006a = aVar;
        this.f67007b = eVar;
    }

    protected final void d() {
        a aVar = this.f67006a;
        if (aVar != null) {
            aVar.onTrackSelectionsInvalidated();
        }
    }

    public boolean e() {
        return false;
    }

    public abstract void f(Object obj);

    public void g() {
        this.f67006a = null;
        this.f67007b = null;
    }

    public abstract c0 h(a3[] a3VarArr, v9.y yVar, com.google.android.exoplayer2.source.o.b bVar, l3 l3Var);

    public void i(com.google.android.exoplayer2.audio.e eVar) {
    }

    public void j(z zVar) {
    }
}
