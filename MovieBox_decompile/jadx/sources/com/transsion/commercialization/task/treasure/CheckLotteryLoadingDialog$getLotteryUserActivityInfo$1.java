package com.transsion.commercialization.task.treasure;

import com.blankj.utilcode.util.ToastUtils;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.bean.lottery.LotteryUserActivityInfoEntity;
import com.transsion.bean.lottery.LotteryUserActivityInfoUserLotteryBean;
import com.transsion.commercialization.R$string;
import com.transsion.commercialization.task.wheel.TreasureWheelDialog;
import com.transsion.core.utils.ToastUtil;
import com.transsion.payment.lib.bean.HttpErrorBodyBean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import retrofit2.HttpException;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.commercialization.task.treasure.CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1", f = "CheckLotteryLoadingDialog.kt", l = {69}, m = "invokeSuspend")
final class CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final CheckLotteryLoadingDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1(CheckLotteryLoadingDialog checkLotteryLoadingDialog, Continuation<? super CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1> continuation) {
        super(2, continuation);
        this.this$0 = checkLotteryLoadingDialog;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        String message;
        CheckLotteryLoadingDialog checkLotteryLoadingDialog;
        LotteryUserActivityInfoUserLotteryBean userLottery;
        Integer todayRemain;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                CheckLotteryLoadingDialog checkLotteryLoadingDialog2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                b bVarU0 = checkLotteryLoadingDialog2.u0();
                String str = checkLotteryLoadingDialog2.activityId;
                String str2 = checkLotteryLoadingDialog2.orderId;
                this.L$0 = checkLotteryLoadingDialog2;
                this.label = 1;
                Object objA = b.a.a(bVarU0, null, str, str2, this, 1, null);
                if (objA == objF) {
                    return objF;
                }
                checkLotteryLoadingDialog = checkLotteryLoadingDialog2;
                obj = objA;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                checkLotteryLoadingDialog = (CheckLotteryLoadingDialog) this.L$0;
                ResultKt.b(obj);
            }
            LotteryUserActivityInfoEntity lotteryUserActivityInfoEntity = (LotteryUserActivityInfoEntity) ((BaseDto) obj).getData();
            if (((lotteryUserActivityInfoEntity == null || (userLottery = lotteryUserActivityInfoEntity.getUserLottery()) == null || (todayRemain = userLottery.getTodayRemain()) == null) ? 0 : todayRemain.intValue()) >= 1) {
                new TreasureWheelDialog().D0(lotteryUserActivityInfoEntity).k0(com.blankj.utilcode.util.a.b(), "WheelViewDialog");
            } else {
                wj.h.f74282a.b(checkLotteryLoadingDialog.getClassTag() + " --> getLotteryUserActivityInfo() --> 当前没有抽奖次数了");
                if (Intrinsics.c(checkLotteryLoadingDialog.showErrorToast, Boxing.a(true))) {
                    ToastUtils.r(R$string.daily_spin_limit_reached);
                }
            }
            checkLotteryLoadingDialog.dismissAllowingStateLoss();
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        CheckLotteryLoadingDialog checkLotteryLoadingDialog3 = this.this$0;
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wj.h.f74282a.b(checkLotteryLoadingDialog3.getClassTag() + " --> getLotteryUserActivityInfo() ---> getOrElse() --> it = " + thM456exceptionOrNullimpl);
            if (Intrinsics.c(checkLotteryLoadingDialog3.showErrorToast, Boxing.a(true)) && (thM456exceptionOrNullimpl instanceof HttpException)) {
                HttpErrorBodyBean httpErrorBodyBeanA = HttpErrorBodyBean.INSTANCE.a((HttpException) thM456exceptionOrNullimpl);
                if (httpErrorBodyBeanA == null || (message = httpErrorBodyBeanA.getMessage()) == null) {
                    message = "";
                }
                ToastUtil.f(message);
            }
            checkLotteryLoadingDialog3.dismissAllowingStateLoss();
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
