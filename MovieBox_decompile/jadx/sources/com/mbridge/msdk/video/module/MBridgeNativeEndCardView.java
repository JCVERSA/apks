package com.mbridge.msdk.video.module;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.MBHeatLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.shake.MBShakeView;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import com.mbridge.msdk.videocommon.view.StarLevelView;
import com.mbridge.msdk.widget.FeedBackButton;
import com.tn.lib.view.FlowLayout;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class MBridgeNativeEndCardView extends MBridgeNativeEndCardViewDiff {
    private LinearLayout A;
    private Runnable B;
    private Runnable C;
    private RelativeLayout D;
    private com.mbridge.msdk.video.signal.factory.b E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private AlphaAnimation K;
    private int L;
    private int M;
    private int N;
    private int O;
    private Bitmap P;
    private View Q;
    private FeedBackButton R;
    private String S;
    private CampaignUnit T;
    private MBShakeView U;
    private com.mbridge.msdk.shake.b V;
    private MBridgeBaitClickView W;

    private boolean f38473a0;

    private int f38474b0;

    private String f38475c0;

    private ViewGroup f38476m;

    private ViewGroup f38477n;

    private RelativeLayout f38478o;

    private ImageView f38479p;

    private ImageView f38480q;

    private ImageView f38481r;

    private ImageView f38482s;

    private TextView f38483t;

    private ImageView f38484u;

    private ImageView f38485v;

    private TextView f38486w;

    private TextView f38487x;

    private TextView f38488y;

    private LinearLayout f38489z;

    class a extends com.mbridge.msdk.widget.a {
        a() {
        }

        @Override
        protected void a(View view) {
            if (MBridgeNativeEndCardView.this.ctaView != null) {
                if (!com.mbridge.msdk.util.b.a()) {
                    MBridgeNativeEndCardView.this.f38394b.setTriggerClickSource(2);
                    MBridgeNativeEndCardView.this.c(0);
                } else if (MBridgeNativeEndCardView.this.checkProgressBarIntercepted()) {
                    MBridgeNativeEndCardView.this.f38394b.setTriggerClickSource(2);
                    MBridgeNativeEndCardView.this.c(0);
                }
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            if (MBridgeNativeEndCardView.this.D != null) {
                CampaignEx campaignEx = MBridgeNativeEndCardView.this.f38394b;
                if (campaignEx != null && !campaignEx.isDynamicView() && MBridgeNativeEndCardView.this.f38394b.getAdSpaceT() != 2) {
                    MBridgeNativeEndCardView.this.D.setPadding(MBridgeNativeEndCardView.this.L, MBridgeNativeEndCardView.this.N, MBridgeNativeEndCardView.this.M, MBridgeNativeEndCardView.this.O);
                    MBridgeNativeEndCardView.this.D.startAnimation(MBridgeNativeEndCardView.this.K);
                }
                MBridgeNativeEndCardView.this.D.setVisibility(0);
            }
            if (MBridgeNativeEndCardView.this.Q != null && MBridgeNativeEndCardView.this.Q.getVisibility() != 0 && MBridgeNativeEndCardView.this.G) {
                MBridgeNativeEndCardView.this.Q.setVisibility(0);
            }
            MBridgeNativeEndCardView.this.f();
        }
    }

    class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override
        public void a() {
            MBridgeNativeEndCardView.this.I = true;
        }

        @Override
        public void close() {
            MBridgeNativeEndCardView.this.I = false;
        }

        @Override
        public void a(String str) {
            MBridgeNativeEndCardView.this.I = false;
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override
        public void onClick(View view) {
            MBridgeNativeEndCardView.this.f38394b.setTriggerClickSource(5);
            MBridgeNativeEndCardView.this.c(0);
        }
    }

    class e extends com.mbridge.msdk.shake.b {
        e(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        public void a() {
            if ((com.mbridge.msdk.util.b.a() && MBridgeNativeEndCardView.this.checkChinaShakeState()) || MBridgeNativeEndCardView.this.I || !MBridgeNativeEndCardView.this.H) {
                return;
            }
            MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
            mBridgeNativeEndCardView.f38398f = 0.0f;
            mBridgeNativeEndCardView.f38399g = 0.0f;
            mBridgeNativeEndCardView.f38394b.setTriggerClickSource(5);
            MBridgeNativeEndCardView.this.c(4);
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override
        public void onClick(View view) {
            MBridgeNativeEndCardView.this.f38394b.setTriggerClickSource(2);
            MBridgeNativeEndCardView.this.c(0);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override
        public void run() {
            MBridgeNativeEndCardView.this.f38394b.setTriggerClickSource(2);
            MBridgeNativeEndCardView.this.f38394b.setClickType(1);
            MBridgeNativeEndCardView.this.c(2);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override
        public void run() {
            MBridgeNativeEndCardView.this.f38394b.setTriggerClickSource(2);
            MBridgeNativeEndCardView.this.f38394b.setClickType(1);
            MBridgeNativeEndCardView.this.c(2);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override
        public void run() {
            MBridgeNativeEndCardView.this.G = true;
            if (MBridgeNativeEndCardView.this.Q != null) {
                MBridgeNativeEndCardView.this.Q.setVisibility(0);
            }
        }
    }

    class k implements com.mbridge.msdk.foundation.same.image.c {
        k() {
        }

        @Override
        public void onFailedLoad(String str, String str2) {
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
            try {
                if (MBridgeNativeEndCardView.this.f38480q != null) {
                    MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                    if (mBridgeNativeEndCardView.f38400h) {
                        mBridgeNativeEndCardView.f38480q.setBackground(null);
                    }
                    MBridgeNativeEndCardView.this.f38480q.setImageBitmap(bitmap);
                }
                MBridgeNativeEndCardView.this.setBannerBackGroundBlurBimap(bitmap);
            } catch (Throwable unused) {
                if (MBridgeNativeEndCardView.this.f38479p != null) {
                    MBridgeNativeEndCardView.this.f38479p.setVisibility(4);
                }
            }
        }
    }

    class l implements com.mbridge.msdk.foundation.feedback.a {
        l() {
        }

        @Override
        public void a() {
            MBridgeNativeEndCardView.this.I = true;
        }

        @Override
        public void close() {
            MBridgeNativeEndCardView.this.I = false;
        }

        @Override
        public void a(String str) {
            MBridgeNativeEndCardView.this.I = false;
        }
    }

    class m implements Runnable {

        final Bitmap f38502a;

        class a implements Runnable {
            a() {
            }

            @Override
            public void run() {
                MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                if (mBridgeNativeEndCardView.f38400h) {
                    mBridgeNativeEndCardView.f38479p.setBackground(null);
                }
                o0.b(TmcConstants.KEY_ASYNC, "执行异步加载图");
                MBridgeNativeEndCardView.this.f38479p.setImageBitmap(MBridgeNativeEndCardView.this.P);
            }
        }

        m(Bitmap bitmap) {
            this.f38502a = bitmap;
        }

        @Override
        public void run() {
            MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
            mBridgeNativeEndCardView.P = mBridgeNativeEndCardView.blurBitmap(this.f38502a);
            if (MBridgeNativeEndCardView.this.P == null || MBridgeNativeEndCardView.this.P.isRecycled() || MBridgeNativeEndCardView.this.f38479p == null) {
                return;
            }
            MBridgeNativeEndCardView.this.f38479p.post(new a());
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override
        public void onClick(View view) {
            if (MBridgeNativeEndCardView.this.F) {
                MBridgeNativeEndCardView.this.f38394b.setTriggerClickSource(2);
                MBridgeNativeEndCardView.this.c(1);
            }
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override
        public void onClick(View view) {
            if (MBridgeNativeEndCardView.this.f38400h) {
                try {
                    com.mbridge.msdk.video.dynview.moffer.a.a().b();
                } catch (Exception e10) {
                    o0.b(MBridgeBaseView.TAG, e10.getMessage());
                }
                try {
                    CampaignEx campaignEx = MBridgeNativeEndCardView.this.f38394b;
                    if (campaignEx != null) {
                        String strA = z0.a(campaignEx.getendcard_url(), "ecid");
                        String strA2 = z0.a(MBridgeNativeEndCardView.this.f38394b.getendcard_url(), "mof");
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "choseFromTwoClose");
                        eVar.a("endcard_id", strA);
                        eVar.a("mof", strA2);
                        com.mbridge.msdk.video.module.report.a.a("2000103", MBridgeNativeEndCardView.this.f38394b, eVar);
                    }
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        e11.printStackTrace();
                    }
                }
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar2.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", MBridgeNativeEndCardView.this.f38394b);
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
            MBridgeNativeEndCardView.this.notifyListener.a(104, "");
        }
    }

    class p extends com.mbridge.msdk.widget.a {
        p() {
        }

        @Override
        protected void a(View view) {
            MBridgeNativeEndCardView.this.f38394b.setTriggerClickSource(1);
            MBridgeNativeEndCardView.this.c(0);
        }
    }

    class q extends com.mbridge.msdk.widget.a {
        q() {
        }

        @Override
        protected void a(View view) {
            if (MBridgeNativeEndCardView.this.ctaView != null) {
                if (!com.mbridge.msdk.util.b.a()) {
                    MBridgeNativeEndCardView.this.f38394b.setTriggerClickSource(2);
                    MBridgeNativeEndCardView.this.c(0);
                } else if (MBridgeNativeEndCardView.this.checkProgressBarIntercepted()) {
                    MBridgeNativeEndCardView.this.f38394b.setTriggerClickSource(2);
                    MBridgeNativeEndCardView.this.c(0);
                }
            }
        }
    }

    public MBridgeNativeEndCardView(Context context) {
        super(context);
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = 0;
        this.f38473a0 = false;
        this.f38474b0 = 1;
    }

    public void setBannerBackGroundBlurBimap(Bitmap bitmap) {
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new m(bitmap));
        } catch (Exception e10) {
            o0.a(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    @TargetApi(17)
    public Bitmap blurBitmap(Bitmap bitmap) {
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_4444);
            RenderScript renderScriptCreate = RenderScript.create(this.f38393a.getApplicationContext());
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
            Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
            scriptIntrinsicBlurCreate.setRadius(25.0f);
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
            allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap);
            renderScriptCreate.destroy();
            return bitmapCreateBitmap;
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean canBackPress() {
        View view = this.Q;
        return view != null && view.getVisibility() == 0;
    }

    public void clearMoreOfferBitmap() {
        CampaignUnit campaignUnit;
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || !campaignEx.isDynamicView() || (campaignUnit = this.T) == null || campaignUnit.getAds() == null || this.T.getAds().size() <= 0) {
            return;
        }
        for (CampaignEx campaignEx2 : this.T.getAds()) {
            if (!TextUtils.isEmpty(campaignEx2.getIconUrl())) {
                com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx2.getIconUrl());
            }
        }
    }

    @Override
    public void init(Context context) {
    }

    public boolean isDyXmlSuccess() {
        return this.f38473a0;
    }

    public void notifyShowListener() {
        this.notifyListener.a(110, "");
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.B == null) {
            this.B = new i();
        }
        Runnable runnable = this.B;
        if (runnable != null) {
            postDelayed(runnable, this.J * 1000);
            if (!this.H) {
                this.H = true;
            }
            m();
        }
        e();
        g();
        n();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.B;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = this.C;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
        }
        if (this.V != null) {
            com.mbridge.msdk.shake.a.a().b(this.V);
            this.V = null;
        }
    }

    @Override
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || !campaignEx.isDynamicView()) {
            RelativeLayout relativeLayout = this.D;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(4);
            }
            int i10 = configuration.orientation;
            this.f38396d = i10;
            if (i10 == 2) {
                removeView(this.f38476m);
                b(this.f38477n);
            } else {
                removeView(this.f38477n);
                b(this.f38476m);
            }
        }
    }

    @Override
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.E = bVar;
        try {
            if (this.f38394b == null || !this.f38397e) {
                return;
            }
            h();
        } catch (Throwable th2) {
            o0.a(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    public void release() {
        try {
            removeAllViews();
            AlphaAnimation alphaAnimation = this.K;
            if (alphaAnimation != null) {
                alphaAnimation.cancel();
            }
            this.B = null;
        } catch (Exception e10) {
            o0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    public void setCloseBtnDelay(int i10) {
        this.J = i10;
    }

    public void setLayout() {
        if (this.f38400h) {
            i();
        } else {
            j();
        }
    }

    public void setMoreOfferCampaignUnit(CampaignUnit campaignUnit) {
        MBShakeView mBShakeView;
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx == null || !campaignEx.isDynamicView()) {
            return;
        }
        this.T = campaignUnit;
        if (campaignUnit == null || campaignUnit.getAds() == null || this.T.getAds().size() <= 5 || (mBShakeView = this.U) == null) {
            return;
        }
        mBShakeView.setPadding(0, 0, 0, t0.a(getContext(), 5.0f));
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13) {
        o0.b(MBridgeBaseView.TAG, "NOTCH NativeEndCard " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13)));
        this.L = i10;
        this.M = i11;
        this.N = i12;
        this.O = i13;
        o();
    }

    public void setOnPause() {
        this.H = false;
    }

    public void setOnResume() {
        this.H = true;
    }

    public void setUnitId(String str) {
        this.S = str;
    }

    private void e() {
        int i10;
        MBridgeBaitClickView mBridgeBaitClickView;
        try {
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx == null || !campaignEx.isDynamicView()) {
                return;
            }
            String endScreenUrl = this.f38394b.getendcard_url();
            if (TextUtils.isEmpty(endScreenUrl)) {
                endScreenUrl = this.f38394b.getEndScreenUrl();
            }
            String strA = z0.a(endScreenUrl, "bait_click");
            try {
                i10 = Integer.parseInt(strA);
            } catch (Throwable th2) {
                o0.b(MBridgeBaseView.TAG, th2.getMessage());
                i10 = 1;
            }
            if (TextUtils.isEmpty(strA) || i10 == 0 || (mBridgeBaitClickView = this.W) == null) {
                return;
            }
            mBridgeBaitClickView.setVisibility(0);
            this.W.init(1342177280, i10);
            if (this.f38394b.getEcTemplateId() == 1302) {
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setColor(1342177280);
                gradientDrawable.setStroke(0, FlowLayout.SPACING_AUTO);
                gradientDrawable.setCornerRadius(25.0f);
                this.W.setBackground(gradientDrawable);
            }
            this.W.startAnimation();
            this.W.setOnClickListener(new f());
        } catch (Throwable th3) {
            o0.b(MBridgeBaseView.TAG, th3.getMessage());
        }
    }

    public void f() {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.S);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.S + "_2", this.f38394b);
        }
        if (!com.mbridge.msdk.foundation.feedback.b.b().a()) {
            FeedBackButton feedBackButton = this.R;
            if (feedBackButton != null) {
                feedBackButton.setVisibility(8);
                return;
            }
            return;
        }
        com.mbridge.msdk.foundation.feedback.b.b().a(this.S + "_2", new c());
        com.mbridge.msdk.foundation.feedback.b.b().d(this.S + "_1");
        if (this.R != null) {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.S + "_2", this.R);
        }
    }

    private void g() {
        int i10;
        int i11;
        try {
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx == null || !campaignEx.isDynamicView()) {
                return;
            }
            String endScreenUrl = this.f38394b.getendcard_url();
            if (TextUtils.isEmpty(endScreenUrl)) {
                endScreenUrl = this.f38394b.getEndScreenUrl();
            }
            String strA = z0.a(endScreenUrl, "shake_show");
            String strA2 = z0.a(endScreenUrl, "shake_strength");
            String strA3 = z0.a(endScreenUrl, "shake_time");
            if (!TextUtils.isEmpty(strA) && strA.equals("1") && this.U == null) {
                MBridgeBaitClickView mBridgeBaitClickView = this.W;
                if (mBridgeBaitClickView != null) {
                    mBridgeBaitClickView.setVisibility(8);
                }
                MBShakeView mBShakeView = new MBShakeView(getContext());
                this.U = mBShakeView;
                mBShakeView.initView(this.f38394b.getAdCall(), true);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                if (isLandscape()) {
                    layoutParams.addRule(13);
                } else {
                    layoutParams.addRule(2, filterFindViewId(this.f38473a0, "mbridge_iv_logo"));
                    layoutParams.addRule(14);
                    this.U.setPadding(0, 0, 0, t0.a(getContext(), 20.0f));
                }
                this.U.setLayoutParams(layoutParams);
                RelativeLayout relativeLayout = this.f38478o;
                if (relativeLayout != null && relativeLayout.isShown()) {
                    this.f38478o.addView(this.U);
                    TextView textView = this.ctaView;
                    if (textView != null) {
                        textView.setVisibility(4);
                    }
                    this.U.setOnClickListener(new d());
                    int i12 = 10;
                    if (!TextUtils.isEmpty(strA2) && (i11 = Integer.parseInt(strA2)) > 0) {
                        i12 = i11;
                    }
                    int i13 = 5000;
                    if (!TextUtils.isEmpty(strA3) && (i10 = Integer.parseInt(strA3)) > 0) {
                        i13 = i10 * 1000;
                    }
                    this.V = new e(i12, i13);
                    com.mbridge.msdk.shake.a.a().a(this.V);
                }
            }
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    private void h() {
        com.mbridge.msdk.foundation.same.image.b.a(this.f38393a.getApplicationContext()).a(this.f38394b.getImageUrl(), new k());
        com.mbridge.msdk.foundation.same.image.b.a(this.f38393a.getApplicationContext()).a(this.f38394b.getIconUrl(), new com.mbridge.msdk.video.module.listener.impl.j(this.f38481r, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 8.0f)));
        this.f38486w.setText(this.f38394b.getAppName());
        TextView textView = this.ctaView;
        if (textView != null) {
            textView.setText(this.f38394b.getAdCall());
        }
        TextView textView2 = this.f38487x;
        if (textView2 != null) {
            textView2.setText(this.f38394b.getAppDesc());
        }
        TextView textView3 = this.f38488y;
        if (textView3 != null) {
            textView3.setText(this.f38394b.getNumberRating() + ")");
        }
        this.f38489z.removeAllViews();
        double rating = this.f38394b.getRating();
        if (rating <= 0.0d) {
            rating = 5.0d;
        }
        LinearLayout linearLayout = this.f38489z;
        if (linearLayout instanceof StarLevelView) {
            ((StarLevelView) linearLayout).initScore(rating);
        }
        LinearLayout linearLayout2 = this.f38489z;
        if (linearLayout2 instanceof MBridgeLevelLayoutView) {
            ((MBridgeLevelLayoutView) linearLayout2).setRatingAndUser(rating, this.f38394b.getNumberRating());
        }
        LinearLayout linearLayout3 = this.f38489z;
        if (linearLayout3 instanceof MBStarLevelLayoutView) {
            ((MBStarLevelLayoutView) linearLayout3).setRating((int) rating);
        }
        LinearLayout linearLayout4 = this.A;
        if (linearLayout4 != null && (linearLayout4 instanceof MBHeatLevelLayoutView)) {
            ((MBHeatLevelLayoutView) linearLayout4).setHeatCount(this.f38394b.getNumberRating());
        }
        if (!TextUtils.isEmpty(this.f38394b.getendcard_url()) && this.f38394b.getendcard_url().contains("alecfc=1")) {
            this.F = true;
        }
        String language = Locale.getDefault().getLanguage();
        if (TextUtils.isEmpty(language) || !language.equals("zh")) {
            this.f38482s.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_reward_flag_en", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            this.f38475c0 = "AD";
        } else {
            this.f38482s.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_reward_flag_cn", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            this.f38475c0 = "广告";
        }
        if (this.f38474b0 == 0) {
            ImageView imageView = this.f38482s;
            if (imageView != null) {
                imageView.setVisibility(4);
            }
            ImageView imageView2 = this.f38484u;
            if (imageView2 != null) {
                imageView2.setVisibility(4);
            }
            TextView textView4 = this.f38483t;
            if (textView4 != null) {
                textView4.setVisibility(0);
                this.f38483t.setText(this.f38475c0);
            }
        }
        t0.a(2, this.f38485v, this.f38394b, this.f38393a, true, new l());
        if (this.G) {
            return;
        }
        this.Q.setVisibility(8);
    }

    private void i() throws Throwable {
        com.mbridge.msdk.video.dynview.c cVarA = new com.mbridge.msdk.video.dynview.wrapper.c().a(getContext(), this.f38394b, this.f38401i, com.mbridge.msdk.util.b.a() ? "cn_" : "en_");
        this.f38474b0 = cVarA.o();
        com.mbridge.msdk.video.dynview.b.a().a(cVarA, new j());
    }

    public void j() {
        int iK = k();
        if (g0.a(iK)) {
            this.f38397e = b(iK);
            l();
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx != null) {
                campaignEx.setECTemplateRenderSucc(false);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001b  */
    /* JADX WARN: Code duplicated, block: B:12:0x001d A[PHI: r3
      0x001d: PHI (r3v4 java.lang.String) = (r3v2 java.lang.String), (r3v5 java.lang.String) binds: [B:20:0x002b, B:8:0x0015] A[DONT_GENERATE, DONT_INLINE]] */
    private int k() {
        int i10 = this.f38403k;
        String str = "mbridge_reward_endcard_native_land";
        String str2 = "mbridge_reward_endcard_native_hor";
        if (i10 == 0) {
            str2 = this.f38402j ? "mbridge_reward_endcard_native_half_portrait" : "mbridge_reward_endcard_native_hor";
            if (!isLandscape()) {
                str = str2;
            } else if (this.f38402j) {
                str = "mbridge_reward_endcard_native_half_landscape";
            }
        } else {
            if (i10 != 1) {
                str2 = "";
            } else if (this.f38402j) {
                str2 = "mbridge_reward_endcard_native_half_portrait";
            }
            if (i10 != 2) {
                str = str2;
            } else if (this.f38402j) {
                str = "mbridge_reward_endcard_native_half_landscape";
            }
        }
        return findLayout(str);
    }

    public void l() {
        d();
        if (!this.f38397e) {
            this.notifyListener.a(104, "");
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
        this.K = alphaAnimation;
        alphaAnimation.setDuration(200L);
    }

    private void m() {
        try {
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx == null || !campaignEx.isDynamicView()) {
                return;
            }
            String endScreenUrl = this.f38394b.getendcard_url();
            if (TextUtils.isEmpty(endScreenUrl)) {
                endScreenUrl = this.f38394b.getEndScreenUrl();
            }
            String strA = z0.a(endScreenUrl, "alac");
            if (TextUtils.isEmpty(strA) || !strA.equals("1") || this.f38394b.getAutoShowStoreMiniCard() == 1) {
                return;
            }
            postDelayed(new g(), 1000L);
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    private void n() {
        try {
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx == null || campaignEx.getAutoShowStoreMiniCard() == 0 || TextUtils.isEmpty(this.f38394b.getDeepLinkURL())) {
                return;
            }
            long showStoreMiniCardDelayTime = this.f38394b.getShowStoreMiniCardDelayTime();
            if (showStoreMiniCardDelayTime == 0) {
                showStoreMiniCardDelayTime = 1;
            }
            if (this.C == null) {
                this.C = new h();
            }
            postDelayed(this.C, showStoreMiniCardDelayTime * 1000);
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage());
        }
    }

    private void o() {
        RelativeLayout relativeLayout;
        if (!this.f38397e || (relativeLayout = this.D) == null) {
            return;
        }
        relativeLayout.postDelayed(new b(), 200L);
    }

    @Override
    protected void d() {
        if (this.f38397e) {
            this.f38478o.setOnClickListener(new n());
            this.Q.setOnClickListener(new o());
            TextView textView = this.ctaView;
            if (textView != null) {
                textView.setOnClickListener(new p());
            }
            this.f38481r.setOnClickListener(new q());
            this.f38480q.setOnClickListener(new a());
        }
    }

    public void c(int i10) {
        JSONObject jSONObject;
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            try {
                CampaignEx.c rewardTemplateMode = this.f38394b.getRewardTemplateMode();
                String str = "";
                if (rewardTemplateMode != null) {
                    str = rewardTemplateMode.f() + "";
                }
                com.mbridge.msdk.foundation.same.report.j.a(com.mbridge.msdk.foundation.controller.c.m().d(), "end_card_click", this.f38394b.getCampaignUnitId(), this.f38394b.isBidCampaign(), this.f38394b.getRequestId(), this.f38394b.getRequestIdNotice(), this.f38394b.getId(), str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.mbridge.msdk.foundation.same.a.f34506j, a(i10));
                if (this.f38394b.getDynamicTempCode() == 5) {
                    jSONObject.put("camp_position", 0);
                }
            } catch (JSONException e11) {
                e = e11;
                e.printStackTrace();
            }
        } catch (JSONException e12) {
            e = e12;
            jSONObject = null;
        }
        this.f38394b.setClickTempSource(2);
        this.notifyListener.a(105, jSONObject);
    }

    private void b(View view) {
        if (view == null) {
            setLayout();
            preLoadData(this.E);
        } else {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            addView(view);
            a(view);
            d();
        }
        o();
    }

    public boolean a(View view) {
        try {
            this.f38478o = (RelativeLayout) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_native_ec_layout"));
            this.f38480q = (ImageView) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_iv_adbanner"));
            this.f38481r = (ImageView) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_iv_icon"));
            this.f38482s = (ImageView) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_iv_flag"));
            this.f38483t = (TextView) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_tv_flag"));
            this.f38484u = (ImageView) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_iv_logo"));
            this.f38485v = (ImageView) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_iv_link"));
            this.f38486w = (TextView) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_tv_apptitle"));
            this.f38489z = (LinearLayout) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_sv_starlevel"));
            this.A = (LinearLayout) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_sv_heat_count_level"));
            this.Q = view.findViewById(filterFindViewId(this.f38473a0, "mbridge_iv_close"));
            this.ctaView = (TextView) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_tv_cta"));
            this.R = (FeedBackButton) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_native_endcard_feed_btn"));
            this.D = (RelativeLayout) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_native_ec_controller"));
            this.f38479p = (ImageView) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_iv_adbanner_bg"));
            this.W = (MBridgeBaitClickView) findViewById(filterFindViewId(this.f38473a0, "mbridge_animation_click_view"));
            this.f38487x = (TextView) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_tv_appdesc"));
            if (this.f38400h) {
                ImageView imageView = this.f38480q;
                if (imageView != null && (imageView instanceof RoundImageView)) {
                    ((RoundImageView) imageView).setBorderRadius(10);
                }
                ImageView imageView2 = this.f38481r;
                if (imageView2 != null && (imageView2 instanceof RoundImageView)) {
                    ((RoundImageView) imageView2).setBorderRadius(10);
                }
                return isNotNULL(this.f38480q, this.f38481r, this.f38486w, this.f38489z, this.Q, this.ctaView);
            }
            TextView textView = (TextView) view.findViewById(filterFindViewId(this.f38473a0, "mbridge_tv_number"));
            this.f38488y = textView;
            return isNotNULL(this.f38480q, this.f38481r, this.f38486w, this.f38487x, textView, this.f38489z, this.Q, this.ctaView);
        } catch (Throwable th2) {
            o0.b(MBridgeBaseView.TAG, th2.getMessage(), th2);
            return false;
        }
    }

    public MBridgeNativeEndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = 0;
        this.f38473a0 = false;
        this.f38474b0 = 1;
    }

    class j implements com.mbridge.msdk.video.dynview.listener.h {
        j() {
        }

        @Override
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                MBridgeNativeEndCardView.this.addView(aVar.b());
                MBridgeNativeEndCardView.this.f38473a0 = aVar.c();
                if (MBridgeNativeEndCardView.this.ctaViewCanGet(aVar.b(), MBridgeNativeEndCardView.this.f38473a0)) {
                    MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                    mBridgeNativeEndCardView.f38397e = mBridgeNativeEndCardView.a(aVar.b());
                    MBridgeNativeEndCardView.this.l();
                } else {
                    MBridgeNativeEndCardView.this.f38473a0 = false;
                    MBridgeNativeEndCardView mBridgeNativeEndCardView2 = MBridgeNativeEndCardView.this;
                    mBridgeNativeEndCardView2.f38400h = false;
                    mBridgeNativeEndCardView2.j();
                }
                MBridgeNativeEndCardView mBridgeNativeEndCardView3 = MBridgeNativeEndCardView.this;
                CampaignEx campaignEx = mBridgeNativeEndCardView3.f38394b;
                if (campaignEx != null) {
                    campaignEx.setECTemplateRenderSucc(mBridgeNativeEndCardView3.f38473a0);
                }
            }
        }

        @Override
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            o0.b(MBridgeBaseView.TAG, "errorMsg:" + aVar.c());
        }
    }

    private boolean b(int i10) {
        if (isLandscape()) {
            ViewGroup viewGroup = (ViewGroup) this.f38395c.inflate(i10, (ViewGroup) null);
            this.f38477n = viewGroup;
            addView(viewGroup);
            return a(this.f38477n);
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f38395c.inflate(i10, (ViewGroup) null);
        this.f38476m = viewGroup2;
        addView(viewGroup2);
        return a(this.f38476m);
    }

    public MBridgeNativeEndCardView(Context context, AttributeSet attributeSet, boolean z10, int i10, boolean z11, int i11, int i12) {
        super(context, attributeSet, z10, i10, z11, i11, i12);
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = 0;
        this.f38473a0 = false;
        this.f38474b0 = 1;
    }
}
