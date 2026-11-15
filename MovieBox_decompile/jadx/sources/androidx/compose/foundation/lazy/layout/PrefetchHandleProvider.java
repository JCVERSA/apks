package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.node.m1;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public final class PrefetchHandleProvider {

    private final LazyLayoutItemContentFactory f2702a;

    private final SubcomposeLayoutState f2703b;

    private final i0 f2704c;

    private final class HandleAndRequestImpl implements x.b, g0 {

        private final int f2705a;

        private final long f2706b;

        private final f0 f2707c;

        private SubcomposeLayoutState.a f2708d;

        private boolean f2709e;

        private boolean f2710f;

        private boolean f2711g;

        private a f2712h;

        private boolean f2713i;

        private final class a {

            private final List f2715a;

            private final List[] f2716b;

            private int f2717c;

            private int f2718d;

            public a(List list) {
                this.f2715a = list;
                this.f2716b = new List[list.size()];
                if (list.isEmpty()) {
                    throw new IllegalArgumentException("NestedPrefetchController shouldn't be created with no states");
                }
            }

            public final boolean a(h0 h0Var) {
                if (this.f2717c >= this.f2715a.size()) {
                    return false;
                }
                if (HandleAndRequestImpl.this.f2710f) {
                    throw new IllegalStateException("Should not execute nested prefetch on canceled request");
                }
                Trace.beginSection("compose:lazy:prefetch:nested");
                while (this.f2717c < this.f2715a.size()) {
                    try {
                        if (this.f2716b[this.f2717c] == null) {
                            if (h0Var.a() <= 0) {
                                Trace.endSection();
                                return true;
                            }
                            List[] listArr = this.f2716b;
                            int i10 = this.f2717c;
                            listArr[i10] = ((x) this.f2715a.get(i10)).b();
                        }
                        List list = this.f2716b[this.f2717c];
                        Intrinsics.e(list);
                        while (this.f2718d < list.size()) {
                            if (((g0) list.get(this.f2718d)).b(h0Var)) {
                                Trace.endSection();
                                return true;
                            }
                            this.f2718d++;
                        }
                        this.f2718d = 0;
                        this.f2717c++;
                    } catch (Throwable th2) {
                        Trace.endSection();
                        throw th2;
                    }
                }
                Unit unit = Unit.f64096a;
                Trace.endSection();
                return false;
            }
        }

        public HandleAndRequestImpl(PrefetchHandleProvider prefetchHandleProvider, int i10, long j10, f0 f0Var, DefaultConstructorMarker defaultConstructorMarker) {
            this(i10, j10, f0Var);
        }

        private final boolean d() {
            return this.f2708d != null;
        }

        private final boolean e() {
            if (!this.f2710f) {
                int itemCount = ((m) PrefetchHandleProvider.this.f2702a.d().invoke()).getItemCount();
                int i10 = this.f2705a;
                if (i10 >= 0 && i10 < itemCount) {
                    return true;
                }
            }
            return false;
        }

        private final void f() {
            if (!e()) {
                throw new IllegalArgumentException("Callers should check whether the request is still valid before calling performComposition()");
            }
            if (this.f2708d != null) {
                throw new IllegalArgumentException("Request was already composed!");
            }
            m mVar = (m) PrefetchHandleProvider.this.f2702a.d().invoke();
            Object objB = mVar.b(this.f2705a);
            this.f2708d = PrefetchHandleProvider.this.f2703b.i(objB, PrefetchHandleProvider.this.f2702a.b(this.f2705a, objB, mVar.c(this.f2705a)));
        }

        private final void g(long j10) {
            if (this.f2710f) {
                throw new IllegalArgumentException("Callers should check whether the request is still valid before calling performMeasure()");
            }
            if (this.f2709e) {
                throw new IllegalArgumentException("Request was already measured!");
            }
            this.f2709e = true;
            SubcomposeLayoutState.a aVar = this.f2708d;
            if (aVar == null) {
                throw new IllegalArgumentException("performComposition() must be called before performMeasure()");
            }
            int iB = aVar.b();
            for (int i10 = 0; i10 < iB; i10++) {
                aVar.c(i10, j10);
            }
        }

        private final a h() {
            SubcomposeLayoutState.a aVar = this.f2708d;
            if (aVar == null) {
                throw new IllegalArgumentException("Should precompose before resolving nested prefetch states");
            }
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            aVar.a("androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode", new Function1<m1, TraversableNode$Companion$TraverseDescendantsAction>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final TraversableNode$Companion$TraverseDescendantsAction invoke(m1 m1Var) {
                    T tQ;
                    Intrinsics.f(m1Var, "null cannot be cast to non-null type androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode");
                    x xVarC1 = ((l0) m1Var).C1();
                    Ref.ObjectRef<List<x>> objectRef2 = objectRef;
                    List<x> list = objectRef2.element;
                    if (list != null) {
                        list.add(xVarC1);
                        tQ = list;
                    } else {
                        tQ = CollectionsKt.q(xVarC1);
                    }
                    objectRef2.element = tQ;
                    return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
                }
            });
            List list = (List) objectRef.element;
            if (list != null) {
                return new a(list);
            }
            return null;
        }

        private final boolean i(h0 h0Var, long j10) {
            long jA = h0Var.a();
            return (this.f2713i && jA > 0) || j10 < jA;
        }

        @Override
        public void a() {
            this.f2713i = true;
        }

        @Override
        public boolean b(h0 h0Var) {
            if (!e()) {
                return false;
            }
            Object objC = ((m) PrefetchHandleProvider.this.f2702a.d().invoke()).c(this.f2705a);
            if (!d()) {
                if (!i(h0Var, (objC == null || !this.f2707c.f().a(objC)) ? this.f2707c.e() : this.f2707c.f().c(objC))) {
                    return true;
                }
                f0 f0Var = this.f2707c;
                long jNanoTime = System.nanoTime();
                Trace.beginSection("compose:lazy:prefetch:compose");
                try {
                    f();
                    Unit unit = Unit.f64096a;
                    Trace.endSection();
                    long jNanoTime2 = System.nanoTime() - jNanoTime;
                    if (objC != null) {
                        f0Var.f().p(objC, f0Var.d(jNanoTime2, f0Var.f().e(objC, 0L)));
                    }
                    f0Var.f2746c = f0Var.d(jNanoTime2, f0Var.e());
                } catch (Throwable th2) {
                    Trace.endSection();
                    throw th2;
                }
            }
            if (!this.f2713i) {
                if (!this.f2711g) {
                    if (h0Var.a() <= 0) {
                        return true;
                    }
                    Trace.beginSection("compose:lazy:prefetch:resolve-nested");
                    try {
                        this.f2712h = h();
                        this.f2711g = true;
                        Unit unit2 = Unit.f64096a;
                        Trace.endSection();
                    } catch (Throwable th3) {
                        Trace.endSection();
                        throw th3;
                    }
                }
                a aVar = this.f2712h;
                if (aVar != null ? aVar.a(h0Var) : false) {
                    return true;
                }
            }
            if (!this.f2709e && !o0.b.p(this.f2706b)) {
                if (!i(h0Var, (objC == null || !this.f2707c.h().a(objC)) ? this.f2707c.g() : this.f2707c.h().c(objC))) {
                    return true;
                }
                f0 f0Var2 = this.f2707c;
                long jNanoTime3 = System.nanoTime();
                Trace.beginSection("compose:lazy:prefetch:measure");
                try {
                    g(this.f2706b);
                    Unit unit3 = Unit.f64096a;
                    Trace.endSection();
                    long jNanoTime4 = System.nanoTime() - jNanoTime3;
                    if (objC != null) {
                        f0Var2.h().p(objC, f0Var2.d(jNanoTime4, f0Var2.h().e(objC, 0L)));
                    }
                    f0Var2.f2747d = f0Var2.d(jNanoTime4, f0Var2.g());
                } catch (Throwable th4) {
                    Trace.endSection();
                    throw th4;
                }
            }
            return false;
        }

        @Override
        public void cancel() {
            if (this.f2710f) {
                return;
            }
            this.f2710f = true;
            SubcomposeLayoutState.a aVar = this.f2708d;
            if (aVar != null) {
                aVar.dispose();
            }
            this.f2708d = null;
        }

        public String toString() {
            return "HandleAndRequestImpl { index = " + this.f2705a + ", constraints = " + ((Object) o0.b.q(this.f2706b)) + ", isComposed = " + d() + ", isMeasured = " + this.f2709e + ", isCanceled = " + this.f2710f + " }";
        }

        private HandleAndRequestImpl(int i10, long j10, f0 f0Var) {
            this.f2705a = i10;
            this.f2706b = j10;
            this.f2707c = f0Var;
        }
    }

    public PrefetchHandleProvider(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, SubcomposeLayoutState subcomposeLayoutState, i0 i0Var) {
        this.f2702a = lazyLayoutItemContentFactory;
        this.f2703b = subcomposeLayoutState;
        this.f2704c = i0Var;
    }

    public final g0 c(int i10, long j10, f0 f0Var) {
        return new HandleAndRequestImpl(this, i10, j10, f0Var, null);
    }

    public final x.b d(int i10, long j10, f0 f0Var) {
        HandleAndRequestImpl handleAndRequestImpl = new HandleAndRequestImpl(this, i10, j10, f0Var, null);
        this.f2704c.schedulePrefetch(handleAndRequestImpl);
        return handleAndRequestImpl;
    }
}
