package defpackage;

import com.google.android.exoplayer2.a0;
import com.google.android.exoplayer2.source.i;

public abstract class rva {
    public a a;
    public o70 b;

    public interface a {
        void onTrackSelectionsInvalidated();
    }

    public final o70 a() {
        return (o70) zi.i(this.b);
    }

    public void b(a aVar, o70 o70Var) {
        this.a = aVar;
        this.b = o70Var;
    }

    public final void c() {
        a aVar = this.a;
        if (aVar != null) {
            aVar.onTrackSelectionsInvalidated();
        }
    }

    public abstract boolean d();

    public abstract void e(Object obj);

    public void f() {
        this.a = null;
        this.b = null;
    }

    public abstract sva g(ks8[] ks8VarArr, eva evaVar, i.b bVar, a0 a0Var);

    public abstract void h(com.google.android.exoplayer2.audio.a aVar);
}
