package com.cloud.hisavana.sdk;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.api.view.AdBadgeView;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.AdDisclaimerView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.common.activity.HisavanaSplashActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.widget.CountTimeView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.google.android.exoplayer2.PlaybackException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class e1 extends F {
    protected int A;
    private boolean B;
    private boolean C;
    private Float D;
    private final Runnable E;

    private final String f21800i;

    private CountTimeView f21801j;

    private ViewGroup f21802k;

    private View f21803l;

    private b2 f21804m;

    private Context f21805n;

    protected volatile AdsDTO f21806o;

    private boolean f21807p;

    private Handler f21808q;

    private long f21809r;

    private long f21810s;

    private CopyOnWriteArrayList f21811t;

    private AdChoicesView f21812u;

    private LinearLayout f21813v;

    private StoreMarkView f21814w;

    private AdDisclaimerView f21815x;

    private h7.d f21816y;

    private PopupWindow f21817z;

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            b4.b().d("TranSplash", "closeAdRunnable all time is end");
            e1.this.z0();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            if (e1.this.f21801j != null) {
                e1.this.f21801j.setVisibility(0);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override
        public void onClick(View view) {
            J0.k(com.cloud.sdk.commonutil.util.e.a(), e1.this.f21806o);
            if (e1.this.f21806o == null || e1.this.f21806o.isOfflineAd() || e1.this.f20888e == null) {
                return;
            }
            e1.this.f20888e.m();
            e1.this.f20888e.k(e1.this.f21806o);
        }
    }

    public class e extends c4 {
        public e(AdsDTO adsDTO) {
            super(adsDTO);
        }

        @Override
        public void d() {
            super.d();
        }

        @Override
        public void e(boolean z10) {
            super.e(z10);
            b4.b().d("TranSplash", "onCompanion");
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            b4.b().d("TranSplash", "onIsPlayingChanged isPLaying " + z10);
            super.onIsPlayingChanged(z10);
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            b4.b().d("TranSplash", "onPlayerError");
            super.onPlayerError(playbackException);
            if (e1.this.f20888e != null) {
                e1.this.B0();
                e1.this.f20888e.t(playbackException == null ? TaErrorCode.ERROR_SHOW_NETWORK_NOT_CONNECTED : new TaErrorCode(playbackException.errorCode, playbackException.getMessage()), e1.this);
            }
        }
    }

    public e1(p3 p3Var) {
        super(p3Var);
        this.f21804m = null;
        this.f21805n = null;
        this.f21809r = 10000L;
        this.f21811t = new CopyOnWriteArrayList();
        this.B = false;
        this.C = false;
        this.E = new a();
        this.f21800i = DeviceUtil.o();
    }

    public void N() {
        if (this.C) {
            return;
        }
        try {
            com.cloud.sdk.commonutil.util.k.a(this.f21812u);
            b2 b2Var = this.f21804m;
            if (b2Var != null) {
                b2Var.b();
            }
            CountTimeView countTimeView = this.f21801j;
            if (countTimeView != null) {
                countTimeView.cancel();
                this.f21801j.setCountDownTimerListener(null);
                this.f21801j = null;
            }
            ViewGroup viewGroup = this.f21802k;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
            }
            this.f21802k = null;
            this.f21812u = null;
            this.f21815x = null;
            LinearLayout linearLayout = this.f21813v;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
            }
            this.f21813v = null;
            StoreMarkView storeMarkView = this.f21814w;
            if (storeMarkView != null) {
                storeMarkView.removeAllViews();
            }
            this.f21814w = null;
            View view = this.f21803l;
            if (view != null && (view.getParent() instanceof ViewGroup)) {
                ((ViewGroup) this.f21803l.getParent()).removeView(this.f21803l);
            }
            this.f21803l = null;
            S();
            b4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "TranSplash，destroy");
            B0();
            h7.d dVar = this.f21816y;
            if (dVar != null) {
                dVar.f();
                this.f21816y = null;
            }
            PopupWindow popupWindow = this.f21817z;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.f21817z = null;
            }
            this.f21805n = null;
            this.C = true;
        } catch (Throwable unused) {
        }
    }

    private void V(long j10) {
        this.f21810s = System.currentTimeMillis();
        if (this.f21808q == null) {
            this.f21808q = new Handler(Looper.getMainLooper());
        }
        this.f21808q.postDelayed(this.E, j10);
        b4.b().d("TranSplash", "closeAdDelay " + j10);
    }

    private void W(Context context) {
        this.f21804m = new b2(this);
        this.f21805n = context;
    }

    private void X(View view) {
        if (this.f21802k == null) {
            c0(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
            b4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "bg view is null");
            return;
        }
        if (this.f21806o == null) {
            c0(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            b4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "ad data is null");
            return;
        }
        b4.b().d("TranSplash", "fillSplash renderView " + view);
        this.f21806o.setMaterialStyle("K01");
        this.f21802k.addView(view, new RelativeLayout.LayoutParams(-1, -1));
        Z(null);
        w0();
    }

    private void Y(View view, String str) {
        if (this.f21802k == null) {
            c0(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
            b4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "bg view is null");
            return;
        }
        if (this.f21806o == null) {
            c0(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            b4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "ad data is null");
            return;
        }
        b4.b().d("TranSplash", "fillSplash renderView " + view);
        try {
            this.f21806o.setMaterialStyle("K02");
            View viewInflate = LayoutInflater.from(this.f21802k.getContext()).inflate(R$layout.splash_style_k02_layout, this.f21802k, false);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.f21805n.getResources().getDimensionPixelOffset(R$dimen.hisavana_ad_dimen_180), this.f21805n.getResources().getDimensionPixelOffset(R$dimen.hisavana_ad_dimen_400));
            ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(R$id.iv_main_image);
            viewGroup.addView(view, layoutParams);
            Z(viewGroup);
            NativeBean nativeObject = this.f21806o.getNativeObject();
            ImageView imageView = (ImageView) viewInflate.findViewById(R$id.ivIcon);
            if (this.f21806o.getSource() == 4) {
                DownLoadRequest.n(this.f21806o.getLogoUrl(), this.f21806o, null, imageView);
            } else if (nativeObject != null) {
                DownLoadRequest.o(nativeObject.getLogoUrl(), this.f21806o, 1, null, imageView);
            }
            TextView textView = (TextView) viewInflate.findViewById(R$id.tvName);
            TextView textView2 = (TextView) viewInflate.findViewById(R$id.tvDescription);
            TextView textView3 = (TextView) viewInflate.findViewById(R$id.tvBtn);
            if (nativeObject != null) {
                textView.setText(nativeObject.getTitleTxt());
                textView2.setText(str + " · " + nativeObject.getDescriptionTxt());
                textView3.setText(nativeObject.getButtonTxt(this.f21806o.getInstallApk()));
            }
            if (com.cloud.hisavana.sdk.common.util.h0.a(this.f21806o)) {
                StoreMarkView storeMarkView = (StoreMarkView) viewInflate.findViewById(R$id.ps_mark_view);
                this.f21814w = storeMarkView;
                if (storeMarkView != null) {
                    storeMarkView.setVisibility(0);
                    this.f21814w.setTextSize(8.0f);
                    this.f21814w.setTextColor(-8882056);
                    this.f21814w.attachInfo(this.f21806o);
                }
            }
            this.f21802k.addView(viewInflate);
        } catch (Throwable unused) {
        }
    }

    private void Z(ViewGroup viewGroup) {
        if (this.f21806o == null || this.f21802k == null || this.f21805n == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.f21802k.getLayoutDirection() == 0) {
            layoutParams.setMarginEnd(this.f21805n.getResources().getDimensionPixelOffset(R$dimen.dimens_16));
        } else {
            layoutParams.setMarginStart(this.f21805n.getResources().getDimensionPixelOffset(R$dimen.dimens_16));
        }
        if (this.f21803l == null) {
            layoutParams.bottomMargin = this.f21805n.getResources().getDimensionPixelOffset(R$dimen.dimens_82);
        } else {
            layoutParams.bottomMargin = this.f21805n.getResources().getDimensionPixelOffset(R$dimen.dimens_48);
        }
        layoutParams.addRule(12);
        layoutParams.addRule(21);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.f21805n).inflate(R$layout.hs_include_ad_flag, this.f21802k, false);
        this.f21813v = linearLayout;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setId(View.generateViewId());
        this.f21812u = (AdChoicesView) this.f21813v.findViewById(R$id.ad_choices_view);
        AdBadgeView adBadgeView = (AdBadgeView) this.f21813v.findViewById(R$id.ad_badge_view);
        AdCloseView adCloseView = (AdCloseView) this.f21813v.findViewById(R$id.ad_close_view);
        b0(this.f21812u);
        if (adBadgeView != null) {
            adBadgeView.setDisplayStyle(this.f21806o.getDisplayRule(), com.cloud.hisavana.sdk.common.util.e0.c(this.f21806o));
        }
        if (adCloseView != null) {
            adCloseView.setDisplayStyle(this.f21806o.getDisplayRule(), AdCloseView.CloseImageType.EXPAND);
            s2.p().f(this.f21805n, adCloseView, this, this.f21806o);
        }
        if (viewGroup == null) {
            this.f21802k.addView(this.f21813v, layoutParams);
            return;
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(12);
        layoutParams2.addRule(20);
        this.f21813v.setLayoutParams(layoutParams2);
        viewGroup.addView(this.f21813v);
    }

    private void b0(AdChoicesView adChoicesView) {
        if (adChoicesView == null) {
            return;
        }
        if (this.f21806o != null) {
            this.f21806o.setACReady(Boolean.TRUE);
        }
        if (this.f21806o.getSource() == 4) {
            DownLoadRequest.n(this.f21806o.getAdChoiceImageUrl(), this.f21806o, null, adChoicesView);
        } else {
            DownLoadRequest.o(this.f21806o.getAdChoiceImageUrl(), this.f21806o, 3, null, adChoicesView);
        }
        adChoicesView.setOnClickListener(new c());
    }

    public void f0(String str, String str2, String str3) {
        h7.d dVarI = new h7.d(this.f21802k).j(str).h(str2).i(str3, null);
        this.f21816y = dVarI;
        dVarI.k();
    }

    private void v0() {
        ViewParent parent;
        int i10;
        if (this.f21802k == null || this.f21803l == null || this.f21806o.isInteractiveAd() || (parent = this.f21802k.getParent()) == null) {
            return;
        }
        int iJ = k7.c.j();
        if (iJ > 0) {
            Float f10 = this.D;
            float fFloatValue = f10 != null ? f10.floatValue() : 0.14f;
            b4.b().i("TranSplash", "ssp sdk addLogoLayout heightRatio = " + fFloatValue);
            i10 = (int) (((float) iJ) * fFloatValue);
        } else {
            i10 = 0;
        }
        if (i10 == 0) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, 0, 0, i10);
        this.f21802k.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, i10);
        layoutParams2.addRule(12);
        if (this.f21803l.getParent() != null) {
            ((ViewGroup) this.f21803l.getParent()).removeView(this.f21803l);
        }
        ((ViewGroup) parent).addView(this.f21803l, layoutParams2);
    }

    private void w0() {
        if (this.f21802k == null || !com.cloud.hisavana.sdk.common.util.h0.a(this.f21806o) || this.f21806o == null) {
            return;
        }
        StoreMarkView storeMarkView = new StoreMarkView(this.f21805n);
        this.f21814w = storeMarkView;
        storeMarkView.setTextSize(8.0f);
        this.f21814w.setTextColor(-1);
        this.f21814w.setVisibility(0);
        this.f21814w.attachInfo(this.f21806o);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = this.f21805n.getResources().getDimensionPixelOffset(R$dimen.dimens_16);
        layoutParams.addRule(20);
        LinearLayout linearLayout = this.f21813v;
        if (linearLayout == null || linearLayout.getParent() == null) {
            layoutParams.addRule(12);
        } else {
            layoutParams.addRule(8, this.f21813v.getId());
        }
        this.f21802k.addView(this.f21814w, layoutParams);
    }

    private void x0() {
        if (this.f21806o == null || this.f21806o.getDisplayRule() != Constants.AdDisplayRule.RU || this.f21802k == null || this.f21805n == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f21805n.getResources().getDimensionPixelOffset(R$dimen.ad_disclaimer_height));
        layoutParams.addRule(12);
        AdDisclaimerView adDisclaimerView = new AdDisclaimerView(this.f21805n);
        this.f21802k.addView(adDisclaimerView, layoutParams);
        adDisclaimerView.setDisplayStyle(this.f21806o.getDisplayRule(), com.cloud.hisavana.sdk.common.util.e0.f(this.f21806o));
        adDisclaimerView.updateHeightWith(com.cloud.hisavana.sdk.common.util.e0.e(this.f21806o), this.f21802k.getHeight());
        adDisclaimerView.setListener(new AdDisclaimerView.b() {
            @Override
            public final void a(String str, String str2, String str3) {
                this.f22073a.f0(str, str2, str3);
            }
        });
        this.f21815x = adDisclaimerView;
    }

    private void y0() {
        VastData videoInfo;
        Integer duration;
        if (this.f21802k == null || this.f21805n == null) {
            return;
        }
        this.f21801j = new CountTimeView(this.f21805n);
        Integer showTime = this.f21806o.getShowTime();
        if (this.f21806o.isVastTypeAd() && (videoInfo = this.f21806o.getVideoInfo()) != null && (duration = videoInfo.getDuration()) != null && duration.intValue() > 1 && duration.intValue() <= 5) {
            showTime = Integer.valueOf(duration.intValue() - 1);
        }
        this.f21801j.setStartTime(showTime.intValue());
        this.f21801j.setCountDownTimerListener(new d());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.f21801j.getLayoutDirection() == 0) {
            layoutParams.setMarginEnd(this.f21805n.getResources().getDimensionPixelOffset(R$dimen.ad_mark_margin_start));
        } else {
            layoutParams.setMarginStart(this.f21805n.getResources().getDimensionPixelOffset(R$dimen.ad_mark_margin_start));
        }
        layoutParams.topMargin = this.f21805n.getResources().getDimensionPixelOffset(R$dimen.ad_mark_margin_top);
        int dimensionPixelSize = this.f21805n.getResources().getDimensionPixelSize(R$dimen.ad_skip_view_width);
        int dimensionPixelOffset = this.f21805n.getResources().getDimensionPixelOffset(R$dimen.ad_skip_view_height);
        layoutParams.width = dimensionPixelSize;
        layoutParams.height = dimensionPixelOffset;
        layoutParams.addRule(21);
        ViewGroup viewGroup = this.f21802k;
        if (viewGroup != null) {
            viewGroup.addView(this.f21801j, layoutParams);
        }
        this.f21801j.setVisibility(8);
    }

    public void A0() {
        V(this.f21809r);
    }

    public void B0() {
        b4.b().d("TranSplash", "closeSplashPage");
        Context context = this.f21805n;
        if (context instanceof HisavanaSplashActivity) {
            if (((HisavanaSplashActivity) context).isFinishing() || ((HisavanaSplashActivity) this.f21805n).isDestroyed()) {
                b4.b().d("TranSplash", "closeSplashPage activity is finishing or destroyed");
            } else {
                ((HisavanaSplashActivity) this.f21805n).finish();
            }
        }
        k4.b().d(this.f21800i);
    }

    public Context H() {
        return this.f21805n;
    }

    public void I() {
        b2 b2Var = this.f21804m;
        if (b2Var != null) {
            b2Var.z(this.f21806o);
        }
    }

    public CountTimeView J() {
        return this.f21801j;
    }

    public ViewGroup K() {
        return this.f21802k;
    }

    public boolean L() {
        if (this.f21806o != null) {
            return this.f21806o.isJumpToHalfscreen();
        }
        return false;
    }

    public boolean M() {
        return this.f21807p;
    }

    public void O() {
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.m();
            this.f20888e.k(this.f21806o);
        }
    }

    public void P() {
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.p(this.f21806o);
        }
    }

    void Q() {
        f();
        k(true);
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.s();
        }
    }

    public void R() {
        b2 b2Var = this.f21804m;
        if (b2Var != null) {
            b2Var.D(this.f21806o);
        }
    }

    public void S() {
        this.f21809r -= System.currentTimeMillis() - this.f21810s;
        b4.b().d("TranSplash", "removeCloseMsg remainForceCloseAdTime " + this.f21809r);
        if (this.f21809r <= 0) {
            this.f21809r = 10000L;
        }
        Handler handler = this.f21808q;
        if (handler != null) {
            handler.removeCallbacks(this.E);
        }
    }

    public AdsDTO T() {
        return this.f21806o;
    }

    public void a0(PopupWindow popupWindow) {
        this.f21817z = popupWindow;
    }

    public void c0(TaErrorCode taErrorCode) {
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.t(taErrorCode, this);
        }
    }

    @Override
    public void d(List list, Bundle bundle) {
        this.f21806o = (list == null || list.isEmpty()) ? null : (AdsDTO) list.get(0);
        super.d(list, bundle);
    }

    public void d0(TaErrorCode taErrorCode, Bundle bundle) {
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.u(taErrorCode, this, bundle);
        }
    }

    public void e0(Float f10) {
        if (f10 == null) {
            return;
        }
        if (f10.floatValue() < 0.1f || f10.floatValue() > 0.2f) {
            this.D = Float.valueOf(0.2f);
        } else {
            this.D = f10;
        }
    }

    public void h0(Context context) {
        Preconditions.a();
        W(context);
        if (this.f21805n == null || this.f21806o == null) {
            b4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "contex is null or mAdBean is null");
            B0();
            c0(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            return;
        }
        this.A = com.cloud.hisavana.sdk.common.util.b.f21563a.b(this.f21806o);
        if (this.f21804m == null) {
            this.f21804m = new b2(this);
        }
        this.f21804m.k(new e(this.f21806o));
        this.f21804m.c(this.A);
        if (r() == 0 && !z()) {
            this.f21804m.A(this.f21806o);
            V(10000L);
        } else {
            b4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "Ad is not ready");
            B0();
            c0(TaErrorCode.ERROR_SHOW_INNER_INVALID);
        }
    }

    public void i0(View view) {
        this.f21803l = view;
    }

    public void j0(ViewGroup viewGroup) {
        this.f21802k = viewGroup;
    }

    void k0(boolean z10) {
        b4.b().d("TranSplash", "fillSplash");
        if (this.f21802k == null) {
            c0(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
            b4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "bg view is null");
            return;
        }
        v0();
        b2 b2Var = this.f21804m;
        View viewB = b2Var != null ? b2Var.B(this.f21806o) : null;
        if (viewB == null) {
            c0(TaErrorCode.ERROR_SHOW_SPLASH_VIEW_NULL);
            b4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "Splash view is null");
            return;
        }
        if (viewB.getParent() != null) {
            ((ViewGroup) viewB.getParent()).removeView(viewB);
        }
        String strJ = com.cloud.hisavana.sdk.common.util.r.f21605a.j(this.f21806o);
        if (TextUtils.isEmpty(strJ)) {
            X(viewB);
        } else {
            Y(viewB, strJ);
        }
        x0();
        y0();
        this.f21802k.postDelayed(new b(), 1000L);
        if (z10) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.f21815x);
            arrayList.add(this.f21813v);
            arrayList.add(this.f21814w);
            arrayList.add(this.f21801j);
            z.a(v(), this.f21806o, this.f21802k, arrayList);
        }
    }

    @Override
    public void m() {
        super.m();
        try {
            HSScopeHelper.f22503a.h(new Runnable() {
                @Override
                public final void run() {
                    this.f22105a.N();
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void m0(Context context) {
        Preconditions.a();
        W(context);
        if (this.f21805n == null || this.f21806o == null) {
            b4.b().d(com.cloud.sdk.commonutil.util.c.SPLASH_TAG, "contex is null or mAdBean is null");
            B0();
            c0(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
        } else if (r() != 0 || z()) {
            B0();
            c0(TaErrorCode.ERROR_SHOW_INNER_INVALID);
        } else {
            k4.b().c(this.f21800i, this);
            HisavanaSplashActivity.P(this.f21805n, this.f21800i, this.B);
        }
    }

    public void n0(boolean z10) {
        this.B = z10;
    }

    public void z0() {
        b4.b().d("TranSplash", "splash ad close");
        S();
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.p(this.f21806o);
        }
        B0();
    }

    class d implements CountTimeView.b {
        d() {
        }

        @Override
        public void onClick() {
            if (e1.this.f21801j != null) {
                e1.this.f21801j.cancel();
            }
            if (e1.this.f20888e != null) {
                e1.this.f20888e.B();
            }
            e1.this.B0();
            AthenaTracker.e0(e1.this.f21806o);
        }

        @Override
        public void onFinish() {
            b4.b().d("TranSplash", "splash ad onTimeEnd");
            if (e1.this.f20888e != null) {
                e1.this.f20888e.C();
                e1.this.B0();
            }
        }

        @Override
        public void onStart() {
        }
    }
}
