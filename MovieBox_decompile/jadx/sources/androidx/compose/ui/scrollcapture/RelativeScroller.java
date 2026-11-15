package androidx.compose.ui.scrollcapture;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

final class RelativeScroller {

    private final int f5589a;

    private final Function2 f5590b;

    private float f5591c;

    public RelativeScroller(int i10, Function2 function2) {
        this.f5589a = i10;
        this.f5590b = function2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(float f10, Continuation continuation) {
        RelativeScroller$scrollBy$1 relativeScroller$scrollBy$1;
        RelativeScroller relativeScroller;
        if (continuation instanceof RelativeScroller$scrollBy$1) {
            relativeScroller$scrollBy$1 = (RelativeScroller$scrollBy$1) continuation;
            int i10 = relativeScroller$scrollBy$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                relativeScroller$scrollBy$1.label = i10 - Integer.MIN_VALUE;
            } else {
                relativeScroller$scrollBy$1 = new RelativeScroller$scrollBy$1(this, continuation);
            }
        } else {
            relativeScroller$scrollBy$1 = new RelativeScroller$scrollBy$1(this, continuation);
        }
        Object objInvoke = relativeScroller$scrollBy$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = relativeScroller$scrollBy$1.label;
        if (i11 == 0) {
            ResultKt.b(objInvoke);
            Function2 function2 = this.f5590b;
            Float fC = Boxing.c(f10);
            relativeScroller$scrollBy$1.L$0 = this;
            relativeScroller$scrollBy$1.label = 1;
            objInvoke = function2.invoke(fC, relativeScroller$scrollBy$1);
            if (objInvoke == objF) {
                return objF;
            }
            relativeScroller = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            relativeScroller = (RelativeScroller) relativeScroller$scrollBy$1.L$0;
            ResultKt.b(objInvoke);
        }
        relativeScroller.f5591c += ((Number) objInvoke).floatValue();
        return Unit.f64096a;
    }

    public final float b() {
        return this.f5591c;
    }

    public final int c(int i10) {
        return RangesKt.l(i10 - MathKt.d(this.f5591c), 0, this.f5589a);
    }

    public final void d() {
        this.f5591c = 0.0f;
    }

    public final Object f(int i10, int i11, Continuation continuation) {
        if (i10 > i11) {
            throw new IllegalArgumentException(("Expected min=" + i10 + " ≤ max=" + i11).toString());
        }
        int i12 = i11 - i10;
        int i13 = this.f5589a;
        if (i12 > i13) {
            throw new IllegalArgumentException(("Expected range (" + i12 + ") to be ≤ viewportSize=" + this.f5589a).toString());
        }
        float f10 = i10;
        float f11 = this.f5591c;
        if (f10 >= f11 && i11 <= i13 + f11) {
            return Unit.f64096a;
        }
        if (f10 >= f11) {
            i10 = i11 - i13;
        }
        Object objG = g(i10, continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }

    public final Object g(float f10, Continuation continuation) {
        Object objE = e(f10 - this.f5591c, continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f64096a;
    }
}
