package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.internal.CombineKt;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lkotlinx/coroutines/flow/b;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6", f = "Zip.kt", l = {247}, m = "invokeSuspend")
public final class FlowKt__ZipKt$combineTransform$6 extends SuspendLambda implements Function2<b, Continuation<? super Unit>, Object> {
    final kotlinx.coroutines.flow.a[] $flows;
    final Function3<b, Object[], Continuation<? super Unit>, Object> $transform;
    private Object L$0;
    int label;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/b;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Lkotlin/Array;)V"}, k = 3, mv = {2, 0, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6$2", f = "Zip.kt", l = {247}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function3<b, Object[], Continuation<? super Unit>, Object> {
        final Function3<b, Object[], Continuation<? super Unit>, Object> $transform;
        private Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Function3<? super b, ? super Object[], ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.$transform = function3;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                b bVar = (b) this.L$0;
                Object[] objArr = (Object[]) this.L$1;
                Function3<b, Object[], Continuation<? super Unit>, Object> function3 = this.$transform;
                this.L$0 = null;
                this.label = 1;
                if (function3.invoke(bVar, objArr, this) == objF) {
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

        public final Object invokeSuspend$$forInline(Object obj) {
            this.$transform.invoke((b) this.L$0, (Object[]) this.L$1, this);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(b bVar, Object[] objArr, Continuation<? super Unit> continuation) {
            Intrinsics.m();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$transform, continuation);
            anonymousClass2.L$0 = bVar;
            anonymousClass2.L$1 = objArr;
            return anonymousClass2.invokeSuspend(Unit.f64096a);
        }
    }

    public static final class a implements Function0 {

        final kotlinx.coroutines.flow.a[] f64784a;

        public a(kotlinx.coroutines.flow.a[] aVarArr) {
            this.f64784a = aVarArr;
        }

        @Override
        public final Object[] invoke() {
            int length = this.f64784a.length;
            Intrinsics.n(0, "T?");
            return new Object[length];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ZipKt$combineTransform$6(kotlinx.coroutines.flow.a[] aVarArr, Function3<? super b, ? super Object[], ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super FlowKt__ZipKt$combineTransform$6> continuation) {
        super(2, continuation);
        this.$flows = aVarArr;
        this.$transform = function3;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        FlowKt__ZipKt$combineTransform$6 flowKt__ZipKt$combineTransform$6 = new FlowKt__ZipKt$combineTransform$6(this.$flows, this.$transform, continuation);
        flowKt__ZipKt$combineTransform$6.L$0 = obj;
        return flowKt__ZipKt$combineTransform$6;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            b bVar = (b) this.L$0;
            kotlinx.coroutines.flow.a[] aVarArr = this.$flows;
            Intrinsics.m();
            a aVar = new a(this.$flows);
            Intrinsics.m();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$transform, null);
            this.label = 1;
            if (CombineKt.a(bVar, aVarArr, aVar, anonymousClass2, this) == objF) {
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

    public final Object invokeSuspend$$forInline(Object obj) {
        b bVar = (b) this.L$0;
        kotlinx.coroutines.flow.a[] aVarArr = this.$flows;
        Intrinsics.m();
        a aVar = new a(this.$flows);
        Intrinsics.m();
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$transform, null);
        InlineMarker.c(0);
        CombineKt.a(bVar, aVarArr, aVar, anonymousClass2, this);
        InlineMarker.c(1);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(b bVar, Continuation<? super Unit> continuation) {
        return ((FlowKt__ZipKt$combineTransform$6) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
    }
}
