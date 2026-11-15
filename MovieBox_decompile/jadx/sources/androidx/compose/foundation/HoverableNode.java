package androidx.compose.foundation;

import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.node.d1;
import androidx.compose.ui.node.e1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

final class HoverableNode extends androidx.compose.ui.f.c implements e1 {

    private p.i f2294n;

    private p.d f2295o;

    public HoverableNode(p.i iVar) {
        this.f2294n = iVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object E1(Continuation continuation) {
        HoverableNode$emitEnter$1 hoverableNode$emitEnter$1;
        HoverableNode hoverableNode;
        p.d dVar;
        if (continuation instanceof HoverableNode$emitEnter$1) {
            hoverableNode$emitEnter$1 = (HoverableNode$emitEnter$1) continuation;
            int i10 = hoverableNode$emitEnter$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                hoverableNode$emitEnter$1.label = i10 - Integer.MIN_VALUE;
            } else {
                hoverableNode$emitEnter$1 = new HoverableNode$emitEnter$1(this, continuation);
            }
        } else {
            hoverableNode$emitEnter$1 = new HoverableNode$emitEnter$1(this, continuation);
        }
        Object obj = hoverableNode$emitEnter$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = hoverableNode$emitEnter$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            if (this.f2295o == null) {
                p.d dVar2 = new p.d();
                p.i iVar = this.f2294n;
                hoverableNode$emitEnter$1.L$0 = this;
                hoverableNode$emitEnter$1.L$1 = dVar2;
                hoverableNode$emitEnter$1.label = 1;
                if (iVar.c(dVar2, hoverableNode$emitEnter$1) == objF) {
                    return objF;
                }
                hoverableNode = this;
                dVar = dVar2;
            }
            return Unit.f64096a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        dVar = (p.d) hoverableNode$emitEnter$1.L$1;
        hoverableNode = (HoverableNode) hoverableNode$emitEnter$1.L$0;
        ResultKt.b(obj);
        hoverableNode.f2295o = dVar;
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object F1(Continuation continuation) {
        HoverableNode$emitExit$1 hoverableNode$emitExit$1;
        HoverableNode hoverableNode;
        if (continuation instanceof HoverableNode$emitExit$1) {
            hoverableNode$emitExit$1 = (HoverableNode$emitExit$1) continuation;
            int i10 = hoverableNode$emitExit$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                hoverableNode$emitExit$1.label = i10 - Integer.MIN_VALUE;
            } else {
                hoverableNode$emitExit$1 = new HoverableNode$emitExit$1(this, continuation);
            }
        } else {
            hoverableNode$emitExit$1 = new HoverableNode$emitExit$1(this, continuation);
        }
        Object obj = hoverableNode$emitExit$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = hoverableNode$emitExit$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            p.d dVar = this.f2295o;
            if (dVar != null) {
                p.e eVar = new p.e(dVar);
                p.i iVar = this.f2294n;
                hoverableNode$emitExit$1.L$0 = this;
                hoverableNode$emitExit$1.label = 1;
                if (iVar.c(eVar, hoverableNode$emitExit$1) == objF) {
                    return objF;
                }
                hoverableNode = this;
            }
            return Unit.f64096a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        hoverableNode = (HoverableNode) hoverableNode$emitExit$1.L$0;
        ResultKt.b(obj);
        hoverableNode.f2295o = null;
        return Unit.f64096a;
    }

    private final void G1() {
        p.d dVar = this.f2295o;
        if (dVar != null) {
            this.f2294n.a(new p.e(dVar));
            this.f2295o = null;
        }
    }

    public final void H1(p.i iVar) {
        if (Intrinsics.c(this.f2294n, iVar)) {
            return;
        }
        G1();
        this.f2294n = iVar;
    }

    @Override
    public void M(androidx.compose.ui.input.pointer.o oVar, PointerEventPass pointerEventPass, long j10) {
        if (pointerEventPass == PointerEventPass.Main) {
            int iE = oVar.e();
            androidx.compose.ui.input.pointer.q.a aVar = androidx.compose.ui.input.pointer.q.f4714a;
            if (androidx.compose.ui.input.pointer.q.i(iE, aVar.a())) {
                kotlinx.coroutines.k.d(c1(), null, null, new HoverableNode$onPointerEvent$1(this, null), 3, null);
            } else if (androidx.compose.ui.input.pointer.q.i(iE, aVar.b())) {
                kotlinx.coroutines.k.d(c1(), null, null, new HoverableNode$onPointerEvent$2(this, null), 3, null);
            }
        }
    }

    @Override
    public boolean O0() {
        return d1.d(this);
    }

    @Override
    public boolean R() {
        return d1.a(this);
    }

    @Override
    public void S0() {
        d1.c(this);
    }

    @Override
    public void n1() {
        G1();
    }

    @Override
    public void t0() {
        G1();
    }

    @Override
    public void y0() {
        d1.b(this);
    }
}
