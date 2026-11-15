package androidx.compose.ui;

import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverNodeOwnerScope;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.v1;

public interface f {

    public static final a f3869a = a.f3870b;

    public interface b extends f {
    }

    Object b(Object obj, Function2 function2);

    boolean c(Function1 function1);

    f e(f fVar);

    public static abstract class c implements androidx.compose.ui.node.f {

        private n0 f3872b;

        private int f3873c;

        private c f3875e;

        private c f3876f;

        private ObserverNodeOwnerScope f3877g;

        private NodeCoordinator f3878h;

        private boolean f3879i;

        private boolean f3880j;

        private boolean f3881k;

        private boolean f3882l;

        private boolean f3883m;

        private c f3871a = this;

        private int f3874d = -1;

        public final void A1(Function0 function0) {
            androidx.compose.ui.node.g.n(this).registerOnEndApplyChangesListener(function0);
        }

        public void B1(NodeCoordinator nodeCoordinator) {
            this.f3878h = nodeCoordinator;
        }

        public final int Z0() {
            return this.f3874d;
        }

        public final c a1() {
            return this.f3876f;
        }

        public final NodeCoordinator b1() {
            return this.f3878h;
        }

        public final n0 c1() {
            n0 n0Var = this.f3872b;
            if (n0Var != null) {
                return n0Var;
            }
            n0 n0VarA = o0.a(androidx.compose.ui.node.g.n(this).getCoroutineContext().plus(v1.a((t1) androidx.compose.ui.node.g.n(this).getCoroutineContext().get(t1.f65027m1))));
            this.f3872b = n0VarA;
            return n0VarA;
        }

        public final boolean d1() {
            return this.f3879i;
        }

        public final int e1() {
            return this.f3873c;
        }

        public final ObserverNodeOwnerScope f1() {
            return this.f3877g;
        }

        public final c g1() {
            return this.f3875e;
        }

        @Override
        public final c getNode() {
            return this.f3871a;
        }

        public boolean h1() {
            return true;
        }

        public final boolean i1() {
            return this.f3880j;
        }

        public final boolean j1() {
            return this.f3883m;
        }

        public void k1() {
            if (this.f3883m) {
                g0.a.b("node attached multiple times");
            }
            if (!(this.f3878h != null)) {
                g0.a.b("attach invoked on a node without a coordinator");
            }
            this.f3883m = true;
            this.f3881k = true;
        }

        public void l1() {
            if (!this.f3883m) {
                g0.a.b("Cannot detach a node that is not attached");
            }
            if (this.f3881k) {
                g0.a.b("Must run runAttachLifecycle() before markAsDetached()");
            }
            if (this.f3882l) {
                g0.a.b("Must run runDetachLifecycle() before markAsDetached()");
            }
            this.f3883m = false;
            n0 n0Var = this.f3872b;
            if (n0Var != null) {
                o0.c(n0Var, new ModifierNodeDetachedCancellationException());
                this.f3872b = null;
            }
        }

        public void p1() {
            if (!this.f3883m) {
                g0.a.b("reset() called on an unattached node");
            }
            o1();
        }

        public void q1() {
            if (!this.f3883m) {
                g0.a.b("Must run markAsAttached() prior to runAttachLifecycle");
            }
            if (!this.f3881k) {
                g0.a.b("Must run runAttachLifecycle() only once after markAsAttached()");
            }
            this.f3881k = false;
            m1();
            this.f3882l = true;
        }

        public void r1() {
            if (!this.f3883m) {
                g0.a.b("node detached multiple times");
            }
            if (!(this.f3878h != null)) {
                g0.a.b("detach invoked on a node without a coordinator");
            }
            if (!this.f3882l) {
                g0.a.b("Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()");
            }
            this.f3882l = false;
            n1();
        }

        public final void s1(int i10) {
            this.f3874d = i10;
        }

        public void t1(c cVar) {
            this.f3871a = cVar;
        }

        public final void u1(c cVar) {
            this.f3876f = cVar;
        }

        public final void v1(boolean z10) {
            this.f3879i = z10;
        }

        public final void w1(int i10) {
            this.f3873c = i10;
        }

        public final void x1(ObserverNodeOwnerScope observerNodeOwnerScope) {
            this.f3877g = observerNodeOwnerScope;
        }

        public final void y1(c cVar) {
            this.f3875e = cVar;
        }

        public final void z1(boolean z10) {
            this.f3880j = z10;
        }

        public void m1() {
        }

        public void n1() {
        }

        public void o1() {
        }
    }

    public static final class a implements f {

        static final a f3870b = new a();

        private a() {
        }

        @Override
        public boolean c(Function1 function1) {
            return true;
        }

        public String toString() {
            return "Modifier";
        }

        @Override
        public f e(f fVar) {
            return fVar;
        }

        @Override
        public Object b(Object obj, Function2 function2) {
            return obj;
        }
    }
}
