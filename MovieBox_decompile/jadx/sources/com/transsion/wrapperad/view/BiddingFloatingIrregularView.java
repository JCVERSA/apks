package com.transsion.wrapperad.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.v;
import ci.q;
import com.blankj.utilcode.util.a0;
import com.google.android.material.card.MaterialCardView;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.mediation.ad.TIconView;
import com.hisavana.mediation.ad.TMediaView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.R$mipmap;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.push.PushConstants;
import com.transsion.wrapperad.R$id;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\b\u0005*\u00015\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\bH\u0002¢\u0006\u0004\b\f\u0010\nJ\r\u0010\r\u001a\u00020\b¢\u0006\u0004\b\r\u0010\nJ\r\u0010\u000e\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\nJ\r\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u000f\u0010\nR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010#\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010!R\u0014\u0010&\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u001b\u00104\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107¨\u00069"}, d2 = {"Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", "f", "g", "loadAd", "showAd", PushConstants.PROVIDER_FIELD_DESTROY, "", "a", "Ljava/lang/String;", "sceneId", "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;", "nativeWrapperAdView", "Lcom/transsion/ad/bidding/base/r;", "c", "Lcom/transsion/ad/bidding/base/r;", "nativeViewBinder", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "mMaxEcpmObject", "", "e", "Z", "hiSceneOff", "hiPlacementNon", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "closeImg", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "h", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "adManager", "", "i", "J", "lastRefreshTime", "", "j", "Lkotlin/Lazy;", "getLoadInterval", "()I", "loadInterval", "com/transsion/wrapperad/view/BiddingFloatingIrregularView$a", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/wrapperad/view/BiddingFloatingIrregularView$a;", "adListener", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingFloatingIrregularView extends FrameLayout {

    private final String sceneId;

    private final NativeWrapperAdView nativeWrapperAdView;

    private r nativeViewBinder;

    private BiddingIntermediateMaterialBean mMaxEcpmObject;

    private boolean hiSceneOff;

    private boolean hiPlacementNon;

    private final ImageView closeImg;

    private BiddingNativeManager adManager;

    private long lastRefreshTime;

    private final Lazy loadInterval;

    private final a adListener;

    public static final class a extends oh.a {
        a() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            BiddingFloatingIrregularView.this.g();
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            BiddingFloatingIrregularView.this.mMaxEcpmObject = biddingIntermediateMaterialBean;
            BiddingFloatingIrregularView.this.showAd();
        }

        @Override
        public void l(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.l(biddingIntermediateMaterialBean);
            BiddingFloatingIrregularView.this.mMaxEcpmObject = null;
            BiddingFloatingIrregularView.this.lastRefreshTime = 0L;
        }

        @Override
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            BiddingFloatingIrregularView.this.g();
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.wrapperad.view.BiddingFloatingIrregularView$loadAd$1", f = "BiddingFloatingIrregularView.kt", l = {138}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BiddingFloatingIrregularView.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                BiddingNativeManager biddingNativeManager = BiddingFloatingIrregularView.this.adManager;
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
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public BiddingFloatingIrregularView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    private final void d() {
        this.closeImg.setImageResource(R$mipmap.ad_irregular_close);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a0.a(16.0f), a0.a(16.0f));
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_END;
        this.closeImg.setVisibility(8);
        this.closeImg.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                BiddingFloatingIrregularView.e(this.f56147a, view);
            }
        });
        q.f16948a.a(this.closeImg);
        addView(this.closeImg, layoutParams);
    }

    public static final void e(BiddingFloatingIrregularView biddingFloatingIrregularView, View view) {
        biddingFloatingIrregularView.destroy();
        biddingFloatingIrregularView.lastRefreshTime = 0L;
    }

    private final void f() {
        BiddingNativeManager biddingNativeManager = this.adManager;
        if (biddingNativeManager != null) {
            biddingNativeManager.U();
        }
        this.adManager = null;
    }

    public final void g() {
        this.mMaxEcpmObject = null;
        setVisibility(8);
        this.closeImg.setVisibility(8);
    }

    private final int getLoadInterval() {
        return ((Number) this.loadInterval.getValue()).intValue();
    }

    public static final int h(BiddingFloatingIrregularView biddingFloatingIrregularView) {
        return com.transsion.ad.scene.a.f41152a.m(biddingFloatingIrregularView.sceneId) * 1000;
    }

    public static final void i(BiddingFloatingIrregularView biddingFloatingIrregularView) {
        biddingFloatingIrregularView.closeImg.setVisibility(0);
    }

    public final void destroy() {
        f();
        g();
    }

    public final void loadAd() {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        if ((this.hiSceneOff || this.hiPlacementNon) && this.mMaxEcpmObject != null) {
            return;
        }
        if (System.currentTimeMillis() - this.lastRefreshTime < getLoadInterval()) {
            wf.a.C0922a.f(wf.a.f74274a, "Floating", "--> The refresh interval has not arrived", false, 4, null);
            return;
        }
        this.lastRefreshTime = System.currentTimeMillis();
        f();
        BiddingNativeManager biddingNativeManager = new BiddingNativeManager();
        this.adManager = biddingNativeManager;
        biddingNativeManager.L0(this.sceneId);
        BiddingNativeManager biddingNativeManager2 = this.adManager;
        if (biddingNativeManager2 != null) {
            biddingNativeManager2.K0(this.adListener);
        }
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = v.a(appCompatActivity)) == null) {
            return;
        }
        kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
    
        if (r3 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void showAd() {
        TAdNativeInfo nativeInfo;
        TAdNativeInfo.Image icon;
        TAdNativeInfo nativeInfo2;
        BiddingNativeManager biddingNativeManager = this.adManager;
        boolean zR0 = biddingNativeManager != null ? biddingNativeManager.R0() : false;
        if (zR0) {
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = this.mMaxEcpmObject;
            String url = null;
            if (((biddingIntermediateMaterialBean == null || (nativeInfo2 = biddingIntermediateMaterialBean.getNativeInfo()) == null) ? null : nativeInfo2.getIcon()) != null) {
                BiddingIntermediateMaterialBean biddingIntermediateMaterialBean2 = this.mMaxEcpmObject;
                if (biddingIntermediateMaterialBean2 != null && (nativeInfo = biddingIntermediateMaterialBean2.getNativeInfo()) != null && (icon = nativeInfo.getIcon()) != null) {
                    url = icon.getUrl();
                }
            }
            g();
            return;
        }
        if (this.nativeViewBinder == null) {
            ow.b bVar = ow.b.f68937a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            this.nativeViewBinder = bVar.a(context, this.sceneId);
        }
        this.nativeWrapperAdView.bindNativeView(this.adManager, this.nativeViewBinder, this.mMaxEcpmObject);
        if (zR0) {
            TMediaView tMediaView = (TMediaView) this.nativeWrapperAdView.findViewById(R$id.ad_media);
            if (tMediaView != null) {
                uf.c.g(tMediaView);
            }
        } else {
            TIconView tIconView = (TIconView) this.nativeWrapperAdView.findViewById(R$id.ad_icon);
            if (tIconView != null) {
                uf.c.g(tIconView);
            }
        }
        this.closeImg.postDelayed(new Runnable() {
            @Override
            public final void run() {
                BiddingFloatingIrregularView.i(this.f56146a);
            }
        }, ((long) com.transsion.ad.scene.a.f41152a.e(this.sceneId)) * 1000);
        setVisibility(0);
    }

    public BiddingFloatingIrregularView(Context context, AttributeSet attributeSet, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public BiddingFloatingIrregularView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.sceneId = "TrendingFloatIrregularAd";
        NativeWrapperAdView nativeWrapperAdView = new NativeWrapperAdView(context, null, 2, null);
        this.nativeWrapperAdView = nativeWrapperAdView;
        this.hiSceneOff = true;
        this.hiPlacementNon = true;
        this.closeImg = new ImageView(context);
        this.loadInterval = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Integer.valueOf(BiddingFloatingIrregularView.h(this.f56145a));
            }
        });
        this.adListener = new a();
        this.hiSceneOff = com.transsion.ad.scene.c.f41154a.a("TrendingFloatIrregularAd");
        this.hiPlacementNon = TextUtils.isEmpty(com.transsion.ad.scene.a.f41152a.h("TrendingFloatIrregularAd"));
        addView(nativeWrapperAdView, new FrameLayout.LayoutParams(-1, -1));
        d();
    }
}
