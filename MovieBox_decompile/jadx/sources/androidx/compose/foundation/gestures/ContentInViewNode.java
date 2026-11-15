package androidx.compose.foundation.gestures;

import androidx.compose.ui.node.v;
import androidx.compose.ui.node.w;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.m0;
import o0.t;
import o0.u;

public final class ContentInViewNode extends androidx.compose.ui.f.c implements androidx.compose.foundation.relocation.d, w, androidx.compose.ui.node.d {

    private Orientation f2326n;

    private final ScrollingLogic f2327o;

    private boolean f2328p;

    private d f2329q;

    private final boolean f2330r;

    private androidx.compose.ui.layout.l f2332t;

    private y.i f2333u;

    private boolean f2334v;

    private boolean f2336x;

    private final BringIntoViewRequestPriorityQueue f2331s = new BringIntoViewRequestPriorityQueue();

    private long f2335w = t.f67425b.a();

    public static final class a {

        private final Function0 f2337a;

        private final kotlinx.coroutines.n f2338b;

        public a(Function0 function0, kotlinx.coroutines.n nVar) {
            this.f2337a = function0;
            this.f2338b = nVar;
        }

        public final kotlinx.coroutines.n a() {
            return this.f2338b;
        }

        public final Function0 b() {
            return this.f2337a;
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0050  */
        public String toString() {
            String str;
            m0 m0Var = (m0) this.f2338b.getContext().get(m0.f64930b);
            String strP = m0Var != null ? m0Var.p() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Request@");
            String string = Integer.toString(hashCode(), CharsKt.a(16));
            Intrinsics.g(string, "toString(this, checkRadix(radix))");
            sb2.append(string);
            if (strP != null) {
                str = '[' + strP + "](";
                if (str == null) {
                    str = "(";
                }
            } else {
                str = "(";
            }
            sb2.append(str);
            sb2.append("currentBounds()=");
            sb2.append(this.f2337a.invoke());
            sb2.append(", continuation=");
            sb2.append(this.f2338b);
            sb2.append(')');
            return sb2.toString();
        }
    }

    public class b {

        public static final int[] f2339a;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[Orientation.Vertical.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Orientation.Horizontal.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f2339a = iArr;
        }
    }

    public ContentInViewNode(Orientation orientation, ScrollingLogic scrollingLogic, boolean z10, d dVar) {
        this.f2326n = orientation;
        this.f2327o = scrollingLogic;
        this.f2328p = z10;
        this.f2329q = dVar;
    }

    public final float M1(d dVar) {
        if (t.e(this.f2335w, t.f67425b.a())) {
            return 0.0f;
        }
        y.i iVarQ1 = Q1();
        if (iVarQ1 == null) {
            iVarQ1 = this.f2334v ? R1() : null;
            if (iVarQ1 == null) {
                return 0.0f;
            }
        }
        long jD = u.d(this.f2335w);
        int i10 = b.f2339a[this.f2326n.ordinal()];
        if (i10 == 1) {
            return dVar.a(iVarQ1.i(), iVarQ1.c() - iVarQ1.i(), y.m.g(jD));
        }
        if (i10 == 2) {
            return dVar.a(iVarQ1.f(), iVarQ1.g() - iVarQ1.f(), y.m.i(jD));
        }
        throw new NoWhenBranchMatchedException();
    }

    private final int N1(long j10, long j11) {
        int i10 = b.f2339a[this.f2326n.ordinal()];
        if (i10 == 1) {
            return Intrinsics.j(t.f(j10), t.f(j11));
        }
        if (i10 == 2) {
            return Intrinsics.j(t.g(j10), t.g(j11));
        }
        throw new NoWhenBranchMatchedException();
    }

    private final int O1(long j10, long j11) {
        int i10 = b.f2339a[this.f2326n.ordinal()];
        if (i10 == 1) {
            return Float.compare(y.m.g(j10), y.m.g(j11));
        }
        if (i10 == 2) {
            return Float.compare(y.m.i(j10), y.m.i(j11));
        }
        throw new NoWhenBranchMatchedException();
    }

    private final y.i P1(y.i iVar, long j10) {
        return iVar.q(y.g.u(X1(iVar, j10)));
    }

    private final y.i Q1() {
        androidx.compose.runtime.collection.b bVar = this.f2331s.f2320a;
        int iN = bVar.n();
        y.i iVar = null;
        if (iN > 0) {
            int i10 = iN - 1;
            Object[] objArrM = bVar.m();
            do {
                y.i iVar2 = (y.i) ((a) objArrM[i10]).b().invoke();
                if (iVar2 != null) {
                    if (O1(iVar2.h(), u.d(this.f2335w)) > 0) {
                        return iVar == null ? iVar2 : iVar;
                    }
                    iVar = iVar2;
                }
                i10--;
            } while (i10 >= 0);
        }
        return iVar;
    }

    public final y.i R1() {
        if (!j1()) {
            return null;
        }
        androidx.compose.ui.layout.l lVarK = androidx.compose.ui.node.g.k(this);
        androidx.compose.ui.layout.l lVar = this.f2332t;
        if (lVar != null) {
            if (!lVar.F()) {
                lVar = null;
            }
            if (lVar != null) {
                return lVarK.O(lVar, false);
            }
        }
        return null;
    }

    private final boolean T1(y.i iVar, long j10) {
        long jX1 = X1(iVar, j10);
        return Math.abs(y.g.m(jX1)) <= 0.5f && Math.abs(y.g.n(jX1)) <= 0.5f;
    }

    static boolean U1(ContentInViewNode contentInViewNode, y.i iVar, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = contentInViewNode.f2335w;
        }
        return contentInViewNode.T1(iVar, j10);
    }

    public final void V1() {
        d dVarY1 = Y1();
        if (this.f2336x) {
            throw new IllegalStateException("launchAnimation called when previous animation was running");
        }
        kotlinx.coroutines.k.d(c1(), null, CoroutineStart.UNDISPATCHED, new ContentInViewNode$launchAnimation$2(this, new UpdatableAnimationState(dVarY1.b()), dVarY1, null), 1, null);
    }

    private final long X1(y.i iVar, long j10) {
        long jD = u.d(j10);
        int i10 = b.f2339a[this.f2326n.ordinal()];
        if (i10 == 1) {
            return y.h.a(0.0f, Y1().a(iVar.i(), iVar.c() - iVar.i(), y.m.g(jD)));
        }
        if (i10 == 2) {
            return y.h.a(Y1().a(iVar.f(), iVar.g() - iVar.f(), y.m.i(jD)), 0.0f);
        }
        throw new NoWhenBranchMatchedException();
    }

    private final d Y1() {
        d dVar = this.f2329q;
        return dVar == null ? (d) androidx.compose.ui.node.e.a(this, BringIntoViewSpec_androidKt.a()) : dVar;
    }

    @Override
    public Object E0(Function0 function0, Continuation continuation) {
        y.i iVar = (y.i) function0.invoke();
        if (iVar == null || U1(this, iVar, 0L, 1, null)) {
            return Unit.f64096a;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        if (this.f2331s.c(new a(function0, cancellableContinuationImpl)) && !this.f2336x) {
            V1();
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f64096a;
    }

    @Override
    public void F(long j10) {
        y.i iVarR1;
        long j11 = this.f2335w;
        this.f2335w = j10;
        if (N1(j10, j11) < 0 && (iVarR1 = R1()) != null) {
            y.i iVar = this.f2333u;
            if (iVar == null) {
                iVar = iVarR1;
            }
            if (!this.f2336x && !this.f2334v && T1(iVar, j11) && !T1(iVarR1, j10)) {
                this.f2334v = true;
                V1();
            }
            this.f2333u = iVarR1;
        }
    }

    @Override
    public void I(androidx.compose.ui.layout.l lVar) {
        v.a(this, lVar);
    }

    public final long S1() {
        return this.f2335w;
    }

    public final void W1(androidx.compose.ui.layout.l lVar) {
        this.f2332t = lVar;
    }

    @Override
    public y.i Y(y.i iVar) {
        if (t.e(this.f2335w, t.f67425b.a())) {
            throw new IllegalStateException("Expected BringIntoViewRequester to not be used before parents are placed.");
        }
        return P1(iVar, this.f2335w);
    }

    public final void Z1(Orientation orientation, boolean z10, d dVar) {
        this.f2326n = orientation;
        this.f2328p = z10;
        this.f2329q = dVar;
    }

    @Override
    public boolean h1() {
        return this.f2330r;
    }
}
