package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.f;
import androidx.compose.ui.node.m1;
import androidx.compose.ui.node.n1;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import o0.z;
import y.g;

public final class NestedScrollNode extends f.c implements m1, b {

    private b f4627n;

    private NestedScrollDispatcher f4628o;

    private final Object f4629p;

    public NestedScrollNode(b bVar, NestedScrollDispatcher nestedScrollDispatcher) {
        this.f4627n = bVar;
        this.f4628o = nestedScrollDispatcher == null ? new NestedScrollDispatcher() : nestedScrollDispatcher;
        this.f4629p = "androidx.compose.ui.input.nestedscroll.NestedScrollNode";
    }

    public final n0 D1() {
        n0 n0VarH;
        NestedScrollNode nestedScrollNodeF1 = F1();
        if ((nestedScrollNodeF1 == null || (n0VarH = nestedScrollNodeF1.D1()) == null) && (n0VarH = this.f4628o.h()) == null) {
            throw new IllegalStateException("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
        }
        return n0VarH;
    }

    private final b E1() {
        if (j1()) {
            return F1();
        }
        return null;
    }

    private final void G1() {
        if (this.f4628o.f() == this) {
            this.f4628o.j(null);
        }
    }

    private final void H1(NestedScrollDispatcher nestedScrollDispatcher) {
        G1();
        if (nestedScrollDispatcher == null) {
            this.f4628o = new NestedScrollDispatcher();
        } else if (!Intrinsics.c(nestedScrollDispatcher, this.f4628o)) {
            this.f4628o = nestedScrollDispatcher;
        }
        if (j1()) {
            I1();
        }
    }

    private final void I1() {
        this.f4628o.j(this);
        this.f4628o.i(new Function0<n0>() {
            {
                super(0);
            }

            @Override
            public final n0 invoke() {
                return this.this$0.D1();
            }
        });
        this.f4628o.k(c1());
    }

    @Override
    public long A0(long j10, int i10) {
        b bVarE1 = E1();
        long jA0 = bVarE1 != null ? bVarE1.A0(j10, i10) : g.f75999b.c();
        return g.r(jA0, this.f4627n.A0(g.q(j10, jA0), i10));
    }

    @Override
    public Object D() {
        return this.f4629p;
    }

    public final NestedScrollNode F1() {
        if (j1()) {
            return (NestedScrollNode) n1.b(this);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    @Override
    public Object G(long j10, long j11, Continuation continuation) {
        NestedScrollNode$onPostFling$1 nestedScrollNode$onPostFling$1;
        long j12;
        long j13;
        NestedScrollNode nestedScrollNode;
        long j14;
        long jA;
        long j15;
        if (continuation instanceof NestedScrollNode$onPostFling$1) {
            nestedScrollNode$onPostFling$1 = (NestedScrollNode$onPostFling$1) continuation;
            int i10 = nestedScrollNode$onPostFling$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                nestedScrollNode$onPostFling$1.label = i10 - Integer.MIN_VALUE;
            } else {
                nestedScrollNode$onPostFling$1 = new NestedScrollNode$onPostFling$1(this, continuation);
            }
        } else {
            nestedScrollNode$onPostFling$1 = new NestedScrollNode$onPostFling$1(this, continuation);
        }
        Object objG = nestedScrollNode$onPostFling$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = nestedScrollNode$onPostFling$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                long j16 = nestedScrollNode$onPostFling$1.J$1;
                long j17 = nestedScrollNode$onPostFling$1.J$0;
                nestedScrollNode = (NestedScrollNode) nestedScrollNode$onPostFling$1.L$0;
                ResultKt.b(objG);
                j13 = j16;
                j12 = j17;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j15 = nestedScrollNode$onPostFling$1.J$0;
                ResultKt.b(objG);
            }
            jA = ((z) objG).n();
            j14 = j15;
            return z.b(z.l(j14, jA));
        }
        ResultKt.b(objG);
        b bVar = this.f4627n;
        nestedScrollNode$onPostFling$1.L$0 = this;
        j12 = j10;
        nestedScrollNode$onPostFling$1.J$0 = j12;
        j13 = j11;
        nestedScrollNode$onPostFling$1.J$1 = j13;
        nestedScrollNode$onPostFling$1.label = 1;
        objG = bVar.G(j10, j11, nestedScrollNode$onPostFling$1);
        if (objG == objF) {
            return objF;
        }
        nestedScrollNode = this;
        long jN = ((z) objG).n();
        b bVarE1 = nestedScrollNode.E1();
        if (bVarE1 != null) {
            long jL = z.l(j12, jN);
            long jK = z.k(j13, jN);
            nestedScrollNode$onPostFling$1.L$0 = null;
            nestedScrollNode$onPostFling$1.J$0 = jN;
            nestedScrollNode$onPostFling$1.label = 2;
            objG = bVarE1.G(jL, jK, nestedScrollNode$onPostFling$1);
            if (objG == objF) {
                return objF;
            }
            j15 = jN;
            jA = ((z) objG).n();
            j14 = j15;
        } else {
            j14 = jN;
            jA = z.f67438b.a();
        }
        return z.b(z.l(j14, jA));
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object H0(long j10, Continuation continuation) {
        NestedScrollNode$onPreFling$1 nestedScrollNode$onPreFling$1;
        long jA;
        NestedScrollNode nestedScrollNode;
        long j11;
        if (continuation instanceof NestedScrollNode$onPreFling$1) {
            nestedScrollNode$onPreFling$1 = (NestedScrollNode$onPreFling$1) continuation;
            int i10 = nestedScrollNode$onPreFling$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                nestedScrollNode$onPreFling$1.label = i10 - Integer.MIN_VALUE;
            } else {
                nestedScrollNode$onPreFling$1 = new NestedScrollNode$onPreFling$1(this, continuation);
            }
        } else {
            nestedScrollNode$onPreFling$1 = new NestedScrollNode$onPreFling$1(this, continuation);
        }
        Object objH0 = nestedScrollNode$onPreFling$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = nestedScrollNode$onPreFling$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                j10 = nestedScrollNode$onPreFling$1.J$0;
                nestedScrollNode = (NestedScrollNode) nestedScrollNode$onPreFling$1.L$0;
                ResultKt.b(objH0);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j11 = nestedScrollNode$onPreFling$1.J$0;
                ResultKt.b(objH0);
            }
            return z.b(z.l(j11, ((z) objH0).n()));
        }
        ResultKt.b(objH0);
        b bVarE1 = E1();
        if (bVarE1 != null) {
            nestedScrollNode$onPreFling$1.L$0 = this;
            nestedScrollNode$onPreFling$1.J$0 = j10;
            nestedScrollNode$onPreFling$1.label = 1;
            objH0 = bVarE1.H0(j10, nestedScrollNode$onPreFling$1);
            if (objH0 == objF) {
                return objF;
            }
            nestedScrollNode = this;
        } else {
            jA = z.f67438b.a();
            nestedScrollNode = this;
        }
        long j12 = j10;
        j11 = jA;
        b bVar = nestedScrollNode.f4627n;
        long jK = z.k(j12, j11);
        nestedScrollNode$onPreFling$1.L$0 = null;
        nestedScrollNode$onPreFling$1.J$0 = j11;
        nestedScrollNode$onPreFling$1.label = 2;
        objH0 = bVar.H0(jK, nestedScrollNode$onPreFling$1);
        if (objH0 == objF) {
            return objF;
        }
        return z.b(z.l(j11, ((z) objH0).n()));
        jA = ((z) objH0).n();
        long j13 = j10;
        j11 = jA;
        b bVar2 = nestedScrollNode.f4627n;
        long jK2 = z.k(j13, j11);
        nestedScrollNode$onPreFling$1.L$0 = null;
        nestedScrollNode$onPreFling$1.J$0 = j11;
        nestedScrollNode$onPreFling$1.label = 2;
        objH0 = bVar2.H0(jK2, nestedScrollNode$onPreFling$1);
        if (objH0 == objF) {
            return objF;
        }
        return z.b(z.l(j11, ((z) objH0).n()));
    }

    public final void J1(b bVar, NestedScrollDispatcher nestedScrollDispatcher) {
        this.f4627n = bVar;
        H1(nestedScrollDispatcher);
    }

    @Override
    public long g0(long j10, long j11, int i10) {
        long jG0 = this.f4627n.g0(j10, j11, i10);
        b bVarE1 = E1();
        return g.r(jG0, bVarE1 != null ? bVarE1.g0(g.r(j10, jG0), g.q(j11, jG0), i10) : g.f75999b.c());
    }

    @Override
    public void m1() {
        I1();
    }

    @Override
    public void n1() {
        G1();
    }
}
