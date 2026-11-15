package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import kotlin.jvm.internal.Intrinsics;

public abstract class r {
    public static final androidx.compose.ui.node.j0 a(androidx.compose.ui.node.j0 j0Var) {
        LayoutNode layoutNodeZ0 = j0Var.Z0();
        while (true) {
            LayoutNode layoutNodeH0 = layoutNodeZ0.h0();
            if ((layoutNodeH0 != null ? layoutNodeH0.V() : null) == null) {
                androidx.compose.ui.node.j0 j0VarT1 = layoutNodeZ0.f0().T1();
                Intrinsics.e(j0VarT1);
                return j0VarT1;
            }
            LayoutNode layoutNodeH1 = layoutNodeZ0.h0();
            LayoutNode layoutNodeV = layoutNodeH1 != null ? layoutNodeH1.V() : null;
            Intrinsics.e(layoutNodeV);
            if (layoutNodeV.H0()) {
                layoutNodeZ0 = layoutNodeZ0.h0();
                Intrinsics.e(layoutNodeZ0);
            } else {
                LayoutNode layoutNodeH2 = layoutNodeZ0.h0();
                Intrinsics.e(layoutNodeH2);
                layoutNodeZ0 = layoutNodeH2.V();
                Intrinsics.e(layoutNodeZ0);
            }
        }
    }
}
