package com.transsion.home.hashtag;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;
import wf.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.hashtag.HashTagViewModel$onTagClicked$1", f = "HashTagViewModel.kt", l = {285}, m = "invokeSuspend")
final class HashTagViewModel$onTagClicked$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final HashTagViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HashTagViewModel$onTagClicked$1(HashTagViewModel hashTagViewModel, Continuation<? super HashTagViewModel$onTagClicked$1> continuation) {
        super(2, continuation);
        this.this$0 = hashTagViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HashTagViewModel$onTagClicked$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            this.label = 1;
            if (u0.a(700L, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        a.C0922a.f(a.f74274a, "HashTagViewModel", "onTagClicked: debounce delay finished, start refresh, tabSort=" + this.this$0.f44324g, false, 4, null);
        HashTagViewModel hashTagViewModel = this.this$0;
        hashTagViewModel.A(hashTagViewModel.f44324g);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HashTagViewModel$onTagClicked$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
