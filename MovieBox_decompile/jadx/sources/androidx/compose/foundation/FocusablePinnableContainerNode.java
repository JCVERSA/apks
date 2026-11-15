package androidx.compose.foundation;

import androidx.compose.ui.layout.PinnableContainerKt;
import androidx.compose.ui.node.u0;
import androidx.compose.ui.node.v0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref;

final class FocusablePinnableContainerNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.d, u0 {

    private androidx.compose.ui.layout.f0.a f2290n;

    private boolean f2291o;

    private final boolean f2292p;

    private final androidx.compose.ui.layout.f0 C1() {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        v0.a(this, new Function0<Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m27invoke();
                return Unit.f64096a;
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Object] */
            public final void m27invoke() {
                objectRef.element = androidx.compose.ui.node.e.a(this, PinnableContainerKt.a());
            }
        });
        return (androidx.compose.ui.layout.f0) objectRef.element;
    }

    public final void D1(boolean z10) {
        if (z10) {
            androidx.compose.ui.layout.f0 f0VarC1 = C1();
            this.f2290n = f0VarC1 != null ? f0VarC1.a() : null;
        } else {
            androidx.compose.ui.layout.f0.a aVar = this.f2290n;
            if (aVar != null) {
                aVar.release();
            }
            this.f2290n = null;
        }
        this.f2291o = z10;
    }

    @Override
    public void Z() {
        androidx.compose.ui.layout.f0 f0VarC1 = C1();
        if (this.f2291o) {
            androidx.compose.ui.layout.f0.a aVar = this.f2290n;
            if (aVar != null) {
                aVar.release();
            }
            this.f2290n = f0VarC1 != null ? f0VarC1.a() : null;
        }
    }

    @Override
    public boolean h1() {
        return this.f2292p;
    }

    @Override
    public void o1() {
        androidx.compose.ui.layout.f0.a aVar = this.f2290n;
        if (aVar != null) {
            aVar.release();
        }
        this.f2290n = null;
    }
}
