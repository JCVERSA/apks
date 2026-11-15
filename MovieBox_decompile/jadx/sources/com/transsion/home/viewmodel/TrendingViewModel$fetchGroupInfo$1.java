package com.transsion.home.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.RoomEntranceResponse;
import com.transsion.moviedetailapi.bean.RoomItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.TrendingViewModel$fetchGroupInfo$1", f = "TrendingViewModel.kt", l = {135}, m = "invokeSuspend")
final class TrendingViewModel$fetchGroupInfo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function0<Unit> $useCache;
    int label;
    final TrendingViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TrendingViewModel$fetchGroupInfo$1(TrendingViewModel trendingViewModel, Function0<Unit> function0, Continuation<? super TrendingViewModel$fetchGroupInfo$1> continuation) {
        super(2, continuation);
        this.this$0 = trendingViewModel;
        this.$useCache = function0;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TrendingViewModel$fetchGroupInfo$1(this.this$0, this.$useCache, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List<RoomItem> groups;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                yk.e eVar = this.this$0.f44505o;
                this.label = 1;
                obj = yk.e.a.c(eVar, null, 6, this, 1, null);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            BaseDto baseDto = (BaseDto) obj;
            RoomEntranceResponse roomEntranceResponse = (RoomEntranceResponse) baseDto.getData();
            if (roomEntranceResponse == null || (groups = roomEntranceResponse.getGroups()) == null || !(!groups.isEmpty())) {
                this.$useCache.invoke();
            } else {
                this.this$0.W().n(baseDto.getData());
                zk.e.f76812a.b().putString("trending_room_entrance_cache_v2", com.blankj.utilcode.util.o.j(baseDto.getData()));
            }
        } catch (Exception e10) {
            this.$useCache.invoke();
            e10.printStackTrace();
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TrendingViewModel$fetchGroupInfo$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
