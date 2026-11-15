package androidx.compose.foundation.gestures;

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
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2", f = "Scrollable.kt", l = {782}, m = "invokeSuspend")
final class ScrollingLogic$doFlingAnimation$2 extends SuspendLambda implements Function2<h, Continuation<? super Unit>, Object> {
    final long $available;
    final Ref.LongRef $result;
    long J$0;
    private Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final ScrollingLogic this$0;

    public static final class a implements k {

        final ScrollingLogic f2395a;

        final h f2396b;

        a(ScrollingLogic scrollingLogic, h hVar) {
            this.f2395a = scrollingLogic;
            this.f2396b = hVar;
        }

        @Override
        public float a(float f10) {
            ScrollingLogic scrollingLogic = this.f2395a;
            return scrollingLogic.t(scrollingLogic.A(this.f2396b.a(scrollingLogic.u(scrollingLogic.B(f10)), androidx.compose.ui.input.nestedscroll.e.f4630a.a())));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollingLogic$doFlingAnimation$2(ScrollingLogic scrollingLogic, Ref.LongRef longRef, long j10, Continuation<? super ScrollingLogic$doFlingAnimation$2> continuation) {
        super(2, continuation);
        this.this$0 = scrollingLogic;
        this.$result = longRef;
        this.$available = j10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ScrollingLogic$doFlingAnimation$2 scrollingLogic$doFlingAnimation$2 = new ScrollingLogic$doFlingAnimation$2(this.this$0, this.$result, this.$available, continuation);
        scrollingLogic$doFlingAnimation$2.L$0 = obj;
        return scrollingLogic$doFlingAnimation$2;
    }

    @Override
    public final Object invoke(h hVar, Continuation<? super Unit> continuation) {
        return ((ScrollingLogic$doFlingAnimation$2) create(hVar, continuation)).invokeSuspend(Unit.f64096a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        ScrollingLogic scrollingLogic;
        Ref.LongRef longRef;
        ScrollingLogic scrollingLogic2;
        long j10;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            a aVar = new a(this.this$0, (h) this.L$0);
            scrollingLogic = this.this$0;
            Ref.LongRef longRef2 = this.$result;
            long j11 = this.$available;
            g gVar = scrollingLogic.f2386c;
            long j12 = longRef2.element;
            float fT = scrollingLogic.t(scrollingLogic.z(j11));
            this.L$0 = scrollingLogic;
            this.L$1 = scrollingLogic;
            this.L$2 = longRef2;
            this.J$0 = j12;
            this.label = 1;
            Object objA = gVar.a(aVar, fT, this);
            if (objA == objF) {
                return objF;
            }
            longRef = longRef2;
            obj = objA;
            scrollingLogic2 = scrollingLogic;
            j10 = j12;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j10 = this.J$0;
            longRef = (Ref.LongRef) this.L$2;
            scrollingLogic = (ScrollingLogic) this.L$1;
            scrollingLogic2 = (ScrollingLogic) this.L$0;
            ResultKt.b(obj);
        }
        longRef.element = scrollingLogic.D(j10, scrollingLogic2.t(((Number) obj).floatValue()));
        return Unit.f64096a;
    }
}
