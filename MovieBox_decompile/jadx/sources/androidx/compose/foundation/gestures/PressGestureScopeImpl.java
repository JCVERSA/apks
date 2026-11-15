package androidx.compose.foundation.gestures;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;

public final class PressGestureScopeImpl implements i, o0.e {

    private final o0.e f2364a;

    private boolean f2365b;

    private boolean f2366c;

    private final kotlinx.coroutines.sync.a f2367d = kotlinx.coroutines.sync.g.a(false);

    public PressGestureScopeImpl(o0.e eVar) {
        this.f2364a = eVar;
    }

    @Override
    public float B0() {
        return this.f2364a.B0();
    }

    @Override
    public float D0(float f10) {
        return this.f2364a.D0(f10);
    }

    @Override
    public long H(float f10) {
        return this.f2364a.H(f10);
    }

    @Override
    public float J(long j10) {
        return this.f2364a.J(j10);
    }

    @Override
    public long P0(long j10) {
        return this.f2364a.P0(j10);
    }

    @Override
    public long Q(float f10) {
        return this.f2364a.Q(f10);
    }

    @Override
    public int c0(float f10) {
        return this.f2364a.c0(f10);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object f0(Continuation continuation) {
        PressGestureScopeImpl$tryAwaitRelease$1 pressGestureScopeImpl$tryAwaitRelease$1;
        PressGestureScopeImpl pressGestureScopeImpl;
        if (continuation instanceof PressGestureScopeImpl$tryAwaitRelease$1) {
            pressGestureScopeImpl$tryAwaitRelease$1 = (PressGestureScopeImpl$tryAwaitRelease$1) continuation;
            int i10 = pressGestureScopeImpl$tryAwaitRelease$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                pressGestureScopeImpl$tryAwaitRelease$1.label = i10 - Integer.MIN_VALUE;
            } else {
                pressGestureScopeImpl$tryAwaitRelease$1 = new PressGestureScopeImpl$tryAwaitRelease$1(this, continuation);
            }
        } else {
            pressGestureScopeImpl$tryAwaitRelease$1 = new PressGestureScopeImpl$tryAwaitRelease$1(this, continuation);
        }
        Object obj = pressGestureScopeImpl$tryAwaitRelease$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = pressGestureScopeImpl$tryAwaitRelease$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            if (this.f2365b || this.f2366c) {
                pressGestureScopeImpl = this;
            } else {
                kotlinx.coroutines.sync.a aVar = this.f2367d;
                pressGestureScopeImpl$tryAwaitRelease$1.L$0 = this;
                pressGestureScopeImpl$tryAwaitRelease$1.label = 1;
                if (kotlinx.coroutines.sync.a.C0799a.a(aVar, null, pressGestureScopeImpl$tryAwaitRelease$1, 1, null) == objF) {
                    return objF;
                }
                pressGestureScopeImpl = this;
            }
            return Boxing.a(pressGestureScopeImpl.f2365b);
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        pressGestureScopeImpl = (PressGestureScopeImpl) pressGestureScopeImpl$tryAwaitRelease$1.L$0;
        ResultKt.b(obj);
        kotlinx.coroutines.sync.a.C0799a.c(pressGestureScopeImpl.f2367d, null, 1, null);
        return Boxing.a(pressGestureScopeImpl.f2365b);
    }

    @Override
    public float getDensity() {
        return this.f2364a.getDensity();
    }

    @Override
    public float h0(long j10) {
        return this.f2364a.h0(j10);
    }

    public final void n() {
        this.f2366c = true;
        kotlinx.coroutines.sync.a.C0799a.c(this.f2367d, null, 1, null);
    }

    public final void v() {
        this.f2365b = true;
        kotlinx.coroutines.sync.a.C0799a.c(this.f2367d, null, 1, null);
    }

    @Override
    public float x0(float f10) {
        return this.f2364a.x0(f10);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object z(Continuation continuation) {
        PressGestureScopeImpl$reset$1 pressGestureScopeImpl$reset$1;
        PressGestureScopeImpl pressGestureScopeImpl;
        if (continuation instanceof PressGestureScopeImpl$reset$1) {
            pressGestureScopeImpl$reset$1 = (PressGestureScopeImpl$reset$1) continuation;
            int i10 = pressGestureScopeImpl$reset$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                pressGestureScopeImpl$reset$1.label = i10 - Integer.MIN_VALUE;
            } else {
                pressGestureScopeImpl$reset$1 = new PressGestureScopeImpl$reset$1(this, continuation);
            }
        } else {
            pressGestureScopeImpl$reset$1 = new PressGestureScopeImpl$reset$1(this, continuation);
        }
        Object obj = pressGestureScopeImpl$reset$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = pressGestureScopeImpl$reset$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.sync.a aVar = this.f2367d;
            pressGestureScopeImpl$reset$1.L$0 = this;
            pressGestureScopeImpl$reset$1.label = 1;
            if (kotlinx.coroutines.sync.a.C0799a.a(aVar, null, pressGestureScopeImpl$reset$1, 1, null) == objF) {
                return objF;
            }
            pressGestureScopeImpl = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            pressGestureScopeImpl = (PressGestureScopeImpl) pressGestureScopeImpl$reset$1.L$0;
            ResultKt.b(obj);
        }
        pressGestureScopeImpl.f2365b = false;
        pressGestureScopeImpl.f2366c = false;
        return Unit.f64096a;
    }
}
