package com.transsion.room.fragment;

import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.PublishEvent;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V", "com/transsnet/flow/event/ObserveEventKt$observeEvent$1"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.flow.event.ObserveEventKt$observeEvent$1", f = "ObserveEvent.kt", l = {106}, m = "invokeSuspend")
public final class RoomFragment$observerPublishEvent$1$invokeSuspend$$inlined$observeEvent$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final boolean $isSticky;
    final Function1 $onReceived;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomFragment$observerPublishEvent$1$invokeSuspend$$inlined$observeEvent$1(boolean z10, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.$isSticky = z10;
        this.$onReceived = function1;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomFragment$observerPublishEvent$1$invokeSuspend$$inlined$observeEvent$1(this.$isSticky, this.$onReceived, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = PublishEvent.class.getName();
            Intrinsics.g(name, "getName(...)");
            boolean z10 = this.$isSticky;
            Function1 function1 = this.$onReceived;
            this.label = 1;
            if (flowEventBus.observeWithoutLifecycle(name, z10, function1, this) == objF) {
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

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RoomFragment$observerPublishEvent$1$invokeSuspend$$inlined$observeEvent$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
