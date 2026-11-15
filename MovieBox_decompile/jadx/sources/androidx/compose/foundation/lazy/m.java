package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.n0;

public final class m implements l, androidx.compose.ui.layout.v {

    private final n f2782a;

    private int f2783b;

    private boolean f2784c;

    private float f2785d;

    private final float f2786e;

    private final boolean f2787f;

    private final n0 f2788g;

    private final o0.e f2789h;

    private final long f2790i;

    private final List f2791j;

    private final int f2792k;

    private final int f2793l;

    private final int f2794m;

    private final boolean f2795n;

    private final Orientation f2796o;

    private final int f2797p;

    private final int f2798q;

    private final androidx.compose.ui.layout.v f2799r;

    public m(n nVar, int i10, boolean z10, float f10, androidx.compose.ui.layout.v vVar, float f11, boolean z11, n0 n0Var, o0.e eVar, long j10, List list, int i11, int i12, int i13, boolean z12, Orientation orientation, int i14, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVar, i10, z10, f10, vVar, f11, z11, n0Var, eVar, j10, list, i11, i12, i13, z12, orientation, i14, i15);
    }

    @Override
    public long a() {
        return o0.u.a(getWidth(), getHeight());
    }

    @Override
    public int b() {
        return this.f2797p;
    }

    @Override
    public int c() {
        return this.f2793l;
    }

    @Override
    public int d() {
        return this.f2794m;
    }

    @Override
    public int e() {
        return -g();
    }

    @Override
    public int f() {
        return this.f2798q;
    }

    @Override
    public int g() {
        return this.f2792k;
    }

    @Override
    public int getHeight() {
        return this.f2799r.getHeight();
    }

    @Override
    public Orientation getOrientation() {
        return this.f2796o;
    }

    @Override
    public int getWidth() {
        return this.f2799r.getWidth();
    }

    @Override
    public List h() {
        return this.f2791j;
    }

    public final boolean i() {
        n nVar = this.f2782a;
        return ((nVar != null ? nVar.getIndex() : 0) == 0 && this.f2783b == 0) ? false : true;
    }

    public final boolean j() {
        return this.f2784c;
    }

    public final long k() {
        return this.f2790i;
    }

    public final float l() {
        return this.f2785d;
    }

    public final n0 m() {
        return this.f2788g;
    }

    public final o0.e n() {
        return this.f2789h;
    }

    public final n o() {
        return this.f2782a;
    }

    public final int p() {
        return this.f2783b;
    }

    public final float q() {
        return this.f2786e;
    }

    public final boolean r(int i10, boolean z10) {
        n nVar;
        boolean z11 = false;
        z11 = false;
        z11 = false;
        z11 = false;
        z11 = false;
        z11 = false;
        z11 = false;
        z11 = false;
        z11 = false;
        if (!this.f2787f && !h().isEmpty() && (nVar = this.f2782a) != null) {
            int iH = nVar.h();
            int i11 = this.f2783b - i10;
            if (i11 >= 0 && i11 < iH) {
                n nVar2 = (n) CollectionsKt.i0(h());
                n nVar3 = (n) CollectionsKt.u0(h());
                if (!nVar2.p() && !nVar3.p() && (i10 >= 0 ? Math.min(g() - nVar2.g(), c() - nVar3.g()) > i10 : Math.min((nVar2.g() + nVar2.h()) - g(), (nVar3.g() + nVar3.h()) - c()) > (-i10))) {
                    this.f2783b -= i10;
                    List listH = h();
                    int size = listH.size();
                    for (int i12 = 0; i12 < size; i12++) {
                        ((n) listH.get(i12)).l(i10, z10);
                    }
                    this.f2785d = i10;
                    z11 = true;
                    z11 = true;
                    z11 = true;
                    if (!this.f2784c && i10 > 0) {
                        this.f2784c = true;
                    }
                }
            }
        }
        return z11;
    }

    @Override
    public Map v() {
        return this.f2799r.v();
    }

    @Override
    public void w() {
        this.f2799r.w();
    }

    @Override
    public Function1 x() {
        return this.f2799r.x();
    }

    private m(n nVar, int i10, boolean z10, float f10, androidx.compose.ui.layout.v vVar, float f11, boolean z11, n0 n0Var, o0.e eVar, long j10, List list, int i11, int i12, int i13, boolean z12, Orientation orientation, int i14, int i15) {
        this.f2782a = nVar;
        this.f2783b = i10;
        this.f2784c = z10;
        this.f2785d = f10;
        this.f2786e = f11;
        this.f2787f = z11;
        this.f2788g = n0Var;
        this.f2789h = eVar;
        this.f2790i = j10;
        this.f2791j = list;
        this.f2792k = i11;
        this.f2793l = i12;
        this.f2794m = i13;
        this.f2795n = z12;
        this.f2796o = orientation;
        this.f2797p = i14;
        this.f2798q = i15;
        this.f2799r = vVar;
    }
}
