package androidx.compose.foundation;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;

final class FocusableInteractionNode extends androidx.compose.ui.f.c {

    private p.i f2280n;

    private p.b f2281o;

    private final boolean f2282p;

    public FocusableInteractionNode(p.i iVar) {
        this.f2280n = iVar;
    }

    private final void C1() {
        p.b bVar;
        p.i iVar = this.f2280n;
        if (iVar != null && (bVar = this.f2281o) != null) {
            iVar.a(new p.c(bVar));
        }
        this.f2281o = null;
    }

    private final void D1(final p.i iVar, final p.f fVar) {
        if (!j1()) {
            iVar.a(fVar);
        } else {
            t1 t1Var = (t1) c1().getCoroutineContext().get(t1.f65027m1);
            kotlinx.coroutines.k.d(c1(), null, null, new FocusableInteractionNode$emitWithFallback$1(iVar, fVar, t1Var != null ? t1Var.invokeOnCompletion(new Function1<Throwable, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((Throwable) obj);
                    return Unit.f64096a;
                }

                public final void invoke(Throwable th2) {
                    iVar.a(fVar);
                }
            }) : null, null), 3, null);
        }
    }

    public final void E1(boolean z10) {
        p.i iVar = this.f2280n;
        if (iVar != null) {
            if (!z10) {
                p.b bVar = this.f2281o;
                if (bVar != null) {
                    D1(iVar, new p.c(bVar));
                    this.f2281o = null;
                    return;
                }
                return;
            }
            p.b bVar2 = this.f2281o;
            if (bVar2 != null) {
                D1(iVar, new p.c(bVar2));
                this.f2281o = null;
            }
            p.b bVar3 = new p.b();
            D1(iVar, bVar3);
            this.f2281o = bVar3;
        }
    }

    public final void F1(p.i iVar) {
        if (Intrinsics.c(this.f2280n, iVar)) {
            return;
        }
        C1();
        this.f2280n = iVar;
    }

    @Override
    public boolean h1() {
        return this.f2282p;
    }
}
