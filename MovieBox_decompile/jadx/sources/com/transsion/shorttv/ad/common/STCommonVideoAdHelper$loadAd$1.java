package com.transsion.shorttv.ad.common;

import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.shorttv.ad.AdLoadState;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.ad.common.STCommonVideoAdHelper$loadAd$1", f = "STCommonVideoAdHelper.kt", l = {Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE}, m = "invokeSuspend")
final class STCommonVideoAdHelper$loadAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function3<Boolean, String, String, Unit> $loadCallback;
    int label;
    final STCommonVideoAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    STCommonVideoAdHelper$loadAd$1(STCommonVideoAdHelper sTCommonVideoAdHelper, Function3<? super Boolean, ? super String, ? super String, Unit> function3, Continuation<? super STCommonVideoAdHelper$loadAd$1> continuation) {
        super(2, continuation);
        this.this$0 = sTCommonVideoAdHelper;
        this.$loadCallback = function3;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new STCommonVideoAdHelper$loadAd$1(this.this$0, this.$loadCallback, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0092  */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        STCommonVideoAdHelper sTCommonVideoAdHelper;
        Unit unit;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                STCommonVideoAdHelper sTCommonVideoAdHelper2 = this.this$0;
                Function3<Boolean, String, String, Unit> function3 = this.$loadCallback;
                Result.Companion companion = Result.INSTANCE;
                sTCommonVideoAdHelper2.p(3);
                yq.a.f76390a.b(sTCommonVideoAdHelper2.r(), "trigger load ad", sTCommonVideoAdHelper2.s());
                sTCommonVideoAdHelper2.f50698i = AdLoadState.LOADING;
                sTCommonVideoAdHelper2.f50699j = false;
                sTCommonVideoAdHelper2.f50694e = function3;
                sTCommonVideoAdHelper2.f50692c = new BiddingVideoManager();
                BiddingVideoManager biddingVideoManager = sTCommonVideoAdHelper2.f50692c;
                if (biddingVideoManager != null) {
                    biddingVideoManager.L0(sTCommonVideoAdHelper2.s());
                }
                BiddingVideoManager biddingVideoManager2 = sTCommonVideoAdHelper2.f50692c;
                if (biddingVideoManager2 != null) {
                    biddingVideoManager2.K0(sTCommonVideoAdHelper2.f50700k);
                }
                BiddingVideoManager biddingVideoManager3 = sTCommonVideoAdHelper2.f50692c;
                if (biddingVideoManager3 != null) {
                    this.label = 1;
                    if (AbsAdBidding.t0(biddingVideoManager3, 0, false, this, 3, null) == objF) {
                        return objF;
                    }
                } else {
                    unit = null;
                }
                objM453constructorimpl = Result.m453constructorimpl(unit);
                sTCommonVideoAdHelper = this.this$0;
                if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
                    sTCommonVideoAdHelper.f50698i = AdLoadState.IDLE;
                }
                return Unit.f64096a;
            }
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            unit = Unit.f64096a;
            objM453constructorimpl = Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        sTCommonVideoAdHelper = this.this$0;
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            sTCommonVideoAdHelper.f50698i = AdLoadState.IDLE;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((STCommonVideoAdHelper$loadAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
