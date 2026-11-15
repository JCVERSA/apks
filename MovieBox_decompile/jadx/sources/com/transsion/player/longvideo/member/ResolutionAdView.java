package com.transsion.player.longvideo.member;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.cardview.widget.CardView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.memberapi.AdModule;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\u007f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001B\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\fJ\r\u0010\u000e\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\fJ\u0017\u0010\u0011\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0016\u001a\u00020\n2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\n0\u0013¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\n¢\u0006\u0004\b \u0010\fR$\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\n\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010&R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010'R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u001b\u0010=\u001a\u0002088BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0014\u0010E\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006F"}, d2 = {"Lcom/transsion/player/longvideo/member/ResolutionAdView;", "Landroidx/cardview/widget/CardView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "l", "()V", "m", "onDestroy", "Lwj/g;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setListener", "(Lwj/g;)V", "Lkotlin/Function1;", "", "callback", "setAdCallback", "(Lkotlin/jvm/functions/Function1;)V", "", "genre", "setGenre", "(Ljava/lang/String;)V", "Lcom/transsion/memberapi/AdModule;", "adModule", "setAdModule", "(Lcom/transsion/memberapi/AdModule;)V", "loadAd", "j", "Lkotlin/jvm/functions/Function1;", "adCallback", CampaignEx.JSON_KEY_AD_K, "Lwj/g;", "Ljava/lang/String;", "Lcom/transsion/memberapi/AdModule;", "Lmn/o;", "n", "Lmn/o;", "binding", "Ljava/util/concurrent/atomic/AtomicBoolean;", "o", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isLoading", "Lcom/transsion/player/longvideo/member/e;", TtmlNode.TAG_P, "Lcom/transsion/player/longvideo/member/e;", "viewBinder", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "maxEcpmObject", "Landroid/animation/ObjectAnimator;", CampaignEx.JSON_KEY_AD_R, "Lkotlin/Lazy;", "getRefreshAnimator", "()Landroid/animation/ObjectAnimator;", "refreshAnimator", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "s", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nativeManager", "com/transsion/player/longvideo/member/ResolutionAdView$a", "t", "Lcom/transsion/player/longvideo/member/ResolutionAdView$a;", "nativeListener", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ResolutionAdView extends CardView {

    private Function1 adCallback;

    private wj.g listener;

    private String genre;

    private AdModule adModule;

    private final mn.o binding;

    private AtomicBoolean isLoading;

    private final e viewBinder;

    private BiddingIntermediateMaterialBean maxEcpmObject;

    private final Lazy refreshAnimator;

    private BiddingNativeManager nativeManager;

    private final a nativeListener;

    public static final class a extends oh.a {
        a() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            ResolutionAdView.this.isLoading.set(false);
            ResolutionAdView.this.m();
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            ResolutionAdView.this.maxEcpmObject = biddingIntermediateMaterialBean;
            ResolutionAdView.this.binding.f66654h.bindNativeView(ResolutionAdView.this.nativeManager, ResolutionAdView.this.viewBinder, biddingIntermediateMaterialBean);
            ResolutionAdView.this.isLoading.set(false);
            ResolutionAdView.this.m();
            Function1 function1 = ResolutionAdView.this.adCallback;
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
        }

        @Override
        public void l(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.l(biddingIntermediateMaterialBean);
            wj.g gVar = ResolutionAdView.this.listener;
            if (gVar != null) {
                gVar.onSuccess();
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.player.longvideo.member.ResolutionAdView$loadAd$1", f = "ResolutionAdView.kt", l = {161}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ResolutionAdView.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                BiddingNativeManager biddingNativeManager = ResolutionAdView.this.nativeManager;
                if (biddingNativeManager != null) {
                    this.label = 1;
                    if (AbsAdBidding.t0(biddingNativeManager, 0, false, this, 3, null) == objF) {
                        return objF;
                    }
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
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ResolutionAdView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    public static final void g(ResolutionAdView resolutionAdView, View view) {
        resolutionAdView.loadAd();
    }

    private final ObjectAnimator getRefreshAnimator() {
        Object value = this.refreshAnimator.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (ObjectAnimator) value;
    }

    public static final void h(ResolutionAdView resolutionAdView, View view) {
        resolutionAdView.loadAd();
    }

    public static final void i(ResolutionAdView resolutionAdView, View view) {
        NativeWrapperAdView.simulatingClick$default(resolutionAdView.binding.f66654h, resolutionAdView.maxEcpmObject, resolutionAdView.viewBinder, null, 4, null);
    }

    public static final void j(ResolutionAdView resolutionAdView, View view) {
        NativeWrapperAdView.simulatingClick$default(resolutionAdView.binding.f66654h, resolutionAdView.maxEcpmObject, resolutionAdView.viewBinder, null, 4, null);
    }

    public static final ObjectAnimator k(ResolutionAdView resolutionAdView) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(resolutionAdView.binding.f66648b, "rotation", 0.0f, 360.0f);
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.setRepeatCount(-1);
        return objectAnimatorOfFloat;
    }

    private final void l() {
        if (getRefreshAnimator().isRunning()) {
            return;
        }
        getRefreshAnimator().start();
    }

    public final void m() {
        getRefreshAnimator().cancel();
        this.binding.f66648b.setRotation(0.0f);
    }

    public final void loadAd() {
        if (this.nativeManager == null) {
            BiddingNativeManager biddingNativeManager = new BiddingNativeManager();
            this.nativeManager = biddingNativeManager;
            biddingNativeManager.L0("TreasureNativeAdScene");
            BiddingNativeManager biddingNativeManager2 = this.nativeManager;
            if (biddingNativeManager2 != null) {
                biddingNativeManager2.J0(com.transsion.ad.strategy.c.f41178a.a(this.genre));
            }
            BiddingNativeManager biddingNativeManager3 = this.nativeManager;
            if (biddingNativeManager3 != null) {
                biddingNativeManager3.K0(this.nativeListener);
            }
        }
        if (this.isLoading.get()) {
            return;
        }
        this.isLoading.set(true);
        l();
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new AnonymousClass1(null), 3, null);
    }

    public final void onDestroy() {
        getRefreshAnimator().cancel();
        BiddingNativeManager biddingNativeManager = this.nativeManager;
        if (biddingNativeManager != null) {
            biddingNativeManager.U();
        }
    }

    public final void setAdCallback(Function1<? super Boolean, Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.adCallback = callback;
    }

    public final void setAdModule(AdModule adModule) {
        this.adModule = adModule;
        String adStyle = adModule != null ? adModule.getAdStyle() : null;
        if (Intrinsics.c(adStyle, "THREE_IN_ONE_AD_BUTTON_STYLE_VERTICAL")) {
            this.binding.f66651e.setVisibility(0);
        } else if (Intrinsics.c(adStyle, "THREE_IN_ONE_AD_BUTTON_STYLE_SMALL")) {
            this.binding.f66650d.setVisibility(0);
        }
    }

    public final void setGenre(String genre) {
        this.genre = genre;
    }

    public final void setListener(wj.g listener) {
        this.listener = listener;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ResolutionAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    public ResolutionAdView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ResolutionAdView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        mn.o oVarC = mn.o.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(oVarC, "inflate(...)");
        this.binding = oVarC;
        oVarC.f66652f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ResolutionAdView.g(this.f46199a, view);
            }
        });
        oVarC.f66653g.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ResolutionAdView.h(this.f46200a, view);
            }
        });
        oVarC.f66655i.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ResolutionAdView.i(this.f46201a, view);
            }
        });
        oVarC.f66656j.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ResolutionAdView.j(this.f46202a, view);
            }
        });
        this.isLoading = new AtomicBoolean(false);
        this.viewBinder = new e(context);
        this.refreshAnimator = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ResolutionAdView.k(this.f46203a);
            }
        });
        this.nativeListener = new a();
    }
}
