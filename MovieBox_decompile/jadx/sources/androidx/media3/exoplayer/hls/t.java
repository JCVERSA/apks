package androidx.media3.exoplayer.hls;

import android.util.SparseArray;
import androidx.media3.common.util.p0;

public final class t {

    private final SparseArray f11685a = new SparseArray();

    public p0 a(int i10) {
        p0 p0Var = (p0) this.f11685a.get(i10);
        if (p0Var != null) {
            return p0Var;
        }
        p0 p0Var2 = new p0(9223372036854775806L);
        this.f11685a.put(i10, p0Var2);
        return p0Var2;
    }

    public void b() {
        this.f11685a.clear();
    }
}
