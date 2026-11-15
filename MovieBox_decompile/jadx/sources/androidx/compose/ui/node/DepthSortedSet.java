package androidx.compose.ui.node;

import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class DepthSortedSet {

    private final boolean f4926a;

    private final Lazy f4927b = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<Map<LayoutNode, Integer>>() {
        @Override
        public final Map<LayoutNode, Integer> invoke() {
            return new LinkedHashMap();
        }
    });

    private final Comparator f4928c;

    private final TreeSet f4929d;

    public DepthSortedSet(boolean z10) {
        this.f4926a = z10;
        Comparator<LayoutNode> comparator = new Comparator<LayoutNode>() {
            @Override
            public int compare(LayoutNode a10, LayoutNode b10) {
                int iJ = Intrinsics.j(a10.I(), b10.I());
                return iJ != 0 ? iJ : Intrinsics.j(a10.hashCode(), b10.hashCode());
            }
        };
        this.f4928c = comparator;
        this.f4929d = new TreeSet(comparator);
    }

    private final Map c() {
        return (Map) this.f4927b.getValue();
    }

    public final void a(LayoutNode layoutNode) {
        if (!layoutNode.D0()) {
            g0.a.b("DepthSortedSet.add called on an unattached node");
        }
        if (this.f4926a) {
            Integer num = (Integer) c().get(layoutNode);
            if (num == null) {
                c().put(layoutNode, Integer.valueOf(layoutNode.I()));
            } else {
                if (!(num.intValue() == layoutNode.I())) {
                    g0.a.b("invalid node depth");
                }
            }
        }
        this.f4929d.add(layoutNode);
    }

    public final boolean b(LayoutNode layoutNode) {
        boolean zContains = this.f4929d.contains(layoutNode);
        if (this.f4926a) {
            if (!(zContains == c().containsKey(layoutNode))) {
                g0.a.b("inconsistency in TreeSet");
            }
        }
        return zContains;
    }

    public final boolean d() {
        return this.f4929d.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final LayoutNode e() {
        LayoutNode layoutNode = (LayoutNode) this.f4929d.first();
        f(layoutNode);
        return layoutNode;
    }

    public final boolean f(LayoutNode layoutNode) {
        if (!layoutNode.D0()) {
            g0.a.b("DepthSortedSet.remove called on an unattached node");
        }
        boolean zRemove = this.f4929d.remove(layoutNode);
        if (this.f4926a) {
            if (!Intrinsics.c((Integer) c().remove(layoutNode), zRemove ? Integer.valueOf(layoutNode.I()) : null)) {
                g0.a.b("invalid node depth");
            }
        }
        return zRemove;
    }

    public String toString() {
        return this.f4929d.toString();
    }
}
