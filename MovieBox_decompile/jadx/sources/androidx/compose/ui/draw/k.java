package androidx.compose.ui.draw;

import androidx.collection.l0;
import androidx.collection.r0;
import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;

final class k implements a4 {

    private l0 f3867a;

    private a4 f3868b;

    @Override
    public GraphicsLayer a() {
        a4 a4Var = this.f3868b;
        if (!(a4Var != null)) {
            g0.a.b("GraphicsContext not provided");
        }
        GraphicsLayer graphicsLayerA = a4Var.a();
        l0 l0Var = this.f3867a;
        if (l0Var == null) {
            this.f3867a = r0.b(graphicsLayerA);
        } else {
            l0Var.e(graphicsLayerA);
        }
        return graphicsLayerA;
    }

    @Override
    public void b(GraphicsLayer graphicsLayer) {
        a4 a4Var = this.f3868b;
        if (a4Var != null) {
            a4Var.b(graphicsLayer);
        }
    }

    public final a4 c() {
        return this.f3868b;
    }

    public final void d() {
        l0 l0Var = this.f3867a;
        if (l0Var != null) {
            Object[] objArr = l0Var.f1935a;
            int i10 = l0Var.f1936b;
            for (int i11 = 0; i11 < i10; i11++) {
                b((GraphicsLayer) objArr[i11]);
            }
            l0Var.f();
        }
    }

    public final void e(a4 a4Var) {
        d();
        this.f3868b = a4Var;
    }
}
