package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.l0;
import androidx.compose.ui.input.pointer.n0;
import androidx.compose.ui.input.pointer.w;
import androidx.compose.ui.node.d1;
import androidx.compose.ui.node.e1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import o0.z;

public abstract class DragGestureNode extends androidx.compose.ui.node.i implements e1, androidx.compose.ui.node.d {

    private Orientation f2353p;

    private Function1 f2354q;

    private boolean f2355r;

    private p.i f2356s;

    private final Function1 f2357t = new Function1<w, Boolean>() {
        {
            super(1);
        }

        @Override
        public final Boolean invoke(w wVar) {
            return (Boolean) this.this$0.S1().invoke(wVar);
        }
    };

    private kotlinx.coroutines.channels.d f2358u;

    private p.a.b f2359v;

    private boolean f2360w;

    private n0 f2361x;

    public DragGestureNode(Function1 function1, boolean z10, p.i iVar, Orientation orientation) {
        this.f2353p = orientation;
        this.f2354q = function1;
        this.f2355r = z10;
        this.f2356s = iVar;
    }

    private final n0 U1() {
        return l0.a(new DragGestureNode$initializePointerInputNode$1(this, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object X1(Continuation continuation) {
        DragGestureNode$processDragCancel$1 dragGestureNode$processDragCancel$1;
        DragGestureNode dragGestureNode;
        if (continuation instanceof DragGestureNode$processDragCancel$1) {
            dragGestureNode$processDragCancel$1 = (DragGestureNode$processDragCancel$1) continuation;
            int i10 = dragGestureNode$processDragCancel$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dragGestureNode$processDragCancel$1.label = i10 - Integer.MIN_VALUE;
            } else {
                dragGestureNode$processDragCancel$1 = new DragGestureNode$processDragCancel$1(this, continuation);
            }
        } else {
            dragGestureNode$processDragCancel$1 = new DragGestureNode$processDragCancel$1(this, continuation);
        }
        Object obj = dragGestureNode$processDragCancel$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = dragGestureNode$processDragCancel$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            p.a.b bVar = this.f2359v;
            if (bVar != null) {
                p.i iVar = this.f2356s;
                if (iVar != null) {
                    p.a.C0847a c0847a = new p.a.C0847a(bVar);
                    dragGestureNode$processDragCancel$1.L$0 = this;
                    dragGestureNode$processDragCancel$1.label = 1;
                    if (iVar.c(c0847a, dragGestureNode$processDragCancel$1) == objF) {
                        return objF;
                    }
                }
                dragGestureNode = this;
            } else {
                dragGestureNode = this;
            }
            dragGestureNode.W1(z.f67438b.a());
            return Unit.f64096a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        dragGestureNode = (DragGestureNode) dragGestureNode$processDragCancel$1.L$0;
        ResultKt.b(obj);
        dragGestureNode.f2359v = null;
        dragGestureNode.W1(z.f67438b.a());
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object Y1(e.c cVar, Continuation continuation) {
        DragGestureNode$processDragStart$1 dragGestureNode$processDragStart$1;
        DragGestureNode dragGestureNode;
        p.i iVar;
        p.a.b bVar;
        e.c cVar2;
        p.a.b bVar2;
        DragGestureNode dragGestureNode2;
        if (continuation instanceof DragGestureNode$processDragStart$1) {
            dragGestureNode$processDragStart$1 = (DragGestureNode$processDragStart$1) continuation;
            int i10 = dragGestureNode$processDragStart$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dragGestureNode$processDragStart$1.label = i10 - Integer.MIN_VALUE;
            } else {
                dragGestureNode$processDragStart$1 = new DragGestureNode$processDragStart$1(this, continuation);
            }
        } else {
            dragGestureNode$processDragStart$1 = new DragGestureNode$processDragStart$1(this, continuation);
        }
        Object obj = dragGestureNode$processDragStart$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = dragGestureNode$processDragStart$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                cVar = (e.c) dragGestureNode$processDragStart$1.L$1;
                dragGestureNode = (DragGestureNode) dragGestureNode$processDragStart$1.L$0;
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                bVar2 = (p.a.b) dragGestureNode$processDragStart$1.L$2;
                cVar2 = (e.c) dragGestureNode$processDragStart$1.L$1;
                dragGestureNode2 = (DragGestureNode) dragGestureNode$processDragStart$1.L$0;
                ResultKt.b(obj);
            }
            bVar = bVar2;
            dragGestureNode = dragGestureNode2;
            cVar = cVar2;
            dragGestureNode.f2359v = bVar;
            dragGestureNode.V1(cVar.a());
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        p.a.b bVar3 = this.f2359v;
        if (bVar3 != null && (iVar = this.f2356s) != null) {
            p.a.C0847a c0847a = new p.a.C0847a(bVar3);
            dragGestureNode$processDragStart$1.L$0 = this;
            dragGestureNode$processDragStart$1.L$1 = cVar;
            dragGestureNode$processDragStart$1.label = 1;
            if (iVar.c(c0847a, dragGestureNode$processDragStart$1) == objF) {
                return objF;
            }
        }
        dragGestureNode = this;
        bVar = new p.a.b();
        p.i iVar2 = dragGestureNode.f2356s;
        if (iVar2 != null) {
            dragGestureNode$processDragStart$1.L$0 = dragGestureNode;
            dragGestureNode$processDragStart$1.L$1 = cVar;
            dragGestureNode$processDragStart$1.L$2 = bVar;
            dragGestureNode$processDragStart$1.label = 2;
            if (iVar2.c(bVar, dragGestureNode$processDragStart$1) == objF) {
                return objF;
            }
            cVar2 = cVar;
            bVar2 = bVar;
            dragGestureNode2 = dragGestureNode;
            bVar = bVar2;
            dragGestureNode = dragGestureNode2;
            cVar = cVar2;
        }
        dragGestureNode.f2359v = bVar;
        dragGestureNode.V1(cVar.a());
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object Z1(e.d dVar, Continuation continuation) {
        DragGestureNode$processDragStop$1 dragGestureNode$processDragStop$1;
        DragGestureNode dragGestureNode;
        if (continuation instanceof DragGestureNode$processDragStop$1) {
            dragGestureNode$processDragStop$1 = (DragGestureNode$processDragStop$1) continuation;
            int i10 = dragGestureNode$processDragStop$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dragGestureNode$processDragStop$1.label = i10 - Integer.MIN_VALUE;
            } else {
                dragGestureNode$processDragStop$1 = new DragGestureNode$processDragStop$1(this, continuation);
            }
        } else {
            dragGestureNode$processDragStop$1 = new DragGestureNode$processDragStop$1(this, continuation);
        }
        Object obj = dragGestureNode$processDragStop$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = dragGestureNode$processDragStop$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            p.a.b bVar = this.f2359v;
            if (bVar != null) {
                p.i iVar = this.f2356s;
                if (iVar != null) {
                    p.a.c cVar = new p.a.c(bVar);
                    dragGestureNode$processDragStop$1.L$0 = this;
                    dragGestureNode$processDragStop$1.L$1 = dVar;
                    dragGestureNode$processDragStop$1.label = 1;
                    if (iVar.c(cVar, dragGestureNode$processDragStop$1) == objF) {
                        return objF;
                    }
                }
                dragGestureNode = this;
            } else {
                dragGestureNode = this;
            }
            dragGestureNode.W1(dVar.a());
            return Unit.f64096a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        dVar = (e.d) dragGestureNode$processDragStop$1.L$1;
        dragGestureNode = (DragGestureNode) dragGestureNode$processDragStop$1.L$0;
        ResultKt.b(obj);
        dragGestureNode.f2359v = null;
        dragGestureNode.W1(dVar.a());
        return Unit.f64096a;
    }

    public final void b2() {
        this.f2360w = true;
        kotlinx.coroutines.k.d(c1(), null, null, new DragGestureNode$startListeningForEvents$1(this, null), 3, null);
    }

    @Override
    public void M(androidx.compose.ui.input.pointer.o oVar, PointerEventPass pointerEventPass, long j10) {
        if (this.f2355r && this.f2361x == null) {
            this.f2361x = (n0) C1(U1());
        }
        n0 n0Var = this.f2361x;
        if (n0Var != null) {
            n0Var.M(oVar, pointerEventPass, j10);
        }
    }

    @Override
    public boolean O0() {
        return d1.d(this);
    }

    public final void Q1() {
        p.a.b bVar = this.f2359v;
        if (bVar != null) {
            p.i iVar = this.f2356s;
            if (iVar != null) {
                iVar.a(new p.a.C0847a(bVar));
            }
            this.f2359v = null;
        }
    }

    @Override
    public boolean R() {
        return d1.a(this);
    }

    public abstract Object R1(Function2 function2, Continuation continuation);

    @Override
    public void S0() {
        d1.c(this);
    }

    protected final Function1 S1() {
        return this.f2354q;
    }

    protected final boolean T1() {
        return this.f2355r;
    }

    public abstract void V1(long j10);

    public abstract void W1(long j10);

    public abstract boolean a2();

    public final void c2(Function1 function1, boolean z10, p.i iVar, Orientation orientation, boolean z11) {
        n0 n0Var;
        this.f2354q = function1;
        boolean z12 = true;
        if (this.f2355r != z10) {
            this.f2355r = z10;
            if (!z10) {
                Q1();
                n0 n0Var2 = this.f2361x;
                if (n0Var2 != null) {
                    F1(n0Var2);
                }
                this.f2361x = null;
            }
            z11 = true;
        }
        if (!Intrinsics.c(this.f2356s, iVar)) {
            Q1();
            this.f2356s = iVar;
        }
        if (this.f2353p != orientation) {
            this.f2353p = orientation;
        } else {
            z12 = z11;
        }
        if (!z12 || (n0Var = this.f2361x) == null) {
            return;
        }
        n0Var.j0();
    }

    @Override
    public void n1() {
        this.f2360w = false;
        Q1();
    }

    @Override
    public void t0() {
        n0 n0Var = this.f2361x;
        if (n0Var != null) {
            n0Var.t0();
        }
    }

    @Override
    public void y0() {
        d1.b(this);
    }
}
