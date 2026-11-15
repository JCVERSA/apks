package androidx.compose.foundation.layout;

import androidx.compose.ui.node.a1;

public final class q extends androidx.compose.ui.f.c implements a1 {

    private androidx.compose.ui.b.InterfaceC0036b f2566n;

    public q(androidx.compose.ui.b.InterfaceC0036b interfaceC0036b) {
        this.f2566n = interfaceC0036b;
    }

    @Override
    public z v0(o0.e eVar, Object obj) {
        z zVar = obj instanceof z ? (z) obj : null;
        if (zVar == null) {
            zVar = new z(0.0f, false, null, null, 15, null);
        }
        zVar.e(m.f2552a.a(this.f2566n));
        return zVar;
    }

    public final void D1(androidx.compose.ui.b.InterfaceC0036b interfaceC0036b) {
        this.f2566n = interfaceC0036b;
    }
}
