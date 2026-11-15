package com.transsion.postdetail.ad;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import com.blankj.utilcode.util.a0;
import com.cloud.hisavana.sdk.common.util.k0;
import com.google.android.material.card.MaterialCardView;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.mediation.ad.TAdChoicesView;
import com.hisavana.mediation.ad.TMediaView;
import com.therouter.TheRouter;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.baseui.R$mipmap;
import com.transsion.gslb.GslbSdk;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.memberapi.MemberSource;
import com.transsion.postdetail.ui.view.AdCountDownView;
import com.transsion.wrapperad.R$id;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import wn.l0;

public abstract class BaseVideoAdHelper {
    public static final a P = new a(null);
    private BubbleTextView B;
    private AnimatorSet C;
    private int D;
    private int E;
    private int K;
    private f4.a M;
    private VideoFloatingView N;

    private LifecycleCoroutineScope f46594a;

    private String f46595b;

    private Function1 f46596c;

    private Function0 f46597d;

    private BiddingNativeManager f46598e;

    private BiddingInterstitialManager f46599f;

    private boolean f46601h;

    private boolean f46602i;

    private boolean f46603j;

    private boolean f46604k;

    private long f46605l;

    private boolean f46606m;

    private int f46607n;

    private boolean f46608o;

    private int f46609p;

    private boolean f46610q;

    private boolean f46611r;

    private boolean f46612s;

    private CountDownTimer f46613t;

    private CountDownTimer f46614u;

    private long f46615v;

    private long f46616w;

    private long f46617x;

    private String f46600g = "";

    private final String f46618y = "bubble_tip_video_start";

    private final String f46619z = "bubble_tip_interpolate";
    private final String A = "floating_show_time";
    private final Lazy F = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(BaseVideoAdHelper.K(this.f46661a));
        }
    });
    private final Lazy G = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(BaseVideoAdHelper.J(this.f46662a));
        }
    });
    private final Lazy H = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(BaseVideoAdHelper.K0(this.f46663a));
        }
    });
    private final Lazy I = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(BaseVideoAdHelper.I0(this.f46664a));
        }
    });
    private final Lazy J = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(BaseVideoAdHelper.J0(this.f46665a));
        }
    });
    private final Lazy L = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(BaseVideoAdHelper.S());
        }
    });
    private String O = "";

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            String value;
            ConfigBean configBeanC = cm.f.f17019c.a().c("stream_reward_intercept", true);
            return (configBeanC == null || (value = configBeanC.getValue()) == null) ? "" : value;
        }

        private a() {
        }
    }

    public static final class b extends CountDownTimer {

        final Ref.IntRef f46621b;

        final String f46622c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Ref.IntRef intRef, String str, long j10) {
            super(j10, 1000L);
            this.f46621b = intRef;
            this.f46622c = str;
        }

        @Override
        public void onFinish() {
            if (Intrinsics.c(this.f46622c, "VideoStartBidScene")) {
                BaseVideoAdHelper.this.l2();
            }
            BaseVideoAdHelper.this.E1(0);
            BaseVideoAdHelper.this.P();
            BaseVideoAdHelper.this.Q();
            BaseVideoAdHelper.this.f2(this.f46622c);
        }

        @Override
        public void onTick(long j10) {
            BaseVideoAdHelper baseVideoAdHelper = BaseVideoAdHelper.this;
            Ref.IntRef intRef = this.f46621b;
            int i10 = intRef.element;
            intRef.element = i10 - 1;
            baseVideoAdHelper.E1(i10);
            AdCountDownView adCountDownViewW = BaseVideoAdHelper.this.W();
            if (adCountDownViewW != null) {
                adCountDownViewW.refreshCountDown(BaseVideoAdHelper.this.y0());
            }
        }
    }

    public static final class c implements im.c {

        final Function0 f46624b;

        c(Function0 function0) {
            this.f46624b = function0;
        }

        @Override
        public void a() {
        }

        @Override
        public void onSuccess() {
            BaseVideoAdHelper.this.P();
            Function0 function0 = this.f46624b;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    public static final class d extends CountDownTimer {

        final BaseVideoAdHelper f46625a;

        final Ref.LongRef f46626b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(long j10, BaseVideoAdHelper baseVideoAdHelper, Ref.LongRef longRef) {
            super(j10, 1000L);
            this.f46625a = baseVideoAdHelper;
            this.f46626b = longRef;
        }

        @Override
        public void onFinish() {
            this.f46625a.R();
            if (this.f46625a.U0()) {
                return;
            }
            this.f46625a.t1(this.f46625a.s0() + 1);
            BaseVideoAdHelper baseVideoAdHelper = this.f46625a;
            BiddingNativeManager biddingNativeManagerU0 = baseVideoAdHelper.u0();
            baseVideoAdHelper.S1("VideoInterpolateBidScene", biddingNativeManagerU0 != null ? biddingNativeManagerU0.k0() : null);
            this.f46625a.L1("VideoInterpolateBidScene");
        }

        @Override
        public void onTick(long j10) {
            wn.d bind;
            TextView textView;
            AdInterceptTimerView adInterceptTimerViewE0 = this.f46625a.e0();
            if (adInterceptTimerViewE0 == null || (bind = adInterceptTimerViewE0.getBind()) == null || (textView = bind.f74336d) == null) {
                return;
            }
            BaseVideoAdHelper baseVideoAdHelper = this.f46625a;
            Ref.LongRef longRef = this.f46626b;
            long j11 = longRef.element;
            longRef.element = (-1) + j11;
            textView.setText(baseVideoAdHelper.a0(j11));
        }
    }

    private final int A0() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("VideoStartBidScene");
        return ((jsonObjectB == null || (jsonElement = jsonObjectB.get("interval")) == null) ? 1440 : jsonElement.getAsInt()) * 60000;
    }

    private final void B1() {
        ViewGroup viewGroupH0 = h0();
        if (viewGroupH0 != null) {
            ViewGroup.LayoutParams layoutParams = viewGroupH0.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = a0.a(this.f46601h ? 426.0f : 219.0f);
                layoutParams.height = a0.a(this.f46601h ? 240.0f : 123.0f);
            }
            AppCompatTextView appCompatTextView = (AppCompatTextView) viewGroupH0.findViewById(R$id.native_ad_action);
            if (appCompatTextView != null) {
                ViewGroup.LayoutParams layoutParams2 = appCompatTextView.getLayoutParams();
                ConstraintLayout.b bVar = layoutParams2 instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams2 : null;
                if (bVar != null) {
                    ((ViewGroup.MarginLayoutParams) bVar).height = a0.a(this.f46601h ? 32.0f : 20.0f);
                    int iA = a0.a(8.0f);
                    ((ViewGroup.MarginLayoutParams) bVar).rightMargin = iA;
                    ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = iA;
                }
                appCompatTextView.setTextSize(this.f46601h ? 14.0f : 12.0f);
            }
        }
    }

    private final void G0() {
        AdCountDownView adCountDownViewW = W();
        if (adCountDownViewW != null) {
            adCountDownViewW.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    BaseVideoAdHelper.H0(this.f46647a, view);
                }
            });
        }
    }

    private final void G1() {
        ImageView imageViewZ0 = z0();
        if (imageViewZ0 != null) {
            ViewGroup.LayoutParams layoutParams = imageViewZ0.getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null) {
                int iA = a0.a(this.f46601h ? 44.0f : 28.0f);
                layoutParams2.width = iA;
                layoutParams2.height = iA;
                layoutParams2.rightMargin = a0.a(this.f46601h ? 16.0f : 12.0f);
                layoutParams2.bottomMargin = a0.a(this.f46601h ? 16.0f : 10.0f);
            }
        }
    }

    public static final void H0(BaseVideoAdHelper baseVideoAdHelper, View view) {
        M(baseVideoAdHelper, false, null, 2, null);
    }

    public static final int I0(BaseVideoAdHelper baseVideoAdHelper) {
        return baseVideoAdHelper.l0();
    }

    public static final int J(BaseVideoAdHelper baseVideoAdHelper) {
        return baseVideoAdHelper.X("VideoInterpolateBidScene");
    }

    public static final int J0(BaseVideoAdHelper baseVideoAdHelper) {
        return baseVideoAdHelper.m0();
    }

    public static final int K(BaseVideoAdHelper baseVideoAdHelper) {
        return baseVideoAdHelper.X("VideoStartBidScene");
    }

    public static final int K0(BaseVideoAdHelper baseVideoAdHelper) {
        return baseVideoAdHelper.n0();
    }

    private final void K1(ViewGroup viewGroup, boolean z10) {
        ImageView imageView = viewGroup != null ? (ImageView) viewGroup.findViewWithTag("adVolumeImage") : null;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null) {
                layoutParams2.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
                if (!z10) {
                    layoutParams2.leftMargin = a0.a(this.f46601h ? 16.0f : 12.0f);
                    layoutParams2.bottomMargin = a0.a(this.f46601h ? 16.0f : 10.0f);
                    int iA = a0.a(this.f46601h ? 44.0f : 28.0f);
                    layoutParams2.width = iA;
                    layoutParams2.height = iA;
                    return;
                }
                int iA2 = a0.a(8.0f);
                layoutParams2.leftMargin = iA2;
                layoutParams2.bottomMargin = iA2;
                int iA3 = a0.a(20.0f);
                layoutParams2.width = iA3;
                layoutParams2.height = iA3;
            }
        }
    }

    public static void M(BaseVideoAdHelper baseVideoAdHelper, boolean z10, Function0 function0, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkMember");
        }
        if ((i10 & 2) != 0) {
            function0 = null;
        }
        baseVideoAdHelper.L(z10, function0);
    }

    public static final void M1(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.h2();
        baseVideoAdHelper.D++;
        com.transsion.baselib.report.launch.b.f42221a.b().putInt(baseVideoAdHelper.f46618y, baseVideoAdHelper.D);
    }

    public static final void N1(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.h2();
        baseVideoAdHelper.E++;
        com.transsion.baselib.report.launch.b.f42221a.b().putInt(baseVideoAdHelper.f46619z, baseVideoAdHelper.E);
    }

    private final void O1() {
        if (this.f46608o || this.f46612s || !S0()) {
            return;
        }
        this.f46608o = true;
        Y0(new Function0() {
            @Override
            public final Object invoke() {
                return BaseVideoAdHelper.P1(this.f46650a);
            }
        }, new Function0() {
            @Override
            public final Object invoke() {
                return BaseVideoAdHelper.Q1(this.f46651a);
            }
        });
    }

    public static final Unit P1(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.i2();
        return Unit.f64096a;
    }

    public static final Unit Q1(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.f46608o = false;
        baseVideoAdHelper.f46615v = 0L;
        baseVideoAdHelper.f46616w = System.currentTimeMillis();
        return Unit.f64096a;
    }

    private final boolean R0(int i10, long j10) {
        return Math.abs(System.currentTimeMillis() - j10) > ((long) i10);
    }

    public final void R1(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        Context context;
        BiddingInterstitialManager biddingInterstitialManager;
        if (!this.f46601h || this.f46610q) {
            return;
        }
        H(true);
        this.f46604k = true;
        this.f46611r = true;
        ViewGroup viewGroupG0 = g0();
        if (viewGroupG0 != null && (context = viewGroupG0.getContext()) != null && (biddingInterstitialManager = this.f46599f) != null) {
            AbsAdBidding.O0(biddingInterstitialManager, (AppCompatActivity) context, biddingIntermediateMaterialBean, false, 4, null);
        }
        R();
    }

    public static final int S() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("VideoFloatingNativeScene");
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("showMax")) == null) {
            return 10;
        }
        return jsonElement.getAsInt();
    }

    public final void S1(String str, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        Context context;
        this.O = str;
        H(true);
        this.f46606m = true;
        this.f46605l = System.currentTimeMillis();
        ViewGroup viewGroupG0 = g0();
        if (viewGroupG0 != null && (context = viewGroupG0.getContext()) != null) {
            ow.b bVar = ow.b.f68937a;
            BiddingNativeManager biddingNativeManager = this.f46598e;
            com.transsion.ad.bidding.base.r rVarA = bVar.a(context, biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
            NativeWrapperAdView nativeWrapperAdViewF0 = f0();
            if (nativeWrapperAdViewF0 != null) {
                nativeWrapperAdViewF0.bindNativeView(this.f46598e, rVarA, biddingIntermediateMaterialBean);
            }
        }
        l1(false);
        ViewGroup viewGroupG1 = g0();
        if (viewGroupG1 != null) {
            viewGroupG1.setVisibility(0);
        }
        I(str);
        V0();
    }

    private final int T(String str) {
        JsonElement jsonElement;
        JsonElement jsonElement2;
        JsonElement jsonElement3;
        int iHashCode = str.hashCode();
        if (iHashCode != -172473003) {
            if (iHashCode != -73588874) {
                if (iHashCode == 2049503279 && str.equals("VideoEndBidScene")) {
                    JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("VideoEndBidScene");
                    if (jsonObjectB == null || (jsonElement3 = jsonObjectB.get("videoEndAdCountdownTime")) == null) {
                        return 10;
                    }
                    return jsonElement3.getAsInt();
                }
            } else if (str.equals("VideoStartBidScene")) {
                JsonObject jsonObjectB2 = com.transsion.ad.scene.d.f41155a.b("VideoStartBidScene");
                if (jsonObjectB2 == null || (jsonElement2 = jsonObjectB2.get("videoStartAdCountdownTime")) == null) {
                    return 10;
                }
                return jsonElement2.getAsInt();
            }
        } else if (str.equals("VideoInterpolateBidScene")) {
            JsonObject jsonObjectB3 = com.transsion.ad.scene.d.f41155a.b("VideoInterpolateBidScene");
            if (jsonObjectB3 == null || (jsonElement = jsonObjectB3.get("videoInterpolateAdCountdownTime")) == null) {
                return 10;
            }
            return jsonElement.getAsInt();
        }
        return 0;
    }

    public static final Unit U1(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.H(false);
        return Unit.f64096a;
    }

    public static final Unit V1(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.H(false);
        return Unit.f64096a;
    }

    private final boolean W0() {
        return this.f46607n < q0();
    }

    private final void W1(String str, Function0 function0, Function0 function1) {
        LifecycleCoroutineScope lifecycleCoroutineScope = this.f46594a;
        if (lifecycleCoroutineScope != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScope, null, null, new BaseVideoAdHelper$showSceneAd$1(str, this, function0, function1, null), 3, null);
        }
    }

    private final int X(String str) {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b(str);
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("bubbleFrequency")) == null) {
            return 3;
        }
        return jsonElement.getAsInt();
    }

    static void X1(BaseVideoAdHelper baseVideoAdHelper, String str, Function0 function0, Function0 function1, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showSceneAd");
        }
        if ((i10 & 2) != 0) {
            function0 = null;
        }
        if ((i10 & 4) != 0) {
            function1 = null;
        }
        baseVideoAdHelper.W1(str, function0, function1);
    }

    private final void Y0(final Function0 function0, final Function0 function1) {
        W1("VideoInterpolateBidScene", new Function0() {
            @Override
            public final Object invoke() {
                return BaseVideoAdHelper.Z0(function0);
            }
        }, new Function0() {
            @Override
            public final Object invoke() {
                return BaseVideoAdHelper.a1(this.f46656a, function1);
            }
        });
    }

    public static final Unit Z0(Function0 function0) {
        function0.invoke();
        return Unit.f64096a;
    }

    public static final Unit Z1() {
        return Unit.f64096a;
    }

    public final String a0(long j10) {
        return j10 + "s";
    }

    public static final Unit a1(BaseVideoAdHelper baseVideoAdHelper, Function0 function0) {
        baseVideoAdHelper.H(false);
        function0.invoke();
        return Unit.f64096a;
    }

    public static final Unit a2(BaseVideoAdHelper baseVideoAdHelper) {
        Function1 function1 = baseVideoAdHelper.f46596c;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
        baseVideoAdHelper.f1();
        return Unit.f64096a;
    }

    public final void b2(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        Context context;
        if (this.f46601h) {
            return;
        }
        H(true);
        this.f46604k = true;
        NativeWrapperAdView nativeWrapperAdViewF0 = f0();
        if (nativeWrapperAdViewF0 != null && (context = nativeWrapperAdViewF0.getContext()) != null) {
            ow.b bVar = ow.b.f68937a;
            BiddingNativeManager biddingNativeManager = this.f46598e;
            com.transsion.ad.bidding.base.r rVarA = bVar.a(context, biddingNativeManager != null ? biddingNativeManager.getMSceneId() : null);
            NativeWrapperAdView nativeWrapperAdViewV = V();
            if (nativeWrapperAdViewV != null) {
                nativeWrapperAdViewV.bindNativeView(this.f46598e, rVarA, biddingIntermediateMaterialBean);
            }
        }
        l1(true);
        ViewGroup viewGroupH0 = h0();
        if (viewGroupH0 != null) {
            viewGroupH0.setVisibility(0);
        }
        ImageView imageViewT0 = t0();
        if (imageViewT0 != null) {
            imageViewT0.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    BaseVideoAdHelper.c2(this.f46648a, view);
                }
            });
        }
        R();
    }

    public static final void c2(BaseVideoAdHelper baseVideoAdHelper, View view) {
        baseVideoAdHelper.O();
    }

    public final void d1(String str, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        this.f46600g = str;
        LifecycleCoroutineScope lifecycleCoroutineScope = this.f46594a;
        if (lifecycleCoroutineScope != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScope, null, null, new BaseVideoAdHelper$onAdLoad$1(str, this, biddingIntermediateMaterialBean, null), 3, null);
        }
    }

    public static final Unit e2(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.H(false);
        baseVideoAdHelper.f1();
        return Unit.f64096a;
    }

    public final void f1() {
        Function0 function0 = this.f46597d;
        if (function0 != null) {
            function0.invoke();
        }
        this.f46597d = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f2(String str) {
        Object objM453constructorimpl;
        if (str == null || !this.f46601h) {
            return;
        }
        if ((Intrinsics.c(str, "VideoStartBidScene") || Intrinsics.c(str, "VideoInterpolateBidScene")) && this.K < i0()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                f4.a aVar = this.M;
                Unit unit = null;
                Object[] objArr = 0;
                Object[] objArr2 = 0;
                if (aVar != null) {
                    View root = aVar.getRoot();
                    ConstraintLayout constraintLayout = root instanceof ConstraintLayout ? (ConstraintLayout) root : null;
                    if (constraintLayout == null) {
                        return;
                    }
                    Context context = GslbSdk.context;
                    Intrinsics.g(context, "context");
                    VideoFloatingView videoFloatingView = new VideoFloatingView(context, objArr2 == true ? 1 : 0, 2, objArr == true ? 1 : 0);
                    this.N = videoFloatingView;
                    videoFloatingView.show(this.f46594a, constraintLayout, new Function0() {
                        @Override
                        public final Object invoke() {
                            return BaseVideoAdHelper.g2(this.f46660a);
                        }
                    });
                    unit = Unit.f64096a;
                }
                objM453constructorimpl = Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Result.m452boximpl(objM453constructorimpl);
        }
    }

    public final void g1() {
        this.f46615v = 0L;
        this.f46616w = System.currentTimeMillis();
    }

    public static final Unit g2(BaseVideoAdHelper baseVideoAdHelper) {
        baseVideoAdHelper.K++;
        com.transsion.baselib.report.launch.b.f42221a.b().putInt(baseVideoAdHelper.A, baseVideoAdHelper.K);
        return Unit.f64096a;
    }

    private final void h2() {
        NativeWrapperAdView nativeWrapperAdViewF0 = f0();
        BubbleTextView bubbleTextView = nativeWrapperAdViewF0 != null ? (BubbleTextView) nativeWrapperAdViewF0.findViewById(R$id.bubble_tip) : null;
        this.B = bubbleTextView;
        if (bubbleTextView != null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(bubbleTextView, "translationY", -35.0f, 15.0f, -35.0f);
            objectAnimatorOfFloat.setDuration(900L);
            objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
            objectAnimatorOfFloat.setRepeatCount(-1);
            objectAnimatorOfFloat.setRepeatMode(1);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(objectAnimatorOfFloat);
            animatorSet.start();
            uf.c.k(bubbleTextView);
            this.C = animatorSet;
        }
    }

    private final void i1() {
        NativeWrapperAdView nativeWrapperAdViewF0 = f0();
        CardView cardView = nativeWrapperAdViewF0 != null ? (CardView) nativeWrapperAdViewF0.findViewById(R$id.adChoicesViewCard) : null;
        if (cardView != null) {
            ViewGroup.LayoutParams layoutParams = cardView.getLayoutParams();
            ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
            if (bVar != null) {
                int iA = a0.a(this.f46601h ? 16.0f : 12.0f);
                ((ViewGroup.MarginLayoutParams) bVar).leftMargin = iA;
                ((ViewGroup.MarginLayoutParams) bVar).topMargin = iA;
            }
            View childAt = cardView.getChildAt(0);
            TAdChoicesView tAdChoicesView = childAt instanceof TAdChoicesView ? (TAdChoicesView) childAt : null;
            View childAt2 = tAdChoicesView != null ? tAdChoicesView.getChildAt(0) : null;
            if (childAt2 == null) {
                k1();
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
            int iA2 = a0.a(this.f46601h ? 26.0f : 22.0f);
            layoutParams2.width = iA2;
            layoutParams2.height = iA2;
            ImageView imageView = childAt2 instanceof ImageView ? (ImageView) childAt2 : null;
            if (imageView != null) {
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            }
            k1();
        }
    }

    private final void i2() {
        wn.d bind;
        TextView textView;
        wn.d bind2;
        TextView textView2;
        if (this.f46612s) {
            this.f46608o = false;
            return;
        }
        R();
        long jP0 = p0();
        Ref.LongRef longRef = new Ref.LongRef();
        longRef.element = jP0 / ((long) 1000);
        AdInterceptTimerView adInterceptTimerViewE0 = e0();
        if (adInterceptTimerViewE0 != null) {
            uf.c.k(adInterceptTimerViewE0);
        }
        AdInterceptTimerView adInterceptTimerViewE1 = e0();
        if (adInterceptTimerViewE1 != null && (bind2 = adInterceptTimerViewE1.getBind()) != null && (textView2 = bind2.f74336d) != null) {
            textView2.setText(a0(longRef.element));
        }
        AdInterceptTimerView adInterceptTimerViewE2 = e0();
        if (adInterceptTimerViewE2 != null && (bind = adInterceptTimerViewE2.getBind()) != null && (textView = bind.f74338f) != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    BaseVideoAdHelper.j2(this.f46653a, view);
                }
            });
        }
        d dVar = new d(jP0, this, longRef);
        this.f46614u = dVar;
        dVar.start();
    }

    public static final void j2(BaseVideoAdHelper baseVideoAdHelper, View view) {
        M(baseVideoAdHelper, false, null, 2, null);
    }

    private final void k1() {
        ImageView imageView;
        TextView textView;
        TextView textView2;
        AdCountDownView adCountDownViewW = W();
        if (adCountDownViewW != null) {
            ViewGroup.LayoutParams layoutParams = adCountDownViewW.getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null) {
                int iA = a0.a(this.f46601h ? 16.0f : 12.0f);
                layoutParams2.topMargin = iA;
                layoutParams2.rightMargin = iA;
            }
            float f10 = this.f46601h ? 14.0f : 12.0f;
            l0 bind = adCountDownViewW.getBind();
            if (bind != null && (textView2 = bind.f74453d) != null) {
                textView2.getLayoutParams().height = a0.a(this.f46601h ? 28.0f : 24.0f);
                textView2.setTextSize(f10);
            }
            l0 bind2 = adCountDownViewW.getBind();
            if (bind2 != null && (textView = bind2.f74454e) != null) {
                textView.setTextSize(f10);
            }
            l0 bind3 = adCountDownViewW.getBind();
            if (bind3 == null || (imageView = bind3.f74451b) == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
            int iA2 = a0.a(this.f46601h ? 18.0f : 15.0f);
            layoutParams3.width = iA2;
            layoutParams3.height = iA2;
        }
    }

    public final void k2() {
        AnimatorSet animatorSet = this.C;
        if (animatorSet != null && animatorSet.isRunning()) {
            animatorSet.cancel();
        }
        BubbleTextView bubbleTextView = this.B;
        if (bubbleTextView != null) {
            uf.c.g(bubbleTextView);
        }
        this.C = null;
    }

    private final void m1() {
        NativeWrapperAdView nativeWrapperAdViewF0 = f0();
        BubbleTextView bubbleTextView = nativeWrapperAdViewF0 != null ? (BubbleTextView) nativeWrapperAdViewF0.findViewById(R$id.bubble_tip) : null;
        this.B = bubbleTextView;
        if (bubbleTextView != null) {
            bubbleTextView.setTextSize(this.f46601h ? 16.0f : 12.0f);
            bubbleTextView.setArrowPosition(a0.a(this.f46601h ? 110.0f : 90.0f));
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.transsion.postdetail.ad.BaseVideoAdHelper$wrapperAdListener$1] */
    public final BaseVideoAdHelper$wrapperAdListener$1 m2(final String str, final Function0 function0, final Function0 function1) {
        return new oh.a() {
            @Override
            public void i(TAdErrorCode tAdErrorCode) {
                LifecycleCoroutineScope lifecycleCoroutineScopeW0 = this.f46627d.w0();
                if (lifecycleCoroutineScopeW0 != null) {
                    kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new BaseVideoAdHelper$wrapperAdListener$1$onBiddingError$1(function1, null), 3, null);
                }
            }

            @Override
            public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                LifecycleCoroutineScope lifecycleCoroutineScopeW0 = this.f46627d.w0();
                if (lifecycleCoroutineScopeW0 != null) {
                    kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new BaseVideoAdHelper$wrapperAdListener$1$onBiddingLoad$1(function0, this.f46627d, str, biddingIntermediateMaterialBean, null), 3, null);
                }
            }

            @Override
            public void l(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.l(biddingIntermediateMaterialBean);
                this.f46627d.P();
                BaseVideoAdHelper baseVideoAdHelper = this.f46627d;
                baseVideoAdHelper.f2(baseVideoAdHelper.O);
            }

            @Override
            public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                LifecycleCoroutineScope lifecycleCoroutineScopeW0 = this.f46627d.w0();
                if (lifecycleCoroutineScopeW0 != null) {
                    kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new BaseVideoAdHelper$wrapperAdListener$1$onBiddingWrapperAdClose$1(this.f46627d, null), 3, null);
                }
            }

            @Override
            public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.p(biddingIntermediateMaterialBean);
                LifecycleCoroutineScope lifecycleCoroutineScopeW0 = this.f46627d.w0();
                if (lifecycleCoroutineScopeW0 != null) {
                    kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new BaseVideoAdHelper$wrapperAdListener$1$onBiddingWrapperAdShowError$1(function1, null), 3, null);
                }
            }
        };
    }

    private final void p1() {
        AdInterceptTimerView adInterceptTimerViewE0 = e0();
        if (adInterceptTimerViewE0 != null) {
            ViewGroup.LayoutParams layoutParams = adInterceptTimerViewE0.getLayoutParams();
            ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
            if (bVar != null) {
                ((ViewGroup.MarginLayoutParams) bVar).topMargin = a0.a(this.f46601h ? 16.0f : 12.0f);
            }
            int childCount = adInterceptTimerViewE0.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = adInterceptTimerViewE0.getChildAt(i10);
                if (childAt instanceof AppCompatTextView) {
                    ((AppCompatTextView) childAt).setTextSize(this.f46601h ? 14.0f : 12.0f);
                }
            }
        }
    }

    private final void q1() {
        View viewK0 = k0();
        if (viewK0 != null) {
            ViewGroup.LayoutParams layoutParams = viewK0.getLayoutParams();
            ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
            if (bVar != null) {
                int height = -1;
                ((ViewGroup.MarginLayoutParams) bVar).width = -1;
                if (!this.f46601h) {
                    ViewGroup viewGroupC0 = C0();
                    height = viewGroupC0 != null ? viewGroupC0.getHeight() : (int) ((((double) ((ViewGroup.MarginLayoutParams) bVar).width) * 9.0d) / ((double) 16));
                }
                ((ViewGroup.MarginLayoutParams) bVar).height = height;
            }
        }
    }

    private final void r1() {
        BiddingNativeManager biddingNativeManager = this.f46598e;
        if (biddingNativeManager == null || biddingNativeManager.R0()) {
            NativeWrapperAdView nativeWrapperAdViewF0 = f0();
            final TMediaView tMediaView = nativeWrapperAdViewF0 != null ? (TMediaView) nativeWrapperAdViewF0.findViewById(R$id.native_ad_media) : null;
            if (tMediaView != null) {
                tMediaView.post(new Runnable() {
                    @Override
                    public final void run() {
                        BaseVideoAdHelper.s1(tMediaView, this);
                    }
                });
            }
        }
    }

    public static final void s1(TMediaView tMediaView, BaseVideoAdHelper baseVideoAdHelper) {
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2 = tMediaView.getLayoutParams();
        ConstraintLayout.b bVar = layoutParams2 instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams2 : null;
        if (bVar != null) {
            if (baseVideoAdHelper.f46601h) {
                ((ViewGroup.MarginLayoutParams) bVar).height = -1;
                bVar.I = null;
            } else {
                ((ViewGroup.MarginLayoutParams) bVar).height = 0;
                bVar.I = "H,16:9";
            }
        }
        View mediaView = tMediaView.getMediaView();
        if (mediaView != null) {
            mediaView.getLayoutParams().height = -1;
            mediaView.requestLayout();
            if (mediaView instanceof ViewGroup) {
                View childAt = ((ViewGroup) mediaView).getChildAt(0);
                if (childAt != null && (layoutParams = childAt.getLayoutParams()) != null) {
                    layoutParams.height = -1;
                }
                if (childAt != null) {
                    childAt.requestLayout();
                }
            }
        }
    }

    private final void w1() {
        ViewGroup viewGroupG0 = g0();
        if (viewGroupG0 != null) {
            ViewGroup.LayoutParams layoutParams = viewGroupG0.getLayoutParams();
            int height = -1;
            layoutParams.width = -1;
            if (!this.f46601h) {
                ViewGroup viewGroupC0 = C0();
                height = viewGroupC0 != null ? viewGroupC0.getHeight() : (int) ((((double) layoutParams.width) * 9.0d) / ((double) 16));
            }
            layoutParams.height = height;
        }
    }

    private final void x1() {
        NativeWrapperAdView nativeWrapperAdViewF0 = f0();
        AppCompatTextView appCompatTextView = nativeWrapperAdViewF0 != null ? (AppCompatTextView) nativeWrapperAdViewF0.findViewById(R$id.native_ad_action) : null;
        if (appCompatTextView != null) {
            ViewGroup.LayoutParams layoutParams = appCompatTextView.getLayoutParams();
            ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
            if (bVar != null) {
                ((ViewGroup.MarginLayoutParams) bVar).height = a0.a(this.f46601h ? 44.0f : 28.0f);
                ((ViewGroup.MarginLayoutParams) bVar).rightMargin = a0.a(this.f46601h ? 73.0f : 52.0f);
                ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = a0.a(this.f46601h ? 16.0f : 10.0f);
            }
            appCompatTextView.setTextSize(this.f46601h ? 16.0f : 12.0f);
            int iA = a0.a(this.f46601h ? 16.0f : 6.0f);
            appCompatTextView.setPadding(iA, 3, iA, 4);
        }
    }

    protected final void A1(boolean z10) {
        this.f46601h = z10;
    }

    protected final long B0() {
        return this.f46616w;
    }

    protected abstract ViewGroup C0();

    protected final void C1(boolean z10) {
        this.f46604k = z10;
    }

    public final void D0(long j10, long j11) {
        this.f46602i = R0(A0(), j10);
        this.f46603j = R0(c0(), j11);
    }

    protected final void D1(long j10) {
        this.f46615v = j10;
    }

    protected final void E0(f4.a aVar, String str, Function1 function1) {
        View root;
        this.M = aVar;
        Context context = (aVar == null || (root = aVar.getRoot()) == null) ? null : root.getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        this.f46594a = appCompatActivity != null ? androidx.p009lifecycle.v.a(appCompatActivity) : null;
        this.f46595b = str;
        this.f46596c = function1;
        G0();
    }

    protected final void E1(int i10) {
        this.f46609p = i10;
    }

    public final void F0(String scene) {
        Intrinsics.h(scene, "scene");
        if (!X0(scene, true)) {
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
            this.E = bVar.b().getInt(this.f46619z, 0);
            this.D = bVar.b().getInt(this.f46618y, 0);
            this.K = bVar.b().getInt(this.A, 0);
            return;
        }
        this.E = 0;
        com.transsion.baselib.report.launch.b bVar2 = com.transsion.baselib.report.launch.b.f42221a;
        bVar2.b().putInt(this.f46619z, 0);
        this.D = 0;
        bVar2.b().putInt(this.f46618y, 0);
        this.K = 0;
        bVar2.b().putInt(this.A, 0);
    }

    protected final void F1(boolean z10) {
        this.f46612s = z10;
    }

    public void H(boolean z10) {
        Function1 function1 = this.f46596c;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z10));
        }
        this.f46610q = z10;
    }

    public final void H1(boolean z10) {
        this.f46603j = z10;
    }

    protected final void I(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        Ref.IntRef intRef = new Ref.IntRef();
        int iT = this.f46609p;
        if (iT == 0) {
            iT = T(sceneId);
        }
        intRef.element = iT;
        AdCountDownView adCountDownViewW = W();
        if (adCountDownViewW != null) {
            adCountDownViewW.refreshCountDown(intRef.element);
        }
        Q();
        b bVar = new b(intRef, sceneId, ((long) intRef.element) * 1000);
        this.f46613t = bVar;
        bVar.start();
    }

    public final void I1(boolean z10) {
        this.f46602i = z10;
    }

    protected final void J1(long j10) {
        this.f46616w = j10;
    }

    protected final void L(boolean z10, Function0 function0) {
        wj.d dVar;
        if (!z10 && (dVar = (wj.d) TheRouter.d(wj.d.class, new Object[0])) != null) {
            dVar.h();
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            im.b.a.c(bVar, com.blankj.utilcode.util.a.b(), MemberSource.SOURCE_LANDSCAPE_PLAY, new c(function0), false, null, 24, null);
        }
    }

    public final String L0(String str) {
        if (TextUtils.isEmpty(str)) {
            return "sceneId is empty";
        }
        com.transsion.ad.scene.c cVar = com.transsion.ad.scene.c.f41154a;
        if (cVar.d(str)) {
            return "当前是会员,不展示广告";
        }
        if (!com.transsion.ad.scene.b.f41153a.k()) {
            return "全局场景关闭";
        }
        if (cVar.c(str)) {
            return "场景关闭";
        }
        return com.transsion.ad.scene.d.f41155a.b(str) == null ? "场景配置为空" : "";
    }

    protected final void L1(String str) {
        NativeWrapperAdView nativeWrapperAdViewF0;
        NativeWrapperAdView nativeWrapperAdViewF1;
        if (Intrinsics.c(str, "VideoStartBidScene")) {
            if (this.D < Z() && (nativeWrapperAdViewF1 = f0()) != null) {
                nativeWrapperAdViewF1.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        BaseVideoAdHelper.M1(this.f46645a);
                    }
                }, 2000L);
                return;
            }
            return;
        }
        if (!Intrinsics.c(str, "VideoInterpolateBidScene") || this.E >= Y() || (nativeWrapperAdViewF0 = f0()) == null) {
            return;
        }
        nativeWrapperAdViewF0.postDelayed(new Runnable() {
            @Override
            public final void run() {
                BaseVideoAdHelper.N1(this.f46646a);
            }
        }, 2000L);
    }

    protected final boolean M0() {
        return this.f46610q;
    }

    public final void N(long j10, Function0 callback) {
        Intrinsics.h(callback, "callback");
        if (this.f46617x == 0) {
            this.f46617x = j10;
            return;
        }
        if (this.f46612s || this.f46610q || !W0()) {
            return;
        }
        if (Math.abs(j10 - this.f46617x) > 5000) {
            this.f46617x = j10;
            this.f46615v += System.currentTimeMillis() - this.f46616w;
            this.f46616w = System.currentTimeMillis();
        }
        if (this.f46615v >= o0()) {
            this.f46597d = callback;
            O1();
        }
    }

    protected final boolean N0() {
        return this.f46608o;
    }

    protected final void O() {
        if (TextUtils.equals(this.f46600g, "LandscapePauseSceneNew") || TextUtils.equals(this.f46600g, "VerticalPauseScene")) {
            P();
        }
    }

    protected final boolean O0() {
        return this.f46606m;
    }

    protected final void P() {
        LifecycleCoroutineScope lifecycleCoroutineScope = this.f46594a;
        if (lifecycleCoroutineScope != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScope, null, null, new BaseVideoAdHelper$closeSceneAd$1(this, null), 3, null);
        }
    }

    protected final boolean P0() {
        return this.f46611r;
    }

    protected final void Q() {
        CountDownTimer countDownTimer = this.f46613t;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f46613t = null;
    }

    public final boolean Q0() {
        return this.f46601h;
    }

    protected final void R() {
        CountDownTimer countDownTimer = this.f46614u;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f46614u = null;
        AdInterceptTimerView adInterceptTimerViewE0 = e0();
        if (adInterceptTimerViewE0 != null) {
            uf.c.g(adInterceptTimerViewE0);
        }
    }

    public final boolean S0() {
        return !cw.e.f58665a.b().k();
    }

    protected final boolean T0() {
        return this.f46604k;
    }

    protected final void T1() {
        if (this.f46601h) {
            X1(this, "LandscapePauseSceneNew", null, new Function0() {
                @Override
                public final Object invoke() {
                    return BaseVideoAdHelper.V1(this.f46644a);
                }
            }, 2, null);
        } else {
            X1(this, "VerticalPauseScene", null, new Function0() {
                @Override
                public final Object invoke() {
                    return BaseVideoAdHelper.U1(this.f46654a);
                }
            }, 2, null);
        }
    }

    protected final int U() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("VideoEndBidScene");
        return ((jsonObjectB == null || (jsonElement = jsonObjectB.get("threshold")) == null) ? 5 : jsonElement.getAsInt()) * 60000;
    }

    public final boolean U0() {
        return this.f46612s;
    }

    protected abstract NativeWrapperAdView V();

    protected final void V0() {
        if (this.f46601h) {
            ImageView imageViewZ0 = z0();
            if (imageViewZ0 != null) {
                imageViewZ0.setImageResource(R$mipmap.ad_rotate);
                return;
            }
            return;
        }
        ImageView imageViewZ1 = z0();
        if (imageViewZ1 != null) {
            imageViewZ1.setImageResource(R$mipmap.ad_fullscreen);
        }
    }

    protected abstract AdCountDownView W();

    public final boolean X0(String scene, boolean z10) {
        Intrinsics.h(scene, "scene");
        String str = "zero_clock_timestamp_" + scene;
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        long j10 = bVar.b().getLong(str, 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z11 = jCurrentTimeMillis - j10 >= 86400000;
        if (z10 && z11) {
            bVar.b().putLong(str, k0.c(jCurrentTimeMillis));
        }
        return z11;
    }

    protected final int Y() {
        return ((Number) this.G.getValue()).intValue();
    }

    public final void Y1(Function0 callback) {
        Intrinsics.h(callback, "callback");
        this.f46597d = callback;
        if (this.f46602i && S0()) {
            W1("VideoStartBidScene", new Function0() {
                @Override
                public final Object invoke() {
                    return BaseVideoAdHelper.Z1();
                }
            }, new Function0() {
                @Override
                public final Object invoke() {
                    return BaseVideoAdHelper.a2(this.f46652a);
                }
            });
        } else {
            f1();
        }
    }

    protected final int Z() {
        return ((Number) this.F.getValue()).intValue();
    }

    protected final String b0() {
        return this.f46600g;
    }

    protected final void b1(String sceneId, Function0 function0, Function0 function1) {
        Context context;
        Intrinsics.h(sceneId, "sceneId");
        ViewGroup viewGroupH0 = h0();
        if (viewGroupH0 == null || (context = viewGroupH0.getContext()) == null) {
            return;
        }
        BiddingInterstitialManager biddingInterstitialManager = this.f46599f;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.U();
        }
        this.f46599f = null;
        LifecycleCoroutineScope lifecycleCoroutineScope = this.f46594a;
        if (lifecycleCoroutineScope != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScope, null, null, new BaseVideoAdHelper$loadLandPauseAd$1(context, this, sceneId, function0, function1, null), 3, null);
        }
    }

    protected final int c0() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("VideoEndBidScene");
        return ((jsonObjectB == null || (jsonElement = jsonObjectB.get("interval")) == null) ? 1440 : jsonElement.getAsInt()) * 60000;
    }

    protected final void c1(String sceneId, Function0 function0, Function0 function1) {
        Context context;
        Intrinsics.h(sceneId, "sceneId");
        ViewGroup viewGroupG0 = g0();
        if (viewGroupG0 == null || (context = viewGroupG0.getContext()) == null) {
            return;
        }
        BiddingNativeManager biddingNativeManager = this.f46598e;
        if (biddingNativeManager != null) {
            biddingNativeManager.U();
        }
        this.f46598e = null;
        LifecycleCoroutineScope lifecycleCoroutineScope = this.f46594a;
        if (lifecycleCoroutineScope != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScope, null, null, new BaseVideoAdHelper$loadNativeAd$1(context, this, sceneId, function0, function1, null), 3, null);
        }
    }

    protected final CountDownTimer d0() {
        return this.f46614u;
    }

    protected final void d2(Function0 callback) {
        Intrinsics.h(callback, "callback");
        boolean z10 = System.currentTimeMillis() - this.f46605l > ((long) U());
        if (this.f46603j && z10 && S0()) {
            W1("VideoEndBidScene", callback, new Function0() {
                @Override
                public final Object invoke() {
                    return BaseVideoAdHelper.e2(this.f46649a);
                }
            });
        } else {
            f1();
        }
    }

    protected abstract AdInterceptTimerView e0();

    public final void e1() {
        if (this.f46601h) {
            BiddingInterstitialManager.f40942t.a("LandscapePauseSceneNew", com.transsion.ad.strategy.c.f41178a.a(this.f46595b));
            return;
        }
        VideoFloatingView videoFloatingView = this.N;
        if (videoFloatingView != null) {
            videoFloatingView.hide();
        }
    }

    protected abstract NativeWrapperAdView f0();

    protected abstract ViewGroup g0();

    protected abstract ViewGroup h0();

    public final void h1() {
        this.f46617x = 0L;
        this.f46605l = 0L;
        this.f46615v = 0L;
        this.f46607n = 0;
    }

    protected final int i0() {
        return ((Number) this.L.getValue()).intValue();
    }

    public final String j0() {
        return this.f46595b;
    }

    protected final void j1(Function0 function0) {
        this.f46597d = function0;
    }

    protected abstract View k0();

    protected final int l0() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("VideoInterpolateBidScene");
        return ((jsonObjectB == null || (jsonElement = jsonObjectB.get("enterCountdown")) == null) ? 10 : jsonElement.getAsInt()) * 1000;
    }

    protected final void l1(boolean z10) {
        try {
            Result.Companion companion = Result.INSTANCE;
            if (z10) {
                q1();
                B1();
                K1(V(), true);
            } else {
                w1();
                r1();
                p1();
                x1();
                G1();
                K1(f0(), false);
                i1();
                m1();
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public abstract void l2();

    protected final int m0() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("VideoInterpolateBidScene");
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("frequency")) == null) {
            return 2;
        }
        return jsonElement.getAsInt();
    }

    protected final int n0() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("VideoInterpolateBidScene");
        return ((jsonObjectB == null || (jsonElement = jsonObjectB.get("interval")) == null) ? 15 : jsonElement.getAsInt()) * 60000;
    }

    protected final void n1(CountDownTimer countDownTimer) {
        this.f46614u = countDownTimer;
    }

    public final int o0() {
        return r0() - p0();
    }

    protected final void o1(boolean z10) {
        this.f46608o = z10;
    }

    protected final int p0() {
        return ((Number) this.I.getValue()).intValue();
    }

    protected final int q0() {
        return ((Number) this.J.getValue()).intValue();
    }

    protected final int r0() {
        return ((Number) this.H.getValue()).intValue();
    }

    protected final int s0() {
        return this.f46607n;
    }

    protected abstract ImageView t0();

    protected final void t1(int i10) {
        this.f46607n = i10;
    }

    protected final BiddingNativeManager u0() {
        return this.f46598e;
    }

    protected final void u1(BiddingNativeManager biddingNativeManager) {
        this.f46598e = biddingNativeManager;
    }

    protected final BiddingInterstitialManager v0() {
        return this.f46599f;
    }

    protected final void v1(boolean z10) {
        this.f46606m = z10;
    }

    protected final LifecycleCoroutineScope w0() {
        return this.f46594a;
    }

    protected final long x0() {
        return this.f46615v;
    }

    protected final int y0() {
        return this.f46609p;
    }

    protected final void y1(BiddingInterstitialManager biddingInterstitialManager) {
        this.f46599f = biddingInterstitialManager;
    }

    protected abstract ImageView z0();

    protected final void z1(boolean z10) {
        this.f46611r = z10;
    }
}
