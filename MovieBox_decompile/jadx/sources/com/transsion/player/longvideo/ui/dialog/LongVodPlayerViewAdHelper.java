package com.transsion.player.longvideo.ui.dialog;

import android.app.Application;
import android.content.Context;
import android.os.CountDownTimer;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import com.blankj.utilcode.util.Utils;
import com.cloud.hisavana.sdk.common.util.k0;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.bean.TAdErrorCode;
import com.noober.background.view.BLTextView;
import com.tencent.mmkv.MMKV;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.player.longvideo.R$string;
import com.transsion.player.longvideo.constants.LongVodContentType;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.player.longvideo.view.LongVodRewardInterceptView;
import com.transsion.postdetail.ad.AdInterceptTimerView;
import com.transsion.postdetail.ad.BaseVideoAdHelper;
import com.transsion.postdetail.ui.view.AdCountDownView;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.coroutines.t1;

public final class LongVodPlayerViewAdHelper extends BaseVideoAdHelper {
    private mn.j R;
    private ln.a S;
    private VideoDetailPlayBean T;
    private String U;
    private BiddingVideoManager W;
    private BiddingInterstitialManager X;
    private boolean Y;
    private boolean Z;

    private boolean f46321a0;

    private boolean f46322b0;

    private boolean f46323c0;

    private boolean f46324d0;

    private long f46325e0;

    private long f46326f0;

    private long f46327g0;

    private int f46328h0;

    private Function0 f46330j0;

    private Function1 f46331k0;

    private t1 f46338r0;

    private int f46339s0;

    private LongVodPlayerView f46341u0;
    private final String Q = "streamVideo";
    private final Lazy V = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return LongVodPlayerViewAdHelper.T4();
        }
    });

    private String f46329i0 = "";

    private final Lazy f46332l0 = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(LongVodPlayerViewAdHelper.B4(this.f46352a));
        }
    });

    private final Lazy f46333m0 = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(LongVodPlayerViewAdHelper.s4(this.f46353a));
        }
    });

    private final Lazy f46334n0 = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(LongVodPlayerViewAdHelper.z4(this.f46354a));
        }
    });

    private final Lazy f46335o0 = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(LongVodPlayerViewAdHelper.A4(this.f46355a));
        }
    });

    private final Lazy f46336p0 = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Boolean.valueOf(LongVodPlayerViewAdHelper.a4(this.f46356a));
        }
    });

    private final Lazy f46337q0 = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return Integer.valueOf(LongVodPlayerViewAdHelper.U4());
        }
    });

    private final a f46340t0 = new a();

    public static final class a extends oh.a {
        a() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            wf.a.C0922a.g(wf.a.f74274a, LongVodPlayerViewAdHelper.this.I3() + " --> rewardInterceptListener --> onError() --> 广告加载失败", false, 2, null);
            LongVodPlayerViewAdHelper.this.h4();
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            wf.a.C0922a.g(wf.a.f74274a, LongVodPlayerViewAdHelper.this.I3() + " --> rewardInterceptListener --> onLoad() --> 广告加载", false, 2, null);
            LongVodPlayerViewAdHelper.this.i4(biddingIntermediateMaterialBean);
        }

        @Override
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            wf.a.C0922a.g(wf.a.f74274a, LongVodPlayerViewAdHelper.this.I3() + " --> rewardInterceptListener --> onClosed() --> 广告关闭", false, 2, null);
            LongVodPlayerViewAdHelper.this.g4();
        }

        @Override
        public void n(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            wf.a.C0922a.g(wf.a.f74274a, LongVodPlayerViewAdHelper.this.I3() + " --> rewardInterceptListener --> onShow() --> Hi广告展示", false, 2, null);
            LongVodPlayerViewAdHelper.this.k4();
        }

        @Override
        public void o(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            wf.a.C0922a.g(wf.a.f74274a, LongVodPlayerViewAdHelper.this.I3() + " --> rewardInterceptListener --> onRewarded() --> 广告奖励", false, 2, null);
            LongVodPlayerViewAdHelper.this.j4();
        }

        @Override
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            wf.a.C0922a.g(wf.a.f74274a, LongVodPlayerViewAdHelper.this.I3() + " --> rewardInterceptListener --> onError() --> 广告展示失败", false, 2, null);
            LongVodPlayerViewAdHelper.this.l4();
        }
    }

    private final void A3() {
        LongVodRewardInterceptView longVodRewardInterceptView;
        mn.g bind;
        BLTextView bLTextView;
        View root;
        Context context;
        t1 t1Var = this.f46338r0;
        String string = null;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f46338r0 = null;
        this.f46339s0 = 0;
        mn.j jVar = this.R;
        if (jVar == null || (longVodRewardInterceptView = jVar.f66592v) == null || (bind = longVodRewardInterceptView.getBind()) == null || (bLTextView = bind.f66552h) == null) {
            return;
        }
        mn.j jVar2 = this.R;
        if (jVar2 != null && (root = jVar2.getRoot()) != null && (context = root.getContext()) != null) {
            string = context.getString(R$string.long_vod_reward_intercept_watch_ad);
        }
        bLTextView.setText(string);
    }

    public static final int A4(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper) {
        return longVodPlayerViewAdHelper.P3();
    }

    public static final int B4(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper) {
        return longVodPlayerViewAdHelper.J3();
    }

    public static final void C3(final LongVodPlayerViewAdHelper longVodPlayerViewAdHelper, View view) {
        longVodPlayerViewAdHelper.L(true, new Function0() {
            @Override
            public final Object invoke() {
                return LongVodPlayerViewAdHelper.D3(this.f46351a);
            }
        });
        longVodPlayerViewAdHelper.w4("click");
    }

    public static final Unit D3(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper) {
        longVodPlayerViewAdHelper.G4();
        longVodPlayerViewAdHelper.z3();
        return Unit.f64096a;
    }

    private final void E4() {
        mn.i iVar;
        AdInterceptTimerView adInterceptTimerView;
        wn.d bind;
        TextView textView;
        if (!this.f46323c0 || U0()) {
            F4(false);
            return;
        }
        long jO3 = ((long) O3()) - this.f46326f0;
        if (jO3 <= 0) {
            J4();
            return;
        }
        mn.j jVar = this.R;
        if (jVar != null && (iVar = jVar.f66587q) != null && (adInterceptTimerView = iVar.f66564c) != null && (bind = adInterceptTimerView.getBind()) != null && (textView = bind.f74336d) != null) {
            textView.setText(H3(jO3));
        }
        F4(true);
    }

    public final void F3() {
        BiddingInterstitialManager biddingInterstitialManager = this.X;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.U();
        }
        this.X = null;
    }

    public final void G3() {
        BiddingVideoManager biddingVideoManager = this.W;
        if (biddingVideoManager != null) {
            biddingVideoManager.U();
        }
        this.W = null;
    }

    public final void G4() {
        LongVodRewardInterceptView longVodRewardInterceptView;
        F1(false);
        this.f46323c0 = false;
        this.Y = true;
        mn.j jVar = this.R;
        if (jVar != null && (longVodRewardInterceptView = jVar.f66592v) != null) {
            uf.c.g(longVodRewardInterceptView);
        }
        F4(false);
        A3();
    }

    private final String H3(long j10) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long minutes = timeUnit.toMinutes(j10);
        long seconds = timeUnit.toSeconds(j10) % ((long) 60);
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String str = String.format(Locale.getDefault(), "%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(minutes), Long.valueOf(seconds)}, 2));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    public final void H4() {
        String str = this.f46329i0;
        if (Intrinsics.c(str, "StreamVideoInterceptRewarded")) {
            c4();
        } else if (Intrinsics.c(str, "StreamVideoInterceptInterstitial")) {
            b4();
        }
    }

    public final String I3() {
        String simpleName = LongVodPlayerViewAdHelper.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void I4(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        View root;
        Context context;
        mn.j jVar = this.R;
        if (jVar == null || (root = jVar.getRoot()) == null || (context = root.getContext()) == null) {
            return;
        }
        this.f46329i0 = "StreamVideoInterceptInterstitial";
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$showInterstitialAd$1$1(this, context, biddingIntermediateMaterialBean, null), 3, null);
        }
    }

    private final int J3() {
        JsonElement jsonElement;
        Subject subjectM;
        ln.a aVar = this.S;
        if (!((aVar == null || (subjectM = aVar.m()) == null) ? false : Intrinsics.c(subjectM.getIsCam(), Boolean.TRUE))) {
            JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("StreamVideoInterceptRewarded");
            if (jsonObjectB == null || (jsonElement = jsonObjectB.get("freeTimes")) == null) {
                return 1;
            }
            return jsonElement.getAsInt();
        }
        wj.h.f74282a.a(I3() + " --> getFreeTimesConfig() --> 枪版没有免费费次数");
        return 0;
    }

    private final void J4() {
        LongVodRewardInterceptView longVodRewardInterceptView;
        LongVodRewardInterceptView longVodRewardInterceptView2;
        mn.g bind;
        LinearLayout linearLayout;
        LongVodRewardInterceptView longVodRewardInterceptView3;
        mn.g bind2;
        Group group;
        LongVodRewardInterceptView longVodRewardInterceptView4;
        mn.g bind3;
        Group group2;
        BLTextView bLTextView;
        LongVodRewardInterceptView longVodRewardInterceptView5;
        mn.g bind4;
        Group group3;
        LongVodRewardInterceptView longVodRewardInterceptView6;
        mn.g bind5;
        Group group4;
        BLTextView bLTextView2;
        BLTextView bLTextView3;
        Subject subjectM;
        Subject subjectM2;
        LongVodRewardInterceptView longVodRewardInterceptView7;
        if (!this.f46323c0 || this.f46326f0 < O3()) {
            return;
        }
        F1(true);
        Function0 function0 = this.f46330j0;
        if (function0 != null) {
            function0.invoke();
        }
        mn.j jVar = this.R;
        if (jVar != null && (longVodRewardInterceptView7 = jVar.f66592v) != null) {
            uf.c.k(longVodRewardInterceptView7);
        }
        F4(false);
        u4();
        mn.j jVar2 = this.R;
        if (jVar2 != null && (longVodRewardInterceptView = jVar2.f66592v) != null) {
            wj.h hVar = wj.h.f74282a;
            String strI3 = I3();
            ln.a aVar = this.S;
            hVar.a(strI3 + " --> showRewardInterceptView() --> mBean?.subject?.isCam = " + ((aVar == null || (subjectM2 = aVar.m()) == null) ? null : subjectM2.getIsCam()));
            ln.a aVar2 = this.S;
            if ((aVar2 == null || (subjectM = aVar2.m()) == null) ? false : Intrinsics.c(subjectM.getIsCam(), Boolean.FALSE)) {
                if (T3() > 0) {
                    mn.g bind6 = longVodRewardInterceptView.getBind();
                    if (bind6 != null && (bLTextView3 = bind6.f66552h) != null) {
                        bLTextView3.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public final void onClick(View view) {
                                LongVodPlayerViewAdHelper.K4(this.f46357a, view);
                            }
                        });
                    }
                    Q4();
                } else {
                    mn.g bind7 = longVodRewardInterceptView.getBind();
                    if (bind7 != null && (bLTextView = bind7.f66552h) != null) {
                        bLTextView.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public final void onClick(View view) {
                                LongVodPlayerViewAdHelper.L4(this.f46358a, view);
                            }
                        });
                    }
                }
                mn.g bind8 = longVodRewardInterceptView.getBind();
                if (bind8 != null && (bLTextView2 = bind8.f66548d) != null) {
                    bLTextView2.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            LongVodPlayerViewAdHelper.M4(this.f46359a, view);
                        }
                    });
                }
                mn.j jVar3 = this.R;
                if (jVar3 != null && (longVodRewardInterceptView6 = jVar3.f66592v) != null && (bind5 = longVodRewardInterceptView6.getBind()) != null && (group4 = bind5.f66546b) != null) {
                    group4.setVisibility(0);
                }
                mn.j jVar4 = this.R;
                if (jVar4 != null && (longVodRewardInterceptView5 = jVar4.f66592v) != null && (bind4 = longVodRewardInterceptView5.getBind()) != null && (group3 = bind4.f66547c) != null) {
                    group3.setVisibility(8);
                }
            } else {
                mn.j jVar5 = this.R;
                if (jVar5 != null && (longVodRewardInterceptView4 = jVar5.f66592v) != null && (bind3 = longVodRewardInterceptView4.getBind()) != null && (group2 = bind3.f66546b) != null) {
                    group2.setVisibility(8);
                }
                mn.j jVar6 = this.R;
                if (jVar6 != null && (longVodRewardInterceptView3 = jVar6.f66592v) != null && (bind2 = longVodRewardInterceptView3.getBind()) != null && (group = bind2.f66547c) != null) {
                    group.setVisibility(0);
                }
                mn.j jVar7 = this.R;
                if (jVar7 != null && (longVodRewardInterceptView2 = jVar7.f66592v) != null && (bind = longVodRewardInterceptView2.getBind()) != null && (linearLayout = bind.f66553i) != null) {
                    linearLayout.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            LongVodPlayerViewAdHelper.O4(this.f46347a, view);
                        }
                    });
                }
            }
        }
        x4("browse", true);
    }

    private final int K3() {
        return ((Number) this.f46333m0.getValue()).intValue();
    }

    public static final void K4(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper, View view) {
        longVodPlayerViewAdHelper.A3();
        longVodPlayerViewAdHelper.H4();
        longVodPlayerViewAdHelper.x4("click", true);
    }

    private final int L3() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("StreamVideoInterceptRewarded");
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("playedPercent")) == null) {
            return 10;
        }
        return jsonElement.getAsInt();
    }

    public static final void L4(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper, View view) {
        longVodPlayerViewAdHelper.H4();
        longVodPlayerViewAdHelper.x4("click", true);
    }

    private final int M3() {
        return ((Number) this.f46334n0.getValue()).intValue();
    }

    public static final void M4(final LongVodPlayerViewAdHelper longVodPlayerViewAdHelper, View view) {
        longVodPlayerViewAdHelper.L(true, new Function0() {
            @Override
            public final Object invoke() {
                return LongVodPlayerViewAdHelper.N4(this.f46348a);
            }
        });
        longVodPlayerViewAdHelper.x4("click", false);
    }

    private final int N3() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("StreamVideoInterceptRewarded");
        return ((jsonObjectB == null || (jsonElement = jsonObjectB.get("interceptDuration")) == null) ? 10 : jsonElement.getAsInt()) * 60000;
    }

    public static final Unit N4(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper) {
        longVodPlayerViewAdHelper.G4();
        longVodPlayerViewAdHelper.z3();
        return Unit.f64096a;
    }

    private final int O3() {
        return ((Number) this.f46335o0.getValue()).intValue();
    }

    public static final void O4(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper, View view) {
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = longVodPlayerViewAdHelper.w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$showRewardInterceptView$1$4$1(longVodPlayerViewAdHelper, null), 3, null);
        }
    }

    private final int P3() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("StreamVideoInterceptRewarded");
        return ((jsonObjectB == null || (jsonElement = jsonObjectB.get("interceptProgress")) == null) ? 5 : jsonElement.getAsInt()) * 60000;
    }

    public final void P4(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        View root;
        Context context;
        mn.j jVar = this.R;
        if (jVar == null || (root = jVar.getRoot()) == null || (context = root.getContext()) == null) {
            return;
        }
        this.f46329i0 = "StreamVideoInterceptRewarded";
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$showRewardedAd$1$1(this, context, biddingIntermediateMaterialBean, null), 3, null);
        }
    }

    private final int Q3() {
        return ((Number) this.f46332l0.getValue()).intValue();
    }

    private final void Q4() {
        t1 t1Var = this.f46338r0;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f46339s0 = T3();
        R4();
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        this.f46338r0 = lifecycleCoroutineScopeW0 != null ? kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$startWatchAdCountdown$1(this, null), 3, null) : null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object R3(Continuation continuation) {
        LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1 longVodPlayerViewAdHelper$getVideoDetailPlayBean$1;
        LongVodPlayerViewAdHelper longVodPlayerViewAdHelper;
        ln.a aVar;
        if (continuation instanceof LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1) {
            longVodPlayerViewAdHelper$getVideoDetailPlayBean$1 = (LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1) continuation;
            int i10 = longVodPlayerViewAdHelper$getVideoDetailPlayBean$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                longVodPlayerViewAdHelper$getVideoDetailPlayBean$1.label = i10 - Integer.MIN_VALUE;
            } else {
                longVodPlayerViewAdHelper$getVideoDetailPlayBean$1 = new LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1(this, continuation);
            }
        } else {
            longVodPlayerViewAdHelper$getVideoDetailPlayBean$1 = new LongVodPlayerViewAdHelper$getVideoDetailPlayBean$1(this, continuation);
        }
        Object objL = longVodPlayerViewAdHelper$getVideoDetailPlayBean$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = longVodPlayerViewAdHelper$getVideoDetailPlayBean$1.label;
        if (i11 == 0) {
            ResultKt.b(objL);
            VideoDetailPlayBean videoDetailPlayBean = this.T;
            if (videoDetailPlayBean != null) {
                return videoDetailPlayBean;
            }
            ln.a aVar2 = this.S;
            if (aVar2 != null) {
                VideoDetailPlayDao videoDetailPlayDaoS3 = S3();
                String strO = aVar2.o();
                int iL = aVar2.l();
                int iE = aVar2.e();
                longVodPlayerViewAdHelper$getVideoDetailPlayBean$1.L$0 = this;
                longVodPlayerViewAdHelper$getVideoDetailPlayBean$1.label = 1;
                objL = videoDetailPlayDaoS3.l(strO, iL, iE, longVodPlayerViewAdHelper$getVideoDetailPlayBean$1);
                if (objL == objF) {
                    return objF;
                }
                longVodPlayerViewAdHelper = this;
            }
            if (this.T == null && (aVar = this.S) != null) {
                this.T = new VideoDetailPlayBean(aVar.o(), "", aVar.e(), aVar.l(), 0L, null, null, null, null, 0L, null, null, null, null, null, false, null, null, null, 0L, null, null, null, false, false, false, null, 134217712, null);
            }
            return this.T;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        longVodPlayerViewAdHelper = (LongVodPlayerViewAdHelper) longVodPlayerViewAdHelper$getVideoDetailPlayBean$1.L$0;
        ResultKt.b(objL);
        longVodPlayerViewAdHelper.T = (VideoDetailPlayBean) objL;
        if (this.T == null) {
            this.T = new VideoDetailPlayBean(aVar.o(), "", aVar.e(), aVar.l(), 0L, null, null, null, null, 0L, null, null, null, null, null, false, null, null, null, 0L, null, null, null, false, false, false, null, 134217712, null);
        }
        return this.T;
    }

    public final void R4() {
        LongVodRewardInterceptView longVodRewardInterceptView;
        mn.g bind;
        BLTextView bLTextView;
        View root;
        Context context;
        mn.j jVar = this.R;
        if (jVar == null || (longVodRewardInterceptView = jVar.f66592v) == null || (bind = longVodRewardInterceptView.getBind()) == null || (bLTextView = bind.f66552h) == null) {
            return;
        }
        mn.j jVar2 = this.R;
        bLTextView.setText((jVar2 == null || (root = jVar2.getRoot()) == null || (context = root.getContext()) == null) ? null : context.getString(R$string.long_vod_reward_intercept_watch_ad_countdown, Integer.valueOf(this.f46339s0)));
    }

    public final VideoDetailPlayDao S3() {
        return (VideoDetailPlayDao) this.V.getValue();
    }

    public final void S4() {
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$updateRewardState$1(this, null), 3, null);
        }
    }

    private final int T3() {
        return ((Number) this.f46337q0.getValue()).intValue();
    }

    public static final VideoDetailPlayDao T4() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public static final int U4() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("StreamVideoInterceptRewarded");
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("countdown")) == null) {
            return 5;
        }
        return jsonElement.getAsInt();
    }

    public final void W3(ln.a aVar) {
        LongVodRewardInterceptView longVodRewardInterceptView;
        F1(false);
        this.f46324d0 = false;
        mn.j jVar = this.R;
        if (jVar != null && (longVodRewardInterceptView = jVar.f66592v) != null) {
            uf.c.g(longVodRewardInterceptView);
        }
        if (Z3()) {
            this.f46323c0 = false;
            return;
        }
        if (ij.o.f62115a.g() || ij.g.f62108a.b()) {
            this.f46323c0 = false;
            return;
        }
        this.f46325e0 = aVar.k();
        this.f46326f0 = aVar.k();
        VideoDetailPlayBean videoDetailPlayBean = this.T;
        this.Y = videoDetailPlayBean != null ? videoDetailPlayBean.getRewardUnlock() : false;
        VideoDetailPlayBean videoDetailPlayBean2 = this.T;
        this.Z = videoDetailPlayBean2 != null ? videoDetailPlayBean2.getRewardPlayed() : false;
        VideoDetailPlayBean videoDetailPlayBean3 = this.T;
        this.f46321a0 = videoDetailPlayBean3 != null ? videoDetailPlayBean3.getRewardFree() : false;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "VideoAdHelper", "---> initRewardInterceptVariables --> startPlayProgress:" + this.f46325e0 + "，isRewardUnlock:" + this.Y + ", rewardUnlockFreeTimes:" + Q3(), false, 4, null);
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        MMKV mmkvB = bVar.b();
        String str = this.Q;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("zero_clock_timestamp_");
        sb2.append(str);
        long j10 = mmkvB.getLong(sb2.toString(), 0L);
        if (X0(this.Q, false)) {
            this.f46328h0 = 0;
            boolean z10 = Q3() == 0 && !this.Y;
            this.f46323c0 = z10;
            this.Z = z10;
            this.f46321a0 = !z10;
            wf.a.C0922a.f(c0922a, "VideoAdHelper", "---> FreeTimes Reset", false, 4, null);
            bVar.b().putInt("video_played_count_per_day", 0);
        } else {
            int i10 = bVar.b().getInt("video_played_count_per_day", 0);
            this.f46328h0 = i10;
            if (i10 >= Q3()) {
                this.f46323c0 = !this.Y;
            }
            VideoDetailPlayBean videoDetailPlayBean4 = this.T;
            if (Math.abs(k0.c(videoDetailPlayBean4 != null ? videoDetailPlayBean4.getTimeStamp() : 0L) - j10) >= 86400000) {
                boolean z11 = this.f46323c0;
                this.Z = z11;
                this.f46321a0 = !z11;
            } else if (this.f46321a0) {
                this.f46323c0 = false;
            }
            wf.a.C0922a.f(c0922a, "VideoAdHelper", "---> videoPlayedTimesPerDay:" + this.f46328h0 + ", isRewardPlayed:" + this.Z + ", isRewardFree:" + this.f46321a0, false, 4, null);
        }
        VideoDetailPlayBean videoDetailPlayBean5 = this.T;
        if (videoDetailPlayBean5 == null || videoDetailPlayBean5.getRewardFree() != this.f46321a0) {
            S4();
        }
    }

    public final void X3() {
        View root;
        Context context;
        m4();
        F3();
        fh.b.a aVar = fh.b.f60176a;
        mn.j jVar = this.R;
        aVar.e((jVar == null || (root = jVar.getRoot()) == null || (context = root.getContext()) == null) ? null : context.getString(R$string.long_vod_reward_intercept_skip));
    }

    private final boolean Z3() {
        return ((Boolean) this.f46336p0.getValue()).booleanValue();
    }

    public static final boolean a4(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper) {
        return longVodPlayerViewAdHelper.L0("StreamVideoInterceptRewarded").length() > 0 || longVodPlayerViewAdHelper.Y3(BaseVideoAdHelper.P.a(), longVodPlayerViewAdHelper.j0());
    }

    private final void b4() {
        View root;
        Context context;
        mn.j jVar = this.R;
        if (jVar == null || (root = jVar.getRoot()) == null || (context = root.getContext()) == null) {
            return;
        }
        this.f46329i0 = "StreamVideoInterceptInterstitial";
        BiddingInterstitialManager biddingInterstitialManager = this.X;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.U();
        }
        this.X = null;
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$loadInterstitialAd$1(context, this, null), 3, null);
        }
    }

    private final void c4() {
        mn.j jVar;
        View root;
        Context context;
        if (Z3() || (jVar = this.R) == null || (root = jVar.getRoot()) == null || (context = root.getContext()) == null) {
            return;
        }
        this.f46329i0 = "StreamVideoInterceptRewarded";
        BiddingVideoManager biddingVideoManager = this.W;
        if (biddingVideoManager != null) {
            biddingVideoManager.U();
        }
        this.W = null;
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$loadRewardedAd$1(context, this, null), 3, null);
        }
    }

    public static final Unit e4(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper) {
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = longVodPlayerViewAdHelper.w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$onCompletion$1$1(longVodPlayerViewAdHelper, null), 3, null);
        }
        return Unit.f64096a;
    }

    public final void g4() {
        H(false);
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$onRewardInterceptAdClose$1(this, null), 3, null);
        }
    }

    public final void h4() {
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$onRewardInterceptAdError$1(this, null), 3, null);
        }
    }

    public final void i4(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$onRewardInterceptAdLoad$1(this, biddingIntermediateMaterialBean, null), 3, null);
        }
    }

    public final void j4() {
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$onRewardInterceptAdRewarded$1(this, null), 3, null);
        }
    }

    public final void k4() {
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$onRewardInterceptAdShow$1(this, null), 3, null);
        }
    }

    public final void l4() {
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$onRewardInterceptAdShowError$1(this, null), 3, null);
        }
    }

    public final void m4() {
        G4();
        S4();
        H(false);
        z3();
    }

    private final void r4() {
        t1 t1Var = this.f46338r0;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f46338r0 = null;
    }

    public static final int s4(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper) {
        return longVodPlayerViewAdHelper.L3();
    }

    public final void t4() {
        this.f46329i0 = "StreamVideoInterceptInterstitial";
        BiddingInterstitialManager.f40942t.a("StreamVideoInterceptInterstitial", com.transsion.ad.strategy.c.f41178a.a(j0()));
    }

    private final void u4() {
        if (Z3()) {
            return;
        }
        this.f46329i0 = "StreamVideoInterceptRewarded";
        BiddingVideoManager.f41022t.a("StreamVideoInterceptRewarded", com.transsion.ad.strategy.c.f41178a.a(j0()));
    }

    private final void v4(String str, Map map) {
        if (Intrinsics.c(str, "browse")) {
            qi.h hVar = qi.h.f69682a;
            String str2 = this.U;
            hVar.q(str2 != null ? str2 : "LongVodPlayer", str, map);
        } else if (Intrinsics.c(str, "click")) {
            qi.h hVar2 = qi.h.f69682a;
            String str3 = this.U;
            hVar2.q(str3 != null ? str3 : "LongVodPlayer", str, map);
        }
    }

    private final void w4(String str) {
        if (this.f46323c0) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("scene_id", "StreamVideoInterceptRewarded");
            linkedHashMap.put("module_name", "stream_rewarded_countdown_timer");
            if (Intrinsics.c(str, "browse")) {
                linkedHashMap.put(EventConstants.KEY_ACTION, "show_view");
            } else if (Intrinsics.c(str, "click")) {
                linkedHashMap.put(EventConstants.KEY_ACTION, "click_member");
            }
            v4(str, linkedHashMap);
        }
    }

    private final void x4(String str, boolean z10) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("scene_id", "StreamVideoInterceptRewarded");
        linkedHashMap.put("module_name", "stream_rewarded_intercept_view");
        if (Intrinsics.c(str, "browse")) {
            linkedHashMap.put(EventConstants.KEY_ACTION, "show_view");
        } else if (Intrinsics.c(str, "click")) {
            linkedHashMap.put(EventConstants.KEY_ACTION, z10 ? "click_ad" : "click_member");
        }
        v4(str, linkedHashMap);
    }

    private final void y4() {
        if (!U0() || this.f46339s0 <= 0) {
            return;
        }
        t1 t1Var = this.f46338r0;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        this.f46338r0 = lifecycleCoroutineScopeW0 != null ? kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$resumeWatchAdCountdown$1(this, null), 3, null) : null;
    }

    public final void z3() {
        Function1 function1 = this.f46331k0;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(this.f46322b0));
        }
        if (this.f46322b0) {
            J1(System.currentTimeMillis());
        }
    }

    public static final int z4(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper) {
        return longVodPlayerViewAdHelper.N3();
    }

    public final void B3(long j10, Function0 function0, Function0 function1, Function1 function2) {
        function0.invoke();
    }

    @Override
    protected ViewGroup C0() {
        return null;
    }

    public final void C4(LongVodContentType longVodContentType, ln.a aVar) {
    }

    public final void D4(LongVodPlayerView view) {
        Intrinsics.h(view, "view");
        this.f46341u0 = view;
    }

    public final void E3() {
        BiddingNativeManager biddingNativeManagerU0 = u0();
        if (biddingNativeManagerU0 != null) {
            biddingNativeManagerU0.U();
        }
        this.R = null;
        BiddingInterstitialManager biddingInterstitialManagerV0 = v0();
        if (biddingInterstitialManagerV0 != null) {
            biddingInterstitialManagerV0.U();
        }
        y1(null);
        BiddingVideoManager biddingVideoManager = this.W;
        if (biddingVideoManager != null) {
            biddingVideoManager.U();
        }
        this.W = null;
        BiddingInterstitialManager biddingInterstitialManager = this.X;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.U();
        }
        this.X = null;
        Q();
        CountDownTimer countDownTimerD0 = d0();
        if (countDownTimerD0 != null) {
            countDownTimerD0.cancel();
        }
        n1(null);
        A3();
    }

    public final void F4(boolean z10) {
    }

    @Override
    public void H(boolean z10) {
    }

    public final void U3(boolean z10) {
    }

    @Override
    protected NativeWrapperAdView V() {
        mn.j jVar = this.R;
        if (jVar != null) {
            return jVar.f66573c;
        }
        return null;
    }

    public final void V3(String str, mn.j jVar, String str2, Function1 function1) {
        this.U = str;
        this.R = jVar;
    }

    @Override
    protected AdCountDownView W() {
        mn.j jVar = this.R;
        if (jVar != null) {
            return jVar.f66574d;
        }
        return null;
    }

    public final boolean Y3(String str, String str2) {
        return false;
    }

    public final void d4(Function0 function0) {
        function0.invoke();
    }

    @Override
    protected AdInterceptTimerView e0() {
        mn.j jVar = this.R;
        if (jVar != null) {
            return jVar.f66576f;
        }
        return null;
    }

    @Override
    protected NativeWrapperAdView f0() {
        mn.j jVar = this.R;
        if (jVar != null) {
            return jVar.f66577g;
        }
        return null;
    }

    public final void f4() {
        j1(null);
        P();
        E1(0);
    }

    @Override
    protected ViewGroup g0() {
        mn.j jVar = this.R;
        if (jVar != null) {
            return jVar.f66578h;
        }
        return null;
    }

    @Override
    protected ViewGroup h0() {
        mn.j jVar = this.R;
        if (jVar != null) {
            return jVar.f66579i;
        }
        return null;
    }

    @Override
    protected View k0() {
        return null;
    }

    @Override
    public void l2() {
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LongVodPlayerViewAdHelper$updateAdStartLastShowTime$1(this, null), 3, null);
        }
    }

    public final void n4(LongVodUiType longVodUiType) {
    }

    public final void o4() {
        J1(System.currentTimeMillis());
        E4();
        C1(false);
        O();
    }

    public final void p4() {
    }

    public final void q4() {
    }

    @Override
    protected ImageView t0() {
        mn.j jVar = this.R;
        if (jVar != null) {
            return jVar.f66584n;
        }
        return null;
    }

    public final void y3(long j10) {
    }

    @Override
    protected ImageView z0() {
        mn.j jVar = this.R;
        if (jVar != null) {
            return jVar.f66593w;
        }
        return null;
    }
}
