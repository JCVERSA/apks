package com.transsion.postdetail.ad;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.ad.BaseVideoAdHelper$loadLandPauseAd$1", f = "BaseVideoAdHelper.kt", l = {278}, m = "invokeSuspend")
@SourceDebugExtension
final class BaseVideoAdHelper$loadLandPauseAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function0<Unit> $callback;
    final Context $ctx;
    final Function0<Unit> $onFail;
    final String $sceneId;
    int label;
    final BaseVideoAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseVideoAdHelper$loadLandPauseAd$1(Context context, BaseVideoAdHelper baseVideoAdHelper, String str, Function0<Unit> function0, Function0<Unit> function1, Continuation<? super BaseVideoAdHelper$loadLandPauseAd$1> continuation) {
        super(2, continuation);
        this.$ctx = context;
        this.this$0 = baseVideoAdHelper;
        this.$sceneId = str;
        this.$callback = function0;
        this.$onFail = function1;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BaseVideoAdHelper$loadLandPauseAd$1(this.$ctx, this.this$0, this.$sceneId, this.$callback, this.$onFail, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Context context = this.$ctx;
            AppCompatActivity appCompatActivity = null;
            AppCompatActivity appCompatActivity2 = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            if (appCompatActivity2 != null) {
                if (!appCompatActivity2.isDestroyed() && !appCompatActivity2.isFinishing()) {
                    appCompatActivity = appCompatActivity2;
                }
                if (appCompatActivity != null) {
                    this.this$0.y1(new BiddingInterstitialManager());
                    BiddingInterstitialManager biddingInterstitialManagerV0 = this.this$0.v0();
                    if (biddingInterstitialManagerV0 != null) {
                        biddingInterstitialManagerV0.L0(this.$sceneId);
                    }
                    BiddingInterstitialManager biddingInterstitialManagerV1 = this.this$0.v0();
                    if (biddingInterstitialManagerV1 != null) {
                        biddingInterstitialManagerV1.J0(com.transsion.ad.strategy.c.f41178a.a(this.this$0.j0()));
                    }
                    BiddingInterstitialManager biddingInterstitialManagerV2 = this.this$0.v0();
                    if (biddingInterstitialManagerV2 != null) {
                        biddingInterstitialManagerV2.I0(appCompatActivity);
                    }
                    BiddingInterstitialManager biddingInterstitialManagerV3 = this.this$0.v0();
                    if (biddingInterstitialManagerV3 != null) {
                        biddingInterstitialManagerV3.K0(this.this$0.m2(this.$sceneId, this.$callback, this.$onFail));
                    }
                    BiddingInterstitialManager biddingInterstitialManagerV4 = this.this$0.v0();
                    if (biddingInterstitialManagerV4 != null) {
                        this.label = 1;
                        if (AbsAdBidding.t0(biddingInterstitialManagerV4, 0, false, this, 3, null) == objF) {
                            return objF;
                        }
                    }
                }
            }
            return Unit.f64096a;
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BaseVideoAdHelper$loadLandPauseAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
