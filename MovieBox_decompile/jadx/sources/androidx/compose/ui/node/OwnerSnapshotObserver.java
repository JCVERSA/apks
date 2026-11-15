package androidx.compose.ui.node;

import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class OwnerSnapshotObserver {

    public static final int f5062i = SnapshotStateObserver.f3629k;

    private final SnapshotStateObserver f5063a;

    private final Function1 f5064b = new Function1<LayoutNode, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f64096a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                LayoutNode.d1(layoutNode, false, false, false, 7, null);
            }
        }
    };

    private final Function1 f5065c = new Function1<LayoutNode, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f64096a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                LayoutNode.h1(layoutNode, false, false, false, 7, null);
            }
        }
    };

    private final Function1 f5066d = new Function1<LayoutNode, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f64096a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                layoutNode.B0();
            }
        }
    };

    private final Function1 f5067e = new Function1<LayoutNode, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f64096a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                LayoutNode.f1(layoutNode, false, 1, null);
            }
        }
    };

    private final Function1 f5068f = new Function1<LayoutNode, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f64096a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                LayoutNode.f1(layoutNode, false, 1, null);
            }
        }
    };

    private final Function1 f5069g = new Function1<LayoutNode, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f64096a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                LayoutNode.b1(layoutNode, false, 1, null);
            }
        }
    };

    private final Function1 f5070h = new Function1<LayoutNode, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f64096a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                LayoutNode.b1(layoutNode, false, 1, null);
            }
        }
    };

    public OwnerSnapshotObserver(Function1 function1) {
        this.f5063a = new SnapshotStateObserver(function1);
    }

    public static void d(OwnerSnapshotObserver ownerSnapshotObserver, LayoutNode layoutNode, boolean z10, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        ownerSnapshotObserver.c(layoutNode, z10, function0);
    }

    public static void f(OwnerSnapshotObserver ownerSnapshotObserver, LayoutNode layoutNode, boolean z10, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        ownerSnapshotObserver.e(layoutNode, z10, function0);
    }

    public static void h(OwnerSnapshotObserver ownerSnapshotObserver, LayoutNode layoutNode, boolean z10, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        ownerSnapshotObserver.g(layoutNode, z10, function0);
    }

    public final void a(Object obj) {
        this.f5063a.k(obj);
    }

    public final void b() {
        this.f5063a.l(new Function1<Object, Boolean>() {
            @Override
            public final Boolean invoke(Object obj) {
                Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.ui.node.OwnerScope");
                return Boolean.valueOf(!((z0) obj).isValidOwnerScope());
            }
        });
    }

    public final void c(LayoutNode layoutNode, boolean z10, Function0 function0) {
        if (!z10 || layoutNode.V() == null) {
            i(layoutNode, this.f5068f, function0);
        } else {
            i(layoutNode, this.f5069g, function0);
        }
    }

    public final void e(LayoutNode layoutNode, boolean z10, Function0 function0) {
        if (!z10 || layoutNode.V() == null) {
            i(layoutNode, this.f5067e, function0);
        } else {
            i(layoutNode, this.f5070h, function0);
        }
    }

    public final void g(LayoutNode layoutNode, boolean z10, Function0 function0) {
        if (!z10 || layoutNode.V() == null) {
            i(layoutNode, this.f5065c, function0);
        } else {
            i(layoutNode, this.f5064b, function0);
        }
    }

    public final void i(z0 z0Var, Function1 function1, Function0 function0) {
        this.f5063a.o(z0Var, function1, function0);
    }

    public final void j(LayoutNode layoutNode, Function0 function0) {
        i(layoutNode, this.f5066d, function0);
    }

    public final void k() {
        this.f5063a.s();
    }

    public final void l() {
        this.f5063a.t();
        this.f5063a.j();
    }
}
