package com.transsion.ad.ps.distribute;

import android.text.TextUtils;
import ci.p;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.distribute.PsDbManager$onBiddingBuyOutClick$1", f = "PsDbManager.kt", l = {134, 152}, m = "invokeSuspend")
final class PsDbManager$onBiddingBuyOutClick$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final PsLinkAdPlan $psLinkAdPlan;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PsDbManager$onBiddingBuyOutClick$1(PsLinkAdPlan psLinkAdPlan, Continuation<? super PsDbManager$onBiddingBuyOutClick$1> continuation) {
        super(2, continuation);
        this.$psLinkAdPlan = psLinkAdPlan;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PsDbManager$onBiddingBuyOutClick$1(this.$psLinkAdPlan, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        PsDbManager psDbManager = PsDbManager.f41140a;
        int id2 = this.$psLinkAdPlan.getId();
        this.label = 1;
        obj = psDbManager.g(id2, this);
        if (obj == objF) {
            return objF;
        }
        PsLinkAdPlan psLinkAdPlan = (PsLinkAdPlan) obj;
        if (psLinkAdPlan != null) {
            String strC = p.f16947a.c();
            if (TextUtils.equals(strC, psLinkAdPlan.getShowDate())) {
                psLinkAdPlan.setClickedTimes(psLinkAdPlan.getClickedTimes() + 1);
            } else {
                psLinkAdPlan.setClickedTimes(1);
                psLinkAdPlan.setShowDate(strC);
            }
            xh.a aVar = xh.a.f75336a;
            PsDbManager psDbManager2 = PsDbManager.f41140a;
            xh.a.i(aVar, psDbManager2.e() + " --> onBiddingBuyOutClick() --> id = " + psLinkAdPlan.getId() + " --> clickMax = " + psLinkAdPlan.getClickMax() + " --> clickedTimes = " + psLinkAdPlan.getClickedTimes() + " --> showDate = " + psLinkAdPlan.getShowDate() + " ", 0, false, 6, null);
            this.label = 2;
            if (psDbManager2.j(psLinkAdPlan, this) == objF) {
                return objF;
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PsDbManager$onBiddingBuyOutClick$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
