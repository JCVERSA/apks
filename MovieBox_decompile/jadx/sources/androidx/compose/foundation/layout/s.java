package androidx.compose.foundation.layout;

import androidx.compose.ui.node.a1;

public final class s extends androidx.compose.ui.f.c implements a1 {

    private float f2571n;

    private boolean f2572o;

    public s(float f10, boolean z10) {
        this.f2571n = f10;
        this.f2572o = z10;
    }

    @Override
    public z v0(o0.e eVar, Object obj) {
        z zVar = obj instanceof z ? (z) obj : null;
        if (zVar == null) {
            zVar = new z(0.0f, false, null, null, 15, null);
        }
        zVar.g(this.f2571n);
        zVar.f(this.f2572o);
        return zVar;
    }

    public final void D1(boolean z10) {
        this.f2572o = z10;
    }

    public final void E1(float f10) {
        this.f2571n = f10;
    }
}
