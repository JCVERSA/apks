package com.transsion.shorttv_pugc.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv_pugc.ShorttvModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$requestFirstVideo$1$2$1$streamDeferred$1", f = "ShortTvViewModel.kt", l = {168}, m = "invokeSuspend")
final class ShortTvViewModel$requestFirstVideo$1$2$1$streamDeferred$1 extends SuspendLambda implements Function2<n0, Continuation<? super ShorttvModel.PlayStreamItem>, Object> {
    final Ref.ObjectRef<String> $ugcVideoIdMutable;
    int label;
    final ShortTvViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$requestFirstVideo$1$2$1$streamDeferred$1(ShortTvViewModel shortTvViewModel, Ref.ObjectRef<String> objectRef, Continuation<? super ShortTvViewModel$requestFirstVideo$1$2$1$streamDeferred$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvViewModel;
        this.$ugcVideoIdMutable = objectRef;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvViewModel$requestFirstVideo$1$2$1$streamDeferred$1(this.this$0, this.$ugcVideoIdMutable, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            us.a aVar = this.this$0.f52457a;
            String str = this.$ugcVideoIdMutable.element;
            this.label = 1;
            obj = us.a.C0899a.f(aVar, str, null, this, 2, null);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return ((BaseDto) obj).getData();
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super ShorttvModel.PlayStreamItem> continuation) {
        return ((ShortTvViewModel$requestFirstVideo$1$2$1$streamDeferred$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
