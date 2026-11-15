package androidx.compose.material.ripple;

import androidx.compose.foundation.y;
import androidx.compose.runtime.a3;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.n0;

public abstract class RippleIndicationInstance implements y {

    private final boolean f3161a;

    private final StateLayer f3162b;

    public RippleIndicationInstance(boolean z10, final a3 a3Var) {
        this.f3161a = z10;
        this.f3162b = new StateLayer(z10, new Function0<c>() {
            {
                super(0);
            }

            @Override
            public final c invoke() {
                return (c) a3Var.getValue();
            }
        });
    }

    public abstract void b(p.k.b bVar, n0 n0Var);

    public final void c(z.g gVar, float f10, long j10) {
        this.f3162b.b(gVar, Float.isNaN(f10) ? d.a(gVar, this.f3161a, gVar.i()) : gVar.D0(f10), j10);
    }

    public abstract void d(p.k.b bVar);

    public final void e(p.f fVar, n0 n0Var) {
        this.f3162b.c(fVar, n0Var);
    }
}
