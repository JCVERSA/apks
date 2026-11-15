package androidx.compose.foundation.selection;

import androidx.compose.foundation.ClickableNode;
import androidx.compose.foundation.b0;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.f;
import androidx.compose.ui.semantics.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import p.i;

final class a extends ClickableNode {
    private boolean J;

    public a(boolean z10, i iVar, b0 b0Var, boolean z11, f fVar, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, iVar, b0Var, z11, fVar, function0);
    }

    @Override
    public void O1(n nVar) {
        SemanticsPropertiesKt.C(nVar, this.J);
    }

    public final void d2(boolean z10, i iVar, b0 b0Var, boolean z11, f fVar, Function0 function0) {
        if (this.J != z10) {
            this.J = z10;
            j1.b(this);
        }
        super.c2(iVar, b0Var, z11, null, fVar, function0);
    }

    private a(boolean z10, i iVar, b0 b0Var, boolean z11, f fVar, Function0 function0) {
        super(iVar, b0Var, z11, null, fVar, function0, null);
        this.J = z10;
    }
}
