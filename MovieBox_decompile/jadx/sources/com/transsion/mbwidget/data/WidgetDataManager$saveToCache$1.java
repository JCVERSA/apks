package com.transsion.mbwidget.data;

import com.blankj.utilcode.util.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.mbwidget.data.WidgetDataManager$saveToCache$1", f = "WidgetDataManager.kt", l = {}, m = "invokeSuspend")
final class WidgetDataManager$saveToCache$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final DeskWidgetResp $resp;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WidgetDataManager$saveToCache$1(DeskWidgetResp deskWidgetResp, Continuation<? super WidgetDataManager$saveToCache$1> continuation) {
        super(2, continuation);
        this.$resp = deskWidgetResp;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        WidgetDataManager$saveToCache$1 widgetDataManager$saveToCache$1 = new WidgetDataManager$saveToCache$1(this.$resp, continuation);
        widgetDataManager$saveToCache$1.L$0 = obj;
        return widgetDataManager$saveToCache$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        DeskWidgetResp deskWidgetResp = this.$resp;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (deskWidgetResp.getHotList().isEmpty()) {
                deskWidgetResp.setHotList(WidgetDataManager.f44894g);
            }
            if (deskWidgetResp.getInterestList().isEmpty()) {
                deskWidgetResp.setInterestList(WidgetDataManager.f44895h);
            }
            Result.m453constructorimpl(com.transsion.mbwidget.d.f44872a.k().putString("hot_widget_cache_key", o.j(deskWidgetResp)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((WidgetDataManager$saveToCache$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
