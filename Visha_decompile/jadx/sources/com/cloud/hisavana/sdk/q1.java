package com.cloud.hisavana.sdk;

import android.app.Activity;
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
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.common.widget.CountTimeView;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import defpackage.cy9;
import defpackage.ied;
import defpackage.ikd;
import defpackage.io1;
import defpackage.ja1;
import defpackage.kn8;
import defpackage.md8;
import defpackage.oid;
import defpackage.pp4;
import defpackage.rod;
import defpackage.t6;
import defpackage.ul4;
import defpackage.vkd;
import defpackage.vl4;
import defpackage.zk5;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class q1 extends G {
    public int A;
    public boolean B;
    public boolean C;
    public Float D;
    public final Runnable E;
    public final String i;
    public CountTimeView j;
    public ViewGroup k;
    public View l;
    public oid m;
    public Context n;
    public volatile AdsDTO o;
    public boolean p;
    public Handler q;
    public long r;
    public long s;
    public CopyOnWriteArrayList t;
    public AdChoicesView u;
    public LinearLayout v;
    public StoreMarkView w;
    public AdDisclaimerView x;
    public io1 y;
    public PopupWindow z;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            ikd.b().d("TranSplash", "closeAdRunnable all time is end");
            q1.this.x0();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            if (q1.this.j != null) {
                q1.this.j.setVisibility(0);
            }
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            q1.this.O();
        }
    }

    public class d implements CountTimeView.b {
        public d() {
        }

        @Override
        public void onClick() {
            q1.this.R();
        }

        @Override
        public void onFinish() {
            q1.this.S();
        }

        @Override
        public void onStart() {
        }
    }

    public class e extends vkd {
        public e(AdsDTO adsDTO) {
            super(adsDTO);
        }

        @Override
        public void a(p pVar) {
            ikd.b().d("TranSplash", "onPlayerError code=" + pVar.a() + " msg=" + pVar.b());
            super.a(pVar);
            q1 q1Var = q1.this;
            q1Var.h0(q1Var.W(pVar));
        }

        @Override
        public void e() {
            super.e();
        }

        @Override
        public void f(boolean z) {
            super.f(z);
            ikd.b().d("TranSplash", "onCompanion");
        }

        @Override
        public void onIsPlayingChanged(boolean z) {
            ikd.b().d("TranSplash", "onIsPlayingChanged isPLaying " + z);
            super.onIsPlayingChanged(z);
        }
    }

    public q1(ied iedVar) {
        super(iedVar);
        this.m = null;
        this.n = null;
        this.r = 10000L;
        this.t = new CopyOnWriteArrayList();
        this.B = false;
        this.C = false;
        this.E = new a();
        this.i = DeviceUtil.p();
    }

    private void t0() {
        ViewParent parent;
        int i;
        if (this.k == null || this.l == null || this.o.isInteractiveAd() || (parent = this.k.getParent()) == null) {
            return;
        }
        int iJ = md8.j();
        if (iJ > 0) {
            Float f = this.D;
            float fFloatValue = f != null ? f.floatValue() : 0.14f;
            ikd.b().i("TranSplash", "ssp sdk addLogoLayout heightRatio = " + fFloatValue);
            i = (int) (((float) iJ) * fFloatValue);
        } else {
            i = 0;
        }
        if (i == 0) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, 0, 0, i);
        this.k.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, i);
        layoutParams2.addRule(12);
        if (this.l.getParent() != null) {
            ((ViewGroup) this.l.getParent()).removeView(this.l);
        }
        ((ViewGroup) parent).addView(this.l, layoutParams2);
    }

    private void u0() {
        if (this.k == null || !cy9.a(this.o) || this.o == null) {
            return;
        }
        StoreMarkView storeMarkView = new StoreMarkView(this.n);
        this.w = storeMarkView;
        storeMarkView.setTextSize(8.0f);
        this.w.setTextColor(-1);
        this.w.setVisibility(0);
        this.w.attachInfo(this.o);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = this.n.getResources().getDimensionPixelOffset(R.dimen.dimens_16);
        layoutParams.addRule(20);
        LinearLayout linearLayout = this.v;
        if (linearLayout == null || linearLayout.getParent() == null) {
            layoutParams.addRule(12);
        } else {
            layoutParams.addRule(8, this.v.getId());
        }
        this.k.addView(this.w, layoutParams);
    }

    private void v0() {
        if (this.o == null || this.o.getDisplayRule() != Constants.AdDisplayRule.RU || this.k == null || this.n == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.n.getResources().getDimensionPixelOffset(R.dimen.ad_disclaimer_height));
        layoutParams.addRule(12);
        AdDisclaimerView adDisclaimerView = new AdDisclaimerView(this.n);
        this.k.addView(adDisclaimerView, layoutParams);
        adDisclaimerView.setDisplayStyle(this.o.getDisplayRule(), kn8.f(this.o));
        adDisclaimerView.updateHeightWith(kn8.e(this.o), this.k.getHeight());
        adDisclaimerView.setListener(new AdDisclaimerView.b() {
            @Override
            public final void a(String str, String str2, String str3) {
                this.a.k0(str, str2, str3);
            }
        });
        this.x = adDisclaimerView;
    }

    private void w0() {
        VastData videoInfo;
        Integer duration;
        if (this.k == null || this.n == null) {
            return;
        }
        this.j = new CountTimeView(this.n);
        Integer showTime = this.o.getShowTime();
        if (this.o.isVastTypeAd() && (videoInfo = this.o.getVideoInfo()) != null && (duration = videoInfo.getDuration()) != null && duration.intValue() > 1 && duration.intValue() <= 5) {
            showTime = Integer.valueOf(duration.intValue() - 1);
        }
        this.j.setStartTime(showTime.intValue());
        this.j.setCountDownTimerListener(new d());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.j.getLayoutDirection() == 0) {
            layoutParams.setMarginEnd(this.n.getResources().getDimensionPixelOffset(R.dimen.ad_mark_margin_start));
        } else {
            layoutParams.setMarginStart(this.n.getResources().getDimensionPixelOffset(R.dimen.ad_mark_margin_start));
        }
        layoutParams.topMargin = this.n.getResources().getDimensionPixelOffset(R.dimen.ad_mark_margin_top);
        int dimensionPixelSize = this.n.getResources().getDimensionPixelSize(R.dimen.ad_skip_view_width);
        int dimensionPixelOffset = this.n.getResources().getDimensionPixelOffset(R.dimen.ad_skip_view_height);
        layoutParams.width = dimensionPixelSize;
        layoutParams.height = dimensionPixelOffset;
        layoutParams.addRule(21);
        ViewGroup viewGroup = this.k;
        if (viewGroup != null) {
            viewGroup.addView(this.j, layoutParams);
        }
        this.j.setVisibility(8);
    }

    public Context H() {
        return this.n;
    }

    public void I() {
        oid oidVar = this.m;
        if (oidVar != null) {
            oidVar.H(this.o);
        }
    }

    public CountTimeView J() {
        return this.j;
    }

    public ViewGroup K() {
        return this.k;
    }

    public boolean L() {
        if (this.o != null) {
            return this.o.isJumpToHalfscreen();
        }
        return false;
    }

    public boolean M() {
        return this.p;
    }

    public final void N() {
        if (this.C) {
            return;
        }
        try {
            pp4.a(this.u);
            oid oidVar = this.m;
            if (oidVar != null) {
                oidVar.d();
            }
            CountTimeView countTimeView = this.j;
            if (countTimeView != null) {
                countTimeView.cancel();
                this.j.setCountDownTimerListener(null);
                this.j = null;
            }
            ViewGroup viewGroup = this.k;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
            }
            this.k = null;
            this.u = null;
            this.x = null;
            LinearLayout linearLayout = this.v;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
            }
            this.v = null;
            StoreMarkView storeMarkView = this.w;
            if (storeMarkView != null) {
                storeMarkView.removeAllViews();
            }
            this.w = null;
            View view = this.l;
            if (view != null && (view.getParent() instanceof ViewGroup)) {
                ((ViewGroup) this.l.getParent()).removeView(this.l);
            }
            this.l = null;
            U();
            ikd.b().d(ja1.SPLASH_TAG, "TranSplash，destroy");
            z0();
            io1 io1Var = this.y;
            if (io1Var != null) {
                io1Var.f();
                this.y = null;
            }
            PopupWindow popupWindow = this.z;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.z = null;
            }
            this.n = null;
            this.C = true;
        } catch (Throwable unused) {
        }
    }

    public void O() {
        AdCallback adCallback;
        U0.k(ul4.a(), this.o);
        if (this.o == null || this.o.isOfflineAd() || (adCallback = this.e) == null) {
            return;
        }
        adCallback.m(null);
        AdCallback adCallback2 = this.e;
        if (adCallback2 != null) {
            adCallback2.k(this.o);
        }
        U();
    }

    public void P() {
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.p(this.o);
            U();
        }
    }

    public void Q() {
        f();
        k(true);
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.s();
        }
    }

    public void R() {
        CountTimeView countTimeView = this.j;
        if (countTimeView != null) {
            countTimeView.cancel();
        }
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.B();
            U();
        }
        z0();
        AthenaTracker.k0(this.o);
    }

    public void S() {
        ikd.b().d("TranSplash", "splash ad onTimeEnd");
        if (this.e != null) {
            U();
            this.e.C();
            z0();
        }
    }

    public void T() {
        oid oidVar = this.m;
        if (oidVar != null) {
            oidVar.M(this.o);
        }
    }

    public void U() {
        this.r -= System.currentTimeMillis() - this.s;
        ikd.b().d("TranSplash", "removeCloseMsg remainForceCloseAdTime " + this.r);
        if (this.r <= 0) {
            this.r = 10000L;
        }
        Handler handler = this.q;
        if (handler != null) {
            handler.removeCallbacks(this.E);
        }
    }

    public AdsDTO V() {
        return this.o;
    }

    public final TaErrorCode W(p pVar) {
        switch (pVar.a()) {
            case TaErrorCode.CODE_SHOW_VIDEO_PLAYER_IO_ERROR:
                return TaErrorCode.ERROR_SHOW_VIDEO_PLAYER_IO_ERROR;
            case TaErrorCode.CODE_SHOW_VIDEO_PLAYER_DECODE_ERROR:
                return TaErrorCode.ERROR_SHOW_VIDEO_PLAYER_DECODE_ERROR;
            case TaErrorCode.CODE_SHOW_VIDEO_PLAYER_DRM_ERROR:
                return TaErrorCode.ERROR_SHOW_VIDEO_PLAYER_DRM_ERROR;
            case TaErrorCode.CODE_SHOW_VIDEO_PLAYER_UNKNOWN_ERROR:
            default:
                return TaErrorCode.ERROR_SHOW_VIDEO_PLAYER_UNKNOWN_ERROR;
            case TaErrorCode.CODE_SHOW_VIDEO_PLAYER_UNAVAILABLE:
                return TaErrorCode.ERROR_SHOW_VIDEO_PLAYER_UNAVAILABLE;
        }
    }

    public void Z(int i) {
        oid oidVar = this.m;
        if (oidVar != null) {
            oidVar.e(i);
        }
    }

    public final void a0(long j) {
        this.s = System.currentTimeMillis();
        if (this.q == null) {
            this.q = new Handler(Looper.getMainLooper());
        }
        this.q.postDelayed(this.E, j);
        ikd.b().d("TranSplash", "closeAdDelay " + j);
    }

    public final void b0(Context context) {
        this.m = new oid(this);
        this.n = context;
    }

    public final void c0(View view) {
        if (this.k == null) {
            h0(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
            ikd.b().d(ja1.SPLASH_TAG, "bg view is null");
            return;
        }
        if (this.o == null) {
            h0(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            ikd.b().d(ja1.SPLASH_TAG, "ad data is null");
            return;
        }
        ikd.b().d("TranSplash", "fillSplash renderView " + view);
        this.o.setMaterialStyle("K01");
        this.k.addView(view, new RelativeLayout.LayoutParams(-1, -1));
        e0(null);
        u0();
    }

    @Override
    public void d(List list, Bundle bundle) {
        this.o = (list == null || list.isEmpty()) ? null : (AdsDTO) list.get(0);
        super.d(list, bundle);
    }

    public final void d0(View view, String str) {
        if (this.k == null) {
            h0(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
            ikd.b().d(ja1.SPLASH_TAG, "bg view is null");
            return;
        }
        if (this.o == null) {
            h0(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            ikd.b().d(ja1.SPLASH_TAG, "ad data is null");
            return;
        }
        ikd.b().d("TranSplash", "fillSplash renderView " + view);
        try {
            this.o.setMaterialStyle("K02");
            View viewInflate = LayoutInflater.from(this.k.getContext()).inflate(R.layout.splash_style_k02_layout, this.k, false);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.n.getResources().getDimensionPixelOffset(R.dimen.hisavana_ad_dimen_180), this.n.getResources().getDimensionPixelOffset(R.dimen.hisavana_ad_dimen_400));
            ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(R.id.iv_main_image);
            viewGroup.addView(view, layoutParams);
            e0(viewGroup);
            NativeBean nativeObject = this.o.getNativeObject();
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.ivIcon);
            if (this.o.getSource() == 4) {
                DownLoadRequest.n(this.o.getLogoUrl(), this.o, null, imageView);
            } else if (nativeObject != null) {
                DownLoadRequest.o(nativeObject.getLogoUrl(), this.o, 1, null, imageView);
            }
            TextView textView = (TextView) viewInflate.findViewById(R.id.tvName);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.tvDescription);
            TextView textView3 = (TextView) viewInflate.findViewById(R.id.tvBtn);
            if (nativeObject != null) {
                textView.setText(nativeObject.getTitleTxt());
                textView2.setText(str + " · " + nativeObject.getDescriptionTxt());
                textView3.setText(nativeObject.getButtonTxt(this.o.getInstallApk()));
            }
            if (cy9.a(this.o)) {
                StoreMarkView storeMarkView = (StoreMarkView) viewInflate.findViewById(R.id.ps_mark_view);
                this.w = storeMarkView;
                if (storeMarkView != null) {
                    storeMarkView.setVisibility(0);
                    this.w.setTextSize(8.0f);
                    this.w.setTextColor(-8882056);
                    this.w.attachInfo(this.o);
                }
            }
            this.k.addView(viewInflate);
        } catch (Throwable unused) {
        }
    }

    public final void e0(ViewGroup viewGroup) {
        if (this.o == null || this.k == null || this.n == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.k.getLayoutDirection() == 0) {
            layoutParams.setMarginEnd(this.n.getResources().getDimensionPixelOffset(R.dimen.dimens_16));
        } else {
            layoutParams.setMarginStart(this.n.getResources().getDimensionPixelOffset(R.dimen.dimens_16));
        }
        if (this.l == null) {
            layoutParams.bottomMargin = this.n.getResources().getDimensionPixelOffset(R.dimen.dimens_82);
        } else {
            layoutParams.bottomMargin = this.n.getResources().getDimensionPixelOffset(R.dimen.dimens_48);
        }
        layoutParams.addRule(12);
        layoutParams.addRule(21);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.n).inflate(R.layout.hs_include_ad_flag, this.k, false);
        this.v = linearLayout;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setId(View.generateViewId());
        this.u = (AdChoicesView) this.v.findViewById(R.id.ad_choices_view);
        AdBadgeView adBadgeView = (AdBadgeView) this.v.findViewById(R.id.ad_badge_view);
        AdCloseView adCloseView = (AdCloseView) this.v.findViewById(R.id.ad_close_view);
        g0(this.u);
        if (adBadgeView != null) {
            adBadgeView.setDisplayStyle(this.o.getDisplayRule(), kn8.c(this.o));
        }
        if (adCloseView != null) {
            adCloseView.setDisplayStyle(this.o.getDisplayRule(), AdCloseView.CloseImageType.EXPAND);
            u.n().d(this.n, adCloseView, this, this.o);
        }
        if (viewGroup == null) {
            this.k.addView(this.v, layoutParams);
            return;
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(12);
        layoutParams2.addRule(20);
        this.v.setLayoutParams(layoutParams2);
        viewGroup.addView(this.v);
    }

    public void f0(PopupWindow popupWindow) {
        this.z = popupWindow;
    }

    public final void g0(AdChoicesView adChoicesView) {
        if (adChoicesView == null) {
            return;
        }
        if (this.o != null) {
            this.o.setACReady(Boolean.TRUE);
        }
        if (this.o.getSource() == 4) {
            DownLoadRequest.n(this.o.getAdChoiceImageUrl(), this.o, null, adChoicesView);
        } else {
            DownLoadRequest.o(this.o.getAdChoiceImageUrl(), this.o, 3, null, adChoicesView);
        }
        adChoicesView.setOnClickListener(new c());
    }

    public void h0(TaErrorCode taErrorCode) {
        if (this.e != null) {
            U();
            this.e.t(taErrorCode, this);
            z0();
        }
    }

    public void i0(TaErrorCode taErrorCode, Bundle bundle) {
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.u(taErrorCode, this, bundle);
        }
    }

    public void j0(Float f) {
        if (f == null) {
            return;
        }
        if (f.floatValue() < 0.1f || f.floatValue() > 0.2f) {
            this.D = Float.valueOf(0.2f);
        } else {
            this.D = f;
        }
    }

    public final void k0(String str, String str2, String str3) {
        io1 io1VarI = new io1(this.k).j(str).h(str2).i(str3, null);
        this.y = io1VarI;
        io1VarI.k();
    }

    public void l0(Context context) {
        Preconditions.a();
        b0(context);
        if (this.n == null || this.o == null) {
            ikd.b().d(ja1.SPLASH_TAG, "contex is null or mAdBean is null");
            h0(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            return;
        }
        this.A = t6.a.b(this.o);
        if (this.m == null) {
            this.m = new oid(this);
        }
        this.m.q(new e(this.o));
        this.m.v(this.A);
        if (r() != 0 || z()) {
            ikd.b().d(ja1.SPLASH_TAG, "Ad is not ready");
            h0(TaErrorCode.ERROR_SHOW_INNER_INVALID);
            return;
        }
        AdxImpBean impBeanRequest = this.o.getImpBeanRequest();
        if (this.b != null && impBeanRequest != null && TextUtils.isEmpty(impBeanRequest.mSceneId)) {
            impBeanRequest.mSceneId = this.b.m();
        }
        this.m.f(this.n, this.o);
        a0(10000L);
    }

    @Override
    public void m() {
        super.m();
        try {
            HSScopeHelper.a.p(new Runnable() {
                @Override
                public final void run() {
                    this.b.N();
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void m0(View view) {
        ikd.b().d("TranSplash", "fill template splash");
        if (this.k == null || view == null) {
            h0(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
            ikd.b().d(ja1.SPLASH_TAG, "bg view is null");
        } else {
            t0();
            this.k.addView(view, new ViewGroup.LayoutParams(-1, -1));
        }
    }

    public void n0(ViewGroup viewGroup) {
        this.k = viewGroup;
    }

    public void o0(boolean z) {
        ikd.b().d("TranSplash", "fillSplash");
        if (this.k == null) {
            h0(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
            ikd.b().d(ja1.SPLASH_TAG, "bg view is null");
            return;
        }
        t0();
        oid oidVar = this.m;
        View viewK = oidVar != null ? oidVar.K(this.o) : null;
        if (viewK == null) {
            h0(TaErrorCode.ERROR_SHOW_SPLASH_VIEW_NULL);
            ikd.b().d(ja1.SPLASH_TAG, "Splash view is null");
            return;
        }
        if (viewK.getParent() != null) {
            ((ViewGroup) viewK.getParent()).removeView(viewK);
        }
        String strM = HSCommonUtils.a.m(this.o);
        if (TextUtils.isEmpty(strM)) {
            c0(viewK);
        } else {
            d0(viewK, strM);
        }
        v0();
        w0();
        this.k.postDelayed(new b(), 1000L);
        if (z) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.x);
            arrayList.add(this.v);
            arrayList.add(this.w);
            arrayList.add(this.j);
            m.a(v(), this.o, this.k, arrayList);
        }
    }

    public void p0(Context context) {
        Preconditions.a();
        b0(context);
        if (this.n == null || this.o == null) {
            ikd.b().d(ja1.SPLASH_TAG, "contex is null or mAdBean is null");
            h0(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            return;
        }
        if (r() != 0 || z()) {
            h0(TaErrorCode.ERROR_SHOW_INNER_INVALID);
            return;
        }
        rod.b().c(this.i, this);
        if (!vl4.g()) {
            HisavanaSplashActivity.t(this.n, this.i, this.B);
            return;
        }
        try {
            Activity activityH = zk5.h();
            if (zk5.i(activityH)) {
                HisavanaSplashActivity.u(activityH, this.i, this.B);
            } else {
                ikd.b().w("TranSplash", "show() --> topActivity is not alive");
                h0(TaErrorCode.ERROR_SHOW_TOP_ACTIVITY_IS_NOT_ALIVE);
            }
        } catch (Exception e2) {
            ikd.b().e("TranSplash", "show() --> startActivity error", e2);
        }
    }

    public void q0(View view) {
        this.l = view;
    }

    public void r0(boolean z) {
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.m(z ? this.o : null);
            AdCallback adCallback2 = this.e;
            if (adCallback2 != null) {
                adCallback2.k(this.o);
            }
            U();
        }
    }

    public void s0(boolean z) {
        this.B = z;
    }

    public void x0() {
        ikd.b().d("TranSplash", "splash ad close");
        U();
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.p(this.o);
        }
        z0();
    }

    public void y0() {
        a0(this.r);
    }

    public void z0() {
        ikd.b().d("TranSplash", "closeSplashPage");
        try {
            Context context = this.n;
            if (context instanceof HisavanaSplashActivity) {
                if (((HisavanaSplashActivity) context).isFinishing() || ((HisavanaSplashActivity) this.n).isDestroyed()) {
                    ikd.b().d("TranSplash", "closeSplashPage activity is finishing or destroyed");
                } else {
                    ((HisavanaSplashActivity) this.n).finish();
                }
            }
            rod.b().d(this.i);
        } catch (Throwable unused) {
        }
    }
}
