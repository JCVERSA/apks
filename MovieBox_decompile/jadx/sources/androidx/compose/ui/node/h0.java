package androidx.compose.ui.node;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class h0 {

    private final LayoutNode f5078a;

    private final j f5079b;

    private final List f5080c;

    public h0(LayoutNode layoutNode, j jVar, List list) {
        this.f5078a = layoutNode;
        this.f5079b = jVar;
        this.f5080c = list;
    }

    private final boolean b(LayoutNode layoutNode) {
        Object obj;
        LayoutNode layoutNodeH0 = layoutNode.h0();
        Object obj2 = null;
        LayoutNode.LayoutState layoutStateR = layoutNodeH0 != null ? layoutNodeH0.R() : null;
        if (layoutNode.n() || (layoutNode.i0() != Integer.MAX_VALUE && layoutNodeH0 != null && layoutNodeH0.n())) {
            if (layoutNode.Y()) {
                List list = this.f5080c;
                int size = list.size();
                int i10 = 0;
                while (true) {
                    if (i10 >= size) {
                        obj = null;
                        break;
                    }
                    obj = list.get(i10);
                    k0.a aVar = (k0.a) obj;
                    if (Intrinsics.c(aVar.a(), layoutNode) && !aVar.c()) {
                        break;
                    }
                    i10++;
                }
                if (obj != null) {
                    return true;
                }
            }
            if (layoutNode.Y()) {
                return this.f5079b.d(layoutNode) || layoutNode.R() == LayoutNode.LayoutState.LookaheadMeasuring || (layoutNodeH0 != null && layoutNodeH0.Y()) || ((layoutNodeH0 != null && layoutNodeH0.T()) || layoutStateR == LayoutNode.LayoutState.Measuring);
            }
            if (layoutNode.Q()) {
                return this.f5079b.d(layoutNode) || layoutNodeH0 == null || layoutNodeH0.Y() || layoutNodeH0.Q() || layoutStateR == LayoutNode.LayoutState.Measuring || layoutStateR == LayoutNode.LayoutState.LayingOut;
            }
        }
        if (Intrinsics.c(layoutNode.G0(), Boolean.TRUE)) {
            if (layoutNode.T()) {
                List list2 = this.f5080c;
                int size2 = list2.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    Object obj3 = list2.get(i11);
                    k0.a aVar2 = (k0.a) obj3;
                    if (Intrinsics.c(aVar2.a(), layoutNode) && aVar2.c()) {
                        obj2 = obj3;
                        break;
                    }
                }
                if (obj2 != null) {
                    return true;
                }
            }
            if (layoutNode.T()) {
                return this.f5079b.e(layoutNode, true) || (layoutNodeH0 != null && layoutNodeH0.T()) || layoutStateR == LayoutNode.LayoutState.LookaheadMeasuring || (layoutNodeH0 != null && layoutNodeH0.Y() && Intrinsics.c(layoutNode.V(), layoutNode));
            }
            if (layoutNode.S()) {
                return this.f5079b.e(layoutNode, true) || layoutNodeH0 == null || layoutNodeH0.T() || layoutNodeH0.S() || layoutStateR == LayoutNode.LayoutState.LookaheadMeasuring || layoutStateR == LayoutNode.LayoutState.LookaheadLayingOut || (layoutNodeH0.Q() && Intrinsics.c(layoutNode.V(), layoutNode));
            }
        }
        return true;
    }

    private final boolean c(LayoutNode layoutNode) {
        if (!b(layoutNode)) {
            return false;
        }
        List listE = layoutNode.E();
        int size = listE.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!c((LayoutNode) listE.get(i10))) {
                return false;
            }
        }
        return true;
    }

    private final String d() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Tree state:");
        Intrinsics.g(sb2, "append(value)");
        sb2.append('\n');
        Intrinsics.g(sb2, "append('\\n')");
        e(this, sb2, this.f5078a, 0);
        return sb2.toString();
    }

    private static final void e(h0 h0Var, StringBuilder sb2, LayoutNode layoutNode, int i10) {
        String strF = h0Var.f(layoutNode);
        if (strF.length() > 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                sb2.append("..");
            }
            sb2.append(strF);
            Intrinsics.g(sb2, "append(value)");
            sb2.append('\n');
            Intrinsics.g(sb2, "append('\\n')");
            i10++;
        }
        List listE = layoutNode.E();
        int size = listE.size();
        for (int i12 = 0; i12 < size; i12++) {
            e(h0Var, sb2, (LayoutNode) listE.get(i12), i10);
        }
    }

    private final String f(LayoutNode layoutNode) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(layoutNode);
        StringBuilder sb3 = new StringBuilder();
        sb3.append('[');
        sb3.append(layoutNode.R());
        sb3.append(']');
        sb2.append(sb3.toString());
        if (!layoutNode.n()) {
            sb2.append("[!isPlaced]");
        }
        sb2.append("[measuredByParent=" + layoutNode.a0() + ']');
        if (!b(layoutNode)) {
            sb2.append("[INCONSISTENT]");
        }
        return sb2.toString();
    }

    public final void a() {
        if (c(this.f5078a)) {
            return;
        }
        System.out.println((Object) d());
        throw new IllegalStateException("Inconsistency found!");
    }
}
