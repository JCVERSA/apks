package com.transsion.rewardscenter.task.member;

import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.transsion.rewardscenter.R$layout;
import com.transsion.rewardscenter.R$string;
import com.transsion.rewardscenter.utils.RewardsCenterApiHelper;
import com.transsion.rewardscenter.utils.p;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskRewards;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.rewardscenter.task.member.BaseTaskCommonProvider$startClaim$1", f = "BaseTaskCommonProvider.kt", l = {Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class BaseTaskCommonProvider$startClaim$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final MemberTaskItem $item;
    int label;
    final BaseTaskCommonProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseTaskCommonProvider$startClaim$1(MemberTaskItem memberTaskItem, BaseTaskCommonProvider baseTaskCommonProvider, Continuation<? super BaseTaskCommonProvider$startClaim$1> continuation) {
        super(2, continuation);
        this.$item = memberTaskItem;
        this.this$0 = baseTaskCommonProvider;
    }

    public static final Unit g(BaseTaskCommonProvider baseTaskCommonProvider, String str, String str2) {
        baseTaskCommonProvider.B().c().o().n(Boolean.FALSE);
        String string = baseTaskCommonProvider.k().getString(R$string.claim_points_failed_tips);
        Intrinsics.g(string, "getString(...)");
        p.a(false, string);
        return Unit.f64096a;
    }

    public static final Unit h(BaseTaskCommonProvider baseTaskCommonProvider, TaskRewards taskRewards) {
        List<Object> data;
        MemberTaskItem memberTaskItem;
        Integer rewardAmount;
        Integer currentPoint;
        List<Object> data2;
        List<Object> data3;
        MemberTaskItem memberTaskItem2;
        MemberTaskItem taskInfo;
        baseTaskCommonProvider.B().c().o().n(Boolean.FALSE);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = baseTaskCommonProvider.g();
        int i10 = -1;
        if (baseProviderMultiAdapterG != null && (data2 = baseProviderMultiAdapterG.getData()) != null) {
            int i11 = 0;
            for (Object obj : data2) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                MemberTaskItem memberTaskItem3 = (MemberTaskItem) obj;
                if (Intrinsics.c(memberTaskItem3.getTaskId(), (taskRewards == null || (taskInfo = taskRewards.getTaskInfo()) == null) ? null : taskInfo.getTaskId()) && memberTaskItem3.getTaskId() != null) {
                    MemberTaskItem taskInfo2 = taskRewards != null ? taskRewards.getTaskInfo() : null;
                    BaseProviderMultiAdapter baseProviderMultiAdapterG2 = baseTaskCommonProvider.g();
                    if (baseProviderMultiAdapterG2 != null && (data3 = baseProviderMultiAdapterG2.getData()) != null && (memberTaskItem2 = (MemberTaskItem) data3.get(i11)) != null) {
                        memberTaskItem2.setStatus(taskInfo2 != null ? taskInfo2.getStatus() : null);
                        memberTaskItem2.setProgress(taskInfo2 != null ? taskInfo2.getProgress() : null);
                        memberTaskItem2.setTotalProgress(taskInfo2 != null ? taskInfo2.getTotalProgress() : null);
                    }
                    i10 = i11;
                }
                i11 = i12;
            }
        }
        if (taskRewards != null && (currentPoint = taskRewards.getCurrentPoint()) != null) {
            baseTaskCommonProvider.B().c().C(currentPoint.intValue());
        }
        if (i10 < 0) {
            return Unit.f64096a;
        }
        BaseProviderMultiAdapter baseProviderMultiAdapterG3 = baseTaskCommonProvider.g();
        int iIntValue = (baseProviderMultiAdapterG3 == null || (data = baseProviderMultiAdapterG3.getData()) == null || (memberTaskItem = (MemberTaskItem) data.get(i10)) == null || (rewardAmount = memberTaskItem.getRewardAmount()) == null) ? 0 : rewardAmount.intValue();
        fh.b.a aVar = fh.b.f60176a;
        int i13 = R$layout.claim_succeed_layout;
        String string = baseTaskCommonProvider.k().getString(R$string.claim_points_receive_tips, Integer.valueOf(iIntValue));
        Intrinsics.g(string, "getString(...)");
        aVar.g(i13, string, (24 & 4) != 0 ? 0 : 80, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : a0.a(66.0f));
        baseTaskCommonProvider.G();
        BaseProviderMultiAdapter baseProviderMultiAdapterG4 = baseTaskCommonProvider.g();
        if (baseProviderMultiAdapterG4 != null) {
            baseProviderMultiAdapterG4.notifyItemChanged(i10);
        }
        return Unit.f64096a;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BaseTaskCommonProvider$startClaim$1(this.$item, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            RewardsCenterApiHelper rewardsCenterApiHelper = RewardsCenterApiHelper.f49285a;
            String taskId = this.$item.getTaskId();
            final BaseTaskCommonProvider baseTaskCommonProvider = this.this$0;
            Function2 function2 = new Function2() {
                @Override
                public final Object invoke(Object obj2, Object obj3) {
                    return BaseTaskCommonProvider$startClaim$1.g(baseTaskCommonProvider, (String) obj2, (String) obj3);
                }
            };
            final BaseTaskCommonProvider baseTaskCommonProvider2 = this.this$0;
            Function1 function1 = new Function1() {
                @Override
                public final Object invoke(Object obj2) {
                    return BaseTaskCommonProvider$startClaim$1.h(baseTaskCommonProvider2, (TaskRewards) obj2);
                }
            };
            this.label = 1;
            if (rewardsCenterApiHelper.u(taskId, function2, function1, this) == objF) {
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
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BaseTaskCommonProvider$startClaim$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
