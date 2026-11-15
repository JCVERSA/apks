package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.SuspendAnimationKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/foundation/gestures/h;", "", "<anonymous>", "(Landroidx/compose/foundation/gestures/h;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$2", f = "Scrollable.kt", l = {967}, m = "invokeSuspend")
final class ScrollableKt$semanticsScrollBy$2 extends SuspendLambda implements Function2<h, Continuation<? super Unit>, Object> {
    final long $offset;
    final Ref.FloatRef $previousValue;
    final ScrollingLogic $this_semanticsScrollBy;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollableKt$semanticsScrollBy$2(ScrollingLogic scrollingLogic, long j10, Ref.FloatRef floatRef, Continuation<? super ScrollableKt$semanticsScrollBy$2> continuation) {
        super(2, continuation);
        this.$this_semanticsScrollBy = scrollingLogic;
        this.$offset = j10;
        this.$previousValue = floatRef;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ScrollableKt$semanticsScrollBy$2 scrollableKt$semanticsScrollBy$2 = new ScrollableKt$semanticsScrollBy$2(this.$this_semanticsScrollBy, this.$offset, this.$previousValue, continuation);
        scrollableKt$semanticsScrollBy$2.L$0 = obj;
        return scrollableKt$semanticsScrollBy$2;
    }

    @Override
    public final Object invoke(h hVar, Continuation<? super Unit> continuation) {
        return ((ScrollableKt$semanticsScrollBy$2) create(hVar, continuation)).invokeSuspend(Unit.f64096a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            final h hVar = (h) this.L$0;
            float fA = this.$this_semanticsScrollBy.A(this.$offset);
            final Ref.FloatRef floatRef = this.$previousValue;
            final ScrollingLogic scrollingLogic = this.$this_semanticsScrollBy;
            Function2<Float, Float, Unit> function2 = new Function2<Float, Float, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj2, Object obj3) {
                    invoke(((Number) obj2).floatValue(), ((Number) obj3).floatValue());
                    return Unit.f64096a;
                }

                public final void invoke(float f10, float f11) {
                    float f12 = f10 - floatRef.element;
                    ScrollingLogic scrollingLogic2 = scrollingLogic;
                    floatRef.element += scrollingLogic2.t(scrollingLogic2.A(hVar.b(scrollingLogic2.B(scrollingLogic2.t(f12)), androidx.compose.ui.input.nestedscroll.e.f4630a.b())));
                }
            };
            this.label = 1;
            if (SuspendAnimationKt.e(0.0f, fA, 0.0f, null, function2, this, 12, null) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }
}
