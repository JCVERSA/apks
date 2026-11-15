package com.transsion.player.longvideo.ui.dialog;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper$loadRewardedAd$1", f = "LongVodPlayerViewAdHelper.kt", l = {932}, m = "invokeSuspend")
@SourceDebugExtension
final class LongVodPlayerViewAdHelper$loadRewardedAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Context $ctx;
    int label;
    final LongVodPlayerViewAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodPlayerViewAdHelper$loadRewardedAd$1(Context context, LongVodPlayerViewAdHelper longVodPlayerViewAdHelper, Continuation<? super LongVodPlayerViewAdHelper$loadRewardedAd$1> continuation) {
        super(2, continuation);
        this.$ctx = context;
        this.this$0 = longVodPlayerViewAdHelper;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVodPlayerViewAdHelper$loadRewardedAd$1(this.$ctx, this.this$0, continuation);
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
                    this.this$0.W = new BiddingVideoManager();
                    BiddingVideoManager biddingVideoManager = this.this$0.W;
                    if (biddingVideoManager != null) {
                        biddingVideoManager.L0(this.this$0.f46329i0);
                    }
                    BiddingVideoManager biddingVideoManager2 = this.this$0.W;
                    if (biddingVideoManager2 != null) {
                        biddingVideoManager2.J0(com.transsion.ad.strategy.c.f41178a.a(this.this$0.j0()));
                    }
                    BiddingVideoManager biddingVideoManager3 = this.this$0.W;
                    if (biddingVideoManager3 != null) {
                        biddingVideoManager3.I0(appCompatActivity);
                    }
                    BiddingVideoManager biddingVideoManager4 = this.this$0.W;
                    if (biddingVideoManager4 != null) {
                        biddingVideoManager4.K0(this.this$0.f46340t0);
                    }
                    BiddingVideoManager biddingVideoManager5 = this.this$0.W;
                    if (biddingVideoManager5 != null) {
                        this.label = 1;
                        if (AbsAdBidding.t0(biddingVideoManager5, 0, false, this, 3, null) == objF) {
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
        return ((LongVodPlayerViewAdHelper$loadRewardedAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
