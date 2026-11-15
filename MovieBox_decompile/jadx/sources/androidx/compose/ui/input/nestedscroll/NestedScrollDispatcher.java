package androidx.compose.ui.input.nestedscroll;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.n0;
import o0.z;
import y.g;

public final class NestedScrollDispatcher {

    private NestedScrollNode f4622a;

    private Function0 f4623b = new Function0<n0>() {
        {
            super(0);
        }

        @Override
        public final n0 invoke() {
            return this.this$0.h();
        }
    };

    private n0 f4624c;

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object a(long j10, long j11, Continuation continuation) {
        NestedScrollDispatcher$dispatchPostFling$1 nestedScrollDispatcher$dispatchPostFling$1;
        long jA;
        if (continuation instanceof NestedScrollDispatcher$dispatchPostFling$1) {
            nestedScrollDispatcher$dispatchPostFling$1 = (NestedScrollDispatcher$dispatchPostFling$1) continuation;
            int i10 = nestedScrollDispatcher$dispatchPostFling$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                nestedScrollDispatcher$dispatchPostFling$1.label = i10 - Integer.MIN_VALUE;
            } else {
                nestedScrollDispatcher$dispatchPostFling$1 = new NestedScrollDispatcher$dispatchPostFling$1(this, continuation);
            }
        } else {
            nestedScrollDispatcher$dispatchPostFling$1 = new NestedScrollDispatcher$dispatchPostFling$1(this, continuation);
        }
        NestedScrollDispatcher$dispatchPostFling$1 nestedScrollDispatcher$dispatchPostFling$2 = nestedScrollDispatcher$dispatchPostFling$1;
        Object objG = nestedScrollDispatcher$dispatchPostFling$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = nestedScrollDispatcher$dispatchPostFling$2.label;
        if (i11 == 0) {
            ResultKt.b(objG);
            b bVarG = g();
            if (bVarG != null) {
                nestedScrollDispatcher$dispatchPostFling$2.label = 1;
                objG = bVarG.G(j10, j11, nestedScrollDispatcher$dispatchPostFling$2);
                if (objG == objF) {
                    return objF;
                }
            } else {
                jA = z.f67438b.a();
            }
            return z.b(jA);
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objG);
        jA = ((z) objG).n();
        return z.b(jA);
    }

    public final long b(long j10, long j11, int i10) {
        b bVarG = g();
        return bVarG != null ? bVarG.g0(j10, j11, i10) : g.f75999b.c();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(long j10, Continuation continuation) {
        NestedScrollDispatcher$dispatchPreFling$1 nestedScrollDispatcher$dispatchPreFling$1;
        long jA;
        if (continuation instanceof NestedScrollDispatcher$dispatchPreFling$1) {
            nestedScrollDispatcher$dispatchPreFling$1 = (NestedScrollDispatcher$dispatchPreFling$1) continuation;
            int i10 = nestedScrollDispatcher$dispatchPreFling$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                nestedScrollDispatcher$dispatchPreFling$1.label = i10 - Integer.MIN_VALUE;
            } else {
                nestedScrollDispatcher$dispatchPreFling$1 = new NestedScrollDispatcher$dispatchPreFling$1(this, continuation);
            }
        } else {
            nestedScrollDispatcher$dispatchPreFling$1 = new NestedScrollDispatcher$dispatchPreFling$1(this, continuation);
        }
        Object objH0 = nestedScrollDispatcher$dispatchPreFling$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = nestedScrollDispatcher$dispatchPreFling$1.label;
        if (i11 == 0) {
            ResultKt.b(objH0);
            b bVarG = g();
            if (bVarG != null) {
                nestedScrollDispatcher$dispatchPreFling$1.label = 1;
                objH0 = bVarG.H0(j10, nestedScrollDispatcher$dispatchPreFling$1);
                if (objH0 == objF) {
                    return objF;
                }
            } else {
                jA = z.f67438b.a();
            }
            return z.b(jA);
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objH0);
        jA = ((z) objH0).n();
        return z.b(jA);
    }

    public final long d(long j10, int i10) {
        b bVarG = g();
        return bVarG != null ? bVarG.A0(j10, i10) : g.f75999b.c();
    }

    public final n0 e() {
        n0 n0Var = (n0) this.f4623b.invoke();
        if (n0Var != null) {
            return n0Var;
        }
        throw new IllegalStateException("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
    }

    public final NestedScrollNode f() {
        return this.f4622a;
    }

    public final b g() {
        NestedScrollNode nestedScrollNode = this.f4622a;
        if (nestedScrollNode != null) {
            return nestedScrollNode.F1();
        }
        return null;
    }

    public final n0 h() {
        return this.f4624c;
    }

    public final void i(Function0 function0) {
        this.f4623b = function0;
    }

    public final void j(NestedScrollNode nestedScrollNode) {
        this.f4622a = nestedScrollNode;
    }

    public final void k(n0 n0Var) {
        this.f4624c = n0Var;
    }
}
