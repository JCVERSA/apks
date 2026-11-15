package androidx.compose.foundation;

import androidx.compose.ui.focus.FocusRequesterModifierNodeKt;
import androidx.compose.ui.node.h1;
import androidx.compose.ui.node.i1;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class FocusableNode extends androidx.compose.ui.node.i implements androidx.compose.ui.focus.c, i1, androidx.compose.ui.node.p, androidx.compose.ui.focus.q {

    private final boolean f2285p;

    private androidx.compose.ui.focus.r f2286q;

    private final FocusableInteractionNode f2287r;

    private final FocusablePinnableContainerNode f2288s = (FocusablePinnableContainerNode) C1(new FocusablePinnableContainerNode());

    private final s f2289t = (s) C1(new s());

    public FocusableNode(p.i iVar) {
        this.f2287r = (FocusableInteractionNode) C1(new FocusableInteractionNode(iVar));
        C1(androidx.compose.ui.focus.t.a());
    }

    public final void I1(p.i iVar) {
        this.f2287r.F1(iVar);
    }

    @Override
    public boolean O() {
        return h1.a(this);
    }

    @Override
    public void Q0(androidx.compose.ui.semantics.n nVar) {
        androidx.compose.ui.focus.r rVar = this.f2286q;
        boolean z10 = false;
        if (rVar != null && rVar.isFocused()) {
            z10 = true;
        }
        SemanticsPropertiesKt.w(nVar, z10);
        SemanticsPropertiesKt.o(nVar, null, new Function0<Boolean>() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() {
                return Boolean.valueOf(FocusRequesterModifierNodeKt.a(this.this$0));
            }
        }, 1, null);
    }

    @Override
    public void R0(androidx.compose.ui.focus.r rVar) {
        if (Intrinsics.c(this.f2286q, rVar)) {
            return;
        }
        boolean zIsFocused = rVar.isFocused();
        if (zIsFocused) {
            kotlinx.coroutines.k.d(c1(), null, null, new FocusableNode$onFocusEvent$1(this, null), 3, null);
        }
        if (j1()) {
            j1.b(this);
        }
        this.f2287r.E1(zIsFocused);
        this.f2289t.E1(zIsFocused);
        this.f2288s.D1(zIsFocused);
        this.f2286q = rVar;
    }

    @Override
    public boolean V0() {
        return h1.b(this);
    }

    @Override
    public boolean h1() {
        return this.f2285p;
    }

    @Override
    public void v(androidx.compose.ui.layout.l lVar) {
        this.f2289t.v(lVar);
    }
}
