package androidx.compose.ui.text.font;

import androidx.compose.runtime.a3;

public abstract class i {
    public static a3 a(h.b bVar, h hVar, p pVar, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resolve-DPcqOEQ");
        }
        if ((i12 & 1) != 0) {
            hVar = null;
        }
        if ((i12 & 2) != 0) {
            pVar = p.f5840b.a();
        }
        if ((i12 & 4) != 0) {
            i10 = n.f5830b.b();
        }
        if ((i12 & 8) != 0) {
            i11 = o.f5834b.a();
        }
        return bVar.a(hVar, pVar, i10, i11);
    }
}
