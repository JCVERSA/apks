package com.transsion.shorttv.ad.common;

import android.content.Context;
import com.cloud.sdk.commonutil.util.e;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.shorttv.ad.AdLoadState;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.ad.common.STCommonNativeAdHelper$loadAd$1", f = "STCommonNativeAdHelper.kt", l = {134}, m = "invokeSuspend")
final class STCommonNativeAdHelper$loadAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function1<Boolean, Unit> $callback;
    int label;
    final STCommonNativeAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    STCommonNativeAdHelper$loadAd$1(STCommonNativeAdHelper sTCommonNativeAdHelper, Function1<? super Boolean, Unit> function1, Continuation<? super STCommonNativeAdHelper$loadAd$1> continuation) {
        super(2, continuation);
        this.this$0 = sTCommonNativeAdHelper;
        this.$callback = function1;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new STCommonNativeAdHelper$loadAd$1(this.this$0, this.$callback, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00aa  */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        STCommonNativeAdHelper sTCommonNativeAdHelper;
        Unit unit;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                STCommonNativeAdHelper sTCommonNativeAdHelper2 = this.this$0;
                Function1<Boolean, Unit> function1 = this.$callback;
                Result.Companion companion = Result.INSTANCE;
                sTCommonNativeAdHelper2.m(3);
                yq.a.f76390a.b(sTCommonNativeAdHelper2.o(), "trigger load ad", sTCommonNativeAdHelper2.p());
                sTCommonNativeAdHelper2.f50687i = AdLoadState.LOADING;
                sTCommonNativeAdHelper2.f50683e = function1;
                sTCommonNativeAdHelper2.f50681c = new BiddingNativeManager();
                BiddingNativeManager biddingNativeManager = sTCommonNativeAdHelper2.f50681c;
                if (biddingNativeManager != null) {
                    biddingNativeManager.L0(sTCommonNativeAdHelper2.p());
                }
                BiddingNativeManager biddingNativeManager2 = sTCommonNativeAdHelper2.f50681c;
                unit = null;
                if (biddingNativeManager2 != null) {
                    biddingNativeManager2.J0(null);
                }
                BiddingNativeManager biddingNativeManager3 = sTCommonNativeAdHelper2.f50681c;
                if (biddingNativeManager3 != null) {
                    Context contextA = e.a();
                    Intrinsics.g(contextA, "getContext(...)");
                    biddingNativeManager3.I0(contextA);
                }
                BiddingNativeManager biddingNativeManager4 = sTCommonNativeAdHelper2.f50681c;
                if (biddingNativeManager4 != null) {
                    biddingNativeManager4.K0(sTCommonNativeAdHelper2.f50688j);
                }
                BiddingNativeManager biddingNativeManager5 = sTCommonNativeAdHelper2.f50681c;
                if (biddingNativeManager5 != null) {
                    this.label = 1;
                    if (AbsAdBidding.t0(biddingNativeManager5, 0, false, this, 3, null) == objF) {
                        return objF;
                    }
                }
                objM453constructorimpl = Result.m453constructorimpl(unit);
                sTCommonNativeAdHelper = this.this$0;
                if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
                    sTCommonNativeAdHelper.f50687i = AdLoadState.IDLE;
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
        sTCommonNativeAdHelper = this.this$0;
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            sTCommonNativeAdHelper.f50687i = AdLoadState.IDLE;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((STCommonNativeAdHelper$loadAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
