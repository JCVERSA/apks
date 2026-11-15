package h3;

import android.util.SparseArray;
import k2.m0;
import k2.s0;

public final class t implements k2.t {

    private final k2.t f61268a;

    private final s.a f61269b;

    private final SparseArray f61270c = new SparseArray();

    private boolean f61271d;

    public t(k2.t tVar, s.a aVar) {
        this.f61268a = tVar;
        this.f61269b = aVar;
    }

    @Override
    public void d(m0 m0Var) {
        this.f61268a.d(m0Var);
    }

    @Override
    public void endTracks() {
        this.f61268a.endTracks();
        if (this.f61271d) {
            for (int i10 = 0; i10 < this.f61270c.size(); i10++) {
                ((v) this.f61270c.valueAt(i10)).l(true);
            }
        }
    }

    @Override
    public s0 track(int i10, int i11) {
        if (i11 != 3) {
            this.f61271d = true;
            return this.f61268a.track(i10, i11);
        }
        v vVar = (v) this.f61270c.get(i10);
        if (vVar != null) {
            return vVar;
        }
        v vVar2 = new v(this.f61268a.track(i10, i11), this.f61269b);
        this.f61270c.put(i10, vVar2);
        return vVar2;
    }
}
