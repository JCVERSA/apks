package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.v1;

public abstract class j {
    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, Painter painter, boolean z10, androidx.compose.ui.b bVar, androidx.compose.ui.layout.e eVar, float f10, v1 v1Var) {
        return fVar.e(new PainterElement(painter, z10, bVar, eVar, f10, v1Var));
    }

    public static androidx.compose.ui.f b(androidx.compose.ui.f fVar, Painter painter, boolean z10, androidx.compose.ui.b bVar, androidx.compose.ui.layout.e eVar, float f10, v1 v1Var, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        boolean z11 = z10;
        if ((i10 & 4) != 0) {
            bVar = androidx.compose.ui.b.f3778a.d();
        }
        androidx.compose.ui.b bVar2 = bVar;
        if ((i10 & 8) != 0) {
            eVar = androidx.compose.ui.layout.e.f4867a.b();
        }
        androidx.compose.ui.layout.e eVar2 = eVar;
        if ((i10 & 16) != 0) {
            f10 = 1.0f;
        }
        float f11 = f10;
        if ((i10 & 32) != 0) {
            v1Var = null;
        }
        return a(fVar, painter, z11, bVar2, eVar2, f11, v1Var);
    }
}
