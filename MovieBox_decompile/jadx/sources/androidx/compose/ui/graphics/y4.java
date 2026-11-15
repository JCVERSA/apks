package androidx.compose.ui.graphics;

import android.graphics.Shader;
import kotlin.jvm.internal.Intrinsics;

public abstract class y4 extends j1 {

    private Shader f4607c;

    private long f4608d;

    public y4() {
        super(null);
        this.f4608d = y.m.f76020b.a();
    }

    @Override
    public final void a(long j10, m4 m4Var, float f10) {
        Shader shaderB = this.f4607c;
        if (shaderB == null || !y.m.f(this.f4608d, j10)) {
            if (y.m.k(j10)) {
                shaderB = null;
                this.f4607c = null;
                this.f4608d = y.m.f76020b.a();
            } else {
                shaderB = b(j10);
                this.f4607c = shaderB;
                this.f4608d = j10;
            }
        }
        long jA = m4Var.a();
        u1.a aVar = u1.f4349b;
        if (!u1.m(jA, aVar.a())) {
            m4Var.s(aVar.a());
        }
        if (!Intrinsics.c(m4Var.y(), shaderB)) {
            m4Var.x(shaderB);
        }
        if (m4Var.getAlpha() == f10) {
            return;
        }
        m4Var.setAlpha(f10);
    }

    public abstract Shader b(long j10);
}
