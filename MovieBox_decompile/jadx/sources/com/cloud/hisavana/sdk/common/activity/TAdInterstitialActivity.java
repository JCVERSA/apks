package com.cloud.hisavana.sdk.common.activity;

import android.R;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.hisavana.sdk.J0;
import com.cloud.hisavana.sdk.O;
import com.cloud.hisavana.sdk.R$dimen;
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.hisavana.sdk.R$style;
import com.cloud.hisavana.sdk.Y;
import com.cloud.hisavana.sdk.api.view.AdBadgeView;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.AdDisclaimerView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.c4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.h0;
import com.cloud.hisavana.sdk.common.widget.InteractiveWebView;
import com.cloud.hisavana.sdk.common.widget.TadmWebView;
import com.cloud.hisavana.sdk.common.widget.video.InterstitialAdVideoView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.f4;
import com.cloud.hisavana.sdk.s2;
import com.cloud.hisavana.sdk.v2;
import com.cloud.hisavana.sdk.w2;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import com.cloud.sdk.commonutil.widget.TranCircleImageView;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Random;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

public class TAdInterstitialActivity extends Activity {

    private static WeakReference f21216c0;
    private long A;
    private int B;
    private boolean C;
    private com.cloud.hisavana.sdk.q E;
    private com.cloud.hisavana.sdk.common.util.v F;
    private g7.e G;
    private g7.d Q;
    private int R;

    private TadmWebView f21217a;

    private ObjectAnimator f21218a0;

    private TranCircleImageView f21219b;

    private Runnable f21220b0;

    private AdChoicesView f21221c;

    private AdBadgeView f21222d;

    private AdCloseView f21223e;

    private StoreMarkView f21224f;

    private ImageView f21225g;

    private ViewGroup f21226h;

    private TextView f21227i;

    private TextView f21228j;

    private TextView f21229k;

    private InteractiveWebView f21230l;

    private ViewGroup f21231m;

    private ImageView f21232n;

    private InterstitialAdVideoView f21233o;

    private AdDisclaimerView f21234p;

    private AdsDTO f21235q = null;

    private String f21236r = "";

    private float f21237s = 0.0f;

    private boolean f21238t = false;

    private boolean f21239u = false;

    private boolean f21240v = false;

    private float f21241w = -1.0f;

    private float f21242x = -1.0f;

    private float f21243y = -1.0f;

    private float f21244z = -1.0f;
    private final l D = new l(this);
    private int H = -1;
    private boolean I = false;
    private boolean J = false;
    private boolean K = false;
    private int L = 0;
    private int M = 1;
    private boolean N = false;
    private int O = 0;
    boolean P = false;
    private boolean S = false;
    private boolean T = false;
    private boolean U = false;
    private boolean V = false;
    private int W = -1;
    private int X = -1;
    private int Y = -1;
    private int Z = -1;

    class b implements View.OnClickListener {

        final String f21246a;

        b(String str) {
            this.f21246a = str;
        }

        @Override
        public void onClick(View view) {
            if (!TextUtils.equals(this.f21246a, "I01")) {
                TAdInterstitialActivity.this.i0(view, false);
            } else if (!TAdInterstitialActivity.this.S) {
                TAdInterstitialActivity.this.U(view, false, true);
            } else {
                TAdInterstitialActivity.this.T = true;
                com.cloud.hisavana.sdk.common.util.r.f21605a.r(TAdInterstitialActivity.this.f21217a);
            }
        }
    }

    class c extends g7.e {

        final ProgressBar f21248f;

        final TextView f21249g;

        final View f21250h;

        final View f21251i;

        final ImageView f21252j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(long j10, long j11, ProgressBar progressBar, TextView textView, View view, View view2, ImageView imageView) {
            super(j10, j11);
            this.f21248f = progressBar;
            this.f21249g = textView;
            this.f21250h = view;
            this.f21251i = view2;
            this.f21252j = imageView;
        }

        @Override
        public void e() {
            TAdInterstitialActivity.this.G.d();
            this.f21250h.setVisibility(0);
            if (this.f21248f != null && TAdInterstitialActivity.this.I) {
                this.f21248f.setVisibility(4);
            } else if (TAdInterstitialActivity.this.f21235q.getMaterialStyle().equals("I01")) {
                this.f21251i.setVisibility(0);
                ImageView imageView = this.f21252j;
                if (imageView != null) {
                    imageView.setImageResource(R$drawable.ad_rewarded_time_rest_done);
                }
                this.f21249g.setText(TAdInterstitialActivity.this.getResources().getString(R$string.hs_download_t01_countdown_tv_done));
            } else {
                this.f21249g.setVisibility(4);
            }
            TAdInterstitialActivity.this.H = 0;
        }

        @Override
        public void f(long j10) {
            TAdInterstitialActivity.this.H = (int) Math.ceil(j10 / 1000.0f);
            if (this.f21248f != null && TAdInterstitialActivity.this.I) {
                ProgressBar progressBar = this.f21248f;
                progressBar.setProgress(progressBar.getMax() - TAdInterstitialActivity.this.H);
            } else {
                try {
                    if (TAdInterstitialActivity.this.f21235q.getMaterialStyle().equals("I01")) {
                        this.f21249g.setText(String.format(Locale.getDefault(), TAdInterstitialActivity.this.getResources().getString(R$string.hs_download_t01_countdown_tv), Integer.valueOf(TAdInterstitialActivity.this.H)));
                    } else {
                        this.f21249g.setText(String.valueOf(TAdInterstitialActivity.this.H));
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    class d extends g7.e {

        final TextView f21254f;

        final View f21255g;

        final TextView f21256h;

        final View f21257i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(long j10, long j11, TextView textView, View view, TextView textView2, View view2) {
            super(j10, j11);
            this.f21254f = textView;
            this.f21255g = view;
            this.f21256h = textView2;
            this.f21257i = view2;
        }

        @Override
        public void e() {
            TAdInterstitialActivity.this.G.d();
            this.f21255g.setEnabled(true);
            this.f21256h.setTextColor(Color.parseColor("#222222"));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f21256h.getLayoutParams();
            layoutParams.setMarginStart(0);
            this.f21256h.setLayoutParams(layoutParams);
            this.f21254f.setVisibility(8);
            this.f21257i.setVisibility(8);
            this.f21255g.requestLayout();
            TAdInterstitialActivity.this.H = 0;
        }

        @Override
        public void f(long j10) {
            TAdInterstitialActivity.this.H = (int) Math.ceil(j10 / 1000.0f);
            this.f21254f.setText(String.valueOf(TAdInterstitialActivity.this.H));
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override
        public void onClick(View view) {
            TAdInterstitialActivity.this.r(view, true);
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override
        public void onClick(View view) {
            try {
                if (TAdInterstitialActivity.this.S) {
                    TAdInterstitialActivity.this.T = true;
                    TAdInterstitialActivity.this.U = true;
                    com.cloud.hisavana.sdk.common.util.r.f21605a.r(TAdInterstitialActivity.this.f21217a);
                } else {
                    TAdInterstitialActivity.this.r(view, false);
                }
                if (!TAdInterstitialActivity.this.S || TAdInterstitialActivity.this.V) {
                    TAdInterstitialActivity.this.L0();
                }
            } catch (Throwable unused) {
            }
        }
    }

    class g extends DrawableResponseListener {
        g() {
        }

        public void j(View view) {
            TAdInterstitialActivity.this.i0(view, false);
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            if (taErrorCode != null) {
                TAdInterstitialActivity.this.C(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
            }
            TAdInterstitialActivity.this.finish();
        }

        @Override
        public void g(int i10, AdImage adImage) {
            if (TAdInterstitialActivity.this.f21219b == null || TAdInterstitialActivity.this.f21235q.getMaterialStyle().equals("I01")) {
                return;
            }
            TAdInterstitialActivity.this.f21219b.setOnTouchListener(new m(TAdInterstitialActivity.this, null));
            TAdInterstitialActivity.this.f21219b.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f21318a.j(view);
                }
            });
        }
    }

    class h extends c4 {
        h(AdsDTO adsDTO) {
            super(adsDTO);
        }

        @Override
        public void a() {
            if (!TAdInterstitialActivity.this.f21239u) {
                super.a();
            }
            TAdInterstitialActivity.this.f21239u = true;
        }

        @Override
        public void b(long j10, long j11, int i10) {
            if (TAdInterstitialActivity.this.f21240v) {
                return;
            }
            super.b(j10, j11, i10);
        }

        @Override
        public void onComplete() {
            if (!TAdInterstitialActivity.this.f21240v) {
                super.onComplete();
            }
            TAdInterstitialActivity.this.f21240v = true;
        }

        @Override
        public void onVolumeChanged(float f10) {
            super.onVolumeChanged(f10);
            if (TAdInterstitialActivity.this.f21232n == null) {
                return;
            }
            TAdInterstitialActivity.this.f21237s = f10;
            TAdInterstitialActivity.this.B(f10);
        }
    }

    class i extends DrawableResponseListener {
        i() {
        }

        public void j(View view) {
            TAdInterstitialActivity.this.i0(view, false);
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            if (taErrorCode != null) {
                TAdInterstitialActivity.this.C(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
            }
            TAdInterstitialActivity.this.finish();
        }

        @Override
        public void g(int i10, AdImage adImage) {
            if (adImage != null && adImage.isAdImageRecycled()) {
                TAdInterstitialActivity.this.C(i10, "bitmap is null");
                TAdInterstitialActivity.this.finish();
            } else {
                if (TAdInterstitialActivity.this.f21219b == null || TAdInterstitialActivity.this.f21235q.getMaterialStyle().equals("I01")) {
                    return;
                }
                TAdInterstitialActivity.this.f21219b.setOnTouchListener(new m(TAdInterstitialActivity.this, null));
                TAdInterstitialActivity.this.f21219b.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.f21320a.j(view);
                    }
                });
            }
        }
    }

    static class k implements InteractiveWebView.c {

        private WeakReference f21265a;

        public k(TAdInterstitialActivity tAdInterstitialActivity) {
            this.f21265a = new WeakReference(tAdInterstitialActivity);
        }

        @Override
        public void a(String str) {
            TAdInterstitialActivity tAdInterstitialActivity;
            WeakReference weakReference = this.f21265a;
            if (weakReference == null || (tAdInterstitialActivity = (TAdInterstitialActivity) weakReference.get()) == null) {
                return;
            }
            tAdInterstitialActivity.k0(str);
        }

        @Override
        public void b() {
            TAdInterstitialActivity tAdInterstitialActivity;
            WeakReference weakReference = this.f21265a;
            if (weakReference == null || (tAdInterstitialActivity = (TAdInterstitialActivity) weakReference.get()) == null) {
                return;
            }
            tAdInterstitialActivity.D(tAdInterstitialActivity.f21230l, tAdInterstitialActivity.f21241w, tAdInterstitialActivity.f21242x, tAdInterstitialActivity.f21243y, tAdInterstitialActivity.f21244z);
            tAdInterstitialActivity.H0();
        }

        @Override
        public void c() {
            b4.b().d("TAdInterstitialActivity", "timeoutShutdown");
        }
    }

    private class l extends com.cloud.hisavana.sdk.common.tranmeasure.a {

        private final WeakReference f21266b;

        public l(TAdInterstitialActivity tAdInterstitialActivity) {
            this.f21266b = new WeakReference(tAdInterstitialActivity);
        }

        @Override
        public void a(AdsDTO adsDTO) {
            super.a(adsDTO);
            b4.b().d("TAdInterstitialActivity", "view has impression     track = onAdShow");
            TAdInterstitialActivity tAdInterstitialActivity = (TAdInterstitialActivity) this.f21266b.get();
            if (tAdInterstitialActivity == null) {
                return;
            }
            TAdInterstitialActivity.this.f21238t = true;
            TAdInterstitialActivity.this.x1();
            tAdInterstitialActivity.O("_show", new Intent());
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null) {
                return;
            }
            O.g().k(adsDTO.getImpBeanRequest().pmid);
            if (adsDTO.getSource() == 4) {
                Y.f20925a.q(adsDTO.getAdCreativeId(), adsDTO.getCodeSeatId());
            } else if (adsDTO.isOfflineAd()) {
                adsDTO.setShowNum(Integer.valueOf(adsDTO.getShowNum().intValue() + 1));
                com.cloud.hisavana.sdk.p.F().q(adsDTO);
            }
        }
    }

    private class m implements View.OnTouchListener {
        private m() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                TAdInterstitialActivity.this.f21241w = motionEvent.getX();
                TAdInterstitialActivity.this.f21242x = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            TAdInterstitialActivity.this.f21243y = motionEvent.getX();
            TAdInterstitialActivity.this.f21244z = motionEvent.getY();
            return false;
        }

        m(TAdInterstitialActivity tAdInterstitialActivity, b bVar) {
            this();
        }
    }

    private void A() {
        if (n0(this.f21235q)) {
            com.cloud.hisavana.sdk.common.util.a.a(this);
            return;
        }
        View childAt = ((ViewGroup) findViewById(R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(true);
        }
        getWindow().setLayout(-1, -1);
        setFinishOnTouchOutside(false);
    }

    private void A1() {
        try {
            if (getIntent() != null) {
                this.f21236r = getIntent().getStringExtra("BroadCastPrefix");
                this.f21235q = (AdsDTO) getIntent().getParcelableExtra("mAdBean");
            }
            AdsDTO adsDTO = this.f21235q;
            if (adsDTO != null && adsDTO.getMaterialStyle() != null) {
                int iB = com.cloud.hisavana.sdk.common.util.b.f21563a.b(this.f21235q);
                this.B = iB;
                if (iB != -1) {
                    V0();
                    return;
                }
                b4.b().d("TAdInterstitialActivity", "TAdInterstitialActivity --> adMediaType == INVALID_TYPE");
                C(TaErrorCode.CODE_INVALID_TYPE, TaErrorCode.ERROR_INVALID_TYPE.getErrorMessage());
                finish();
                return;
            }
            b4.b().d("TAdInterstitialActivity", "TAdInterstitialActivity --> null == mAdBean || null == mAdBean.materialStyle");
            C(TaErrorCode.CODE_INTERSTITIAL_MISS_ELEMENT, TaErrorCode.ERROR_INTERSTITIAL_MISS_ELEMENT.getErrorMessage());
            finish();
        } catch (Exception e10) {
            b4.b().e("TAdInterstitialActivity", "start " + Log.getStackTraceString(e10));
        }
    }

    public void B(float f10) {
        try {
            AdsDTO adsDTO = this.f21235q;
            if (adsDTO != null && adsDTO.getMaterialStyle().equals("I1107")) {
                this.f21232n.setImageResource(f10 == 0.0f ? R$drawable.hisavana_volume_close_i1107 : R$drawable.hisavana_volume_open_i1107);
                return;
            }
        } catch (Throwable unused) {
        }
        ImageView imageView = this.f21232n;
        if (imageView != null) {
            imageView.setImageResource(f10 == 0.0f ? R$drawable.hisavana_volume_close : R$drawable.hisavana_volume_open);
        }
    }

    private void B0() {
        if (!w2.n(this.f21235q)) {
            this.L = 3;
        } else if (w2.m(this.f21235q)) {
            this.L = 1;
        } else {
            this.L = 2;
        }
        this.f21235q.setEndCardType(this.L);
    }

    public void C(int i10, String str) {
        Intent intent = new Intent();
        intent.putExtra(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, str);
        intent.putExtra("error_code", i10);
        O("_error", intent);
    }

    public void C0(View view) {
        r(view, true);
    }

    public void D(View view, float f10, float f11, float f12, float f13) {
        int i10;
        int i11;
        if (view == null) {
            return;
        }
        try {
            if (this.W == -1 || this.X == -1) {
                int[] iArr = new int[2];
                try {
                    view.getLocationOnScreen(iArr);
                    this.W = iArr[0];
                    this.X = iArr[1];
                    view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    this.Y = view.getMeasuredWidth() / 2;
                    this.Z = view.getMeasuredHeight() / 2;
                } catch (Throwable unused) {
                }
            }
            if ((this.Y == f10 && this.Z == f11) || (i10 = this.W) == -1 || (i11 = this.X) == -1) {
                return;
            }
            float f14 = i10;
            this.f21241w = f10 + f14;
            float f15 = i11;
            this.f21242x = f11 + f15;
            this.f21243y = f12 + f14;
            this.f21244z = f13 + f15;
        } catch (Throwable th2) {
            b4.b().w("TAdInterstitialActivity", "setLocationInfo error:" + th2.getMessage());
        }
    }

    private void D0(final AdsDTO adsDTO) {
        final InteractiveWebView interactiveWebView;
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getIndexLocation())) {
            return;
        }
        h1();
        if (new File(adsDTO.getIndexLocation()).exists() && (interactiveWebView = this.f21230l) != null) {
            interactiveWebView.setVisibility(0);
            interactiveWebView.post(new Runnable() {
                @Override
                public final void run() {
                    TAdInterstitialActivity.L(interactiveWebView, adsDTO);
                }
            });
        } else {
            C(3005, "interactive file not exists ");
            AthenaTracker.S(this.f21235q, 3);
            finish();
        }
    }

    private void E(View view, int i10) {
        TextView textView;
        ImageView imageView;
        View view2;
        int i11;
        ImageView imageView2 = (ImageView) view.findViewById(R$id.close_view);
        if (this.f21235q.getMaterialStyle().equals("I01")) {
            textView = (TextView) findViewById(R$id.count_down_view);
            imageView = (ImageView) findViewById(R$id.iv_reward_rest);
            try {
                View viewFindViewById = findViewById(R$id.ad_close_container);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view3) {
                            TAdInterstitialActivity.r0(view3);
                        }
                    });
                }
            } catch (Exception unused) {
            }
        } else {
            textView = (TextView) view.findViewById(R$id.count_down_view);
            imageView = null;
        }
        TextView textView2 = textView;
        ImageView imageView3 = imageView;
        TextView textView3 = (TextView) view.findViewById(R$id.skip_view);
        if (imageView2 == null || textView2 == null || textView3 == null) {
            return;
        }
        if (this.J) {
            textView3.setVisibility(0);
            imageView2.setVisibility(8);
            view2 = textView3;
        } else {
            textView3.setVisibility(8);
            imageView2.setVisibility(0);
            view2 = imageView2;
        }
        view2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view3) {
                this.f21357a.w0(view3);
            }
        });
        if (i10 <= 0 || (i11 = this.H) == 0) {
            if (!this.f21235q.getMaterialStyle().equals("I01")) {
                b4.b().d("TAdInterstitialActivity", "current close delay time is 0, do not count down.");
                view2.setVisibility(0);
                textView2.setVisibility(8);
                return;
            } else {
                view.setVisibility(0);
                View viewFindViewById2 = findViewById(R$id.ad_close_container);
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setVisibility(8);
                    return;
                }
                return;
            }
        }
        int iMin = i11 > 0 ? Math.min(i10, i11) : i10;
        textView2.setVisibility(0);
        view2.setVisibility(4);
        if (this.B == 1 || this.f21235q.getDefaultMaterialType() == 2) {
            try {
                if (getResources().getConfiguration().orientation == 1 && this.f21235q.getMaterialStyle() != null && this.f21235q.getMaterialStyle().equals("I91602")) {
                    this.I = true;
                    findViewById(R$id.new_ad_progress).setVisibility(0);
                    textView2.setVisibility(8);
                } else {
                    this.I = false;
                }
            } catch (Exception e10) {
                b4.b().w("TAdInterstitialActivity", "*----> TAdInterstitialActivity --> get screen orientation error:" + e10.getMessage());
            }
        }
        g7.e eVar = this.G;
        if (eVar != null) {
            eVar.d();
        }
        ProgressBar progressBar = (ProgressBar) findViewById(R$id.new_ad_progress);
        if (this.I && progressBar != null) {
            progressBar.setMax(iMin);
            if (this.H > 0) {
                progressBar.setProgress(progressBar.getMax() - this.H);
            }
        }
        c cVar = new c(1000 * ((long) iMin), 1000L, progressBar, textView2, view2, view, imageView3);
        this.G = cVar;
        cVar.g();
    }

    private void F(TextView textView, String str) {
        if (TextUtils.isEmpty(str)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(str);
        }
    }

    public static void G(v2 v2Var) {
        f21216c0 = new WeakReference(v2Var);
    }

    public void H0() {
        InteractiveWebView interactiveWebView = this.f21230l;
        if (interactiveWebView != null) {
            i0(interactiveWebView, false);
        }
    }

    public void I0(View view) {
        i0(view, false);
    }

    private void J0(AdsDTO adsDTO) {
        String strJ = w2.j(adsDTO);
        if (TextUtils.isEmpty(strJ)) {
            TaErrorCode taErrorCode = TaErrorCode.NO_MAIN_VIDEO_DATA_ERROR;
            C(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
            finish();
        } else {
            t1();
            a0(adsDTO);
            this.f21233o.setVolumeView(this.f21232n);
            b0(strJ);
        }
    }

    private int K0(AdsDTO adsDTO) {
        int i10 = 0;
        if (adsDTO == null) {
            return 0;
        }
        try {
            i10 = getResources().getConfiguration().orientation;
        } catch (Exception e10) {
            b4.b().w("TAdInterstitialActivity", "*----> TAdInterstitialActivity --> get screen orientation error:" + e10.getMessage());
        }
        if (n0(adsDTO)) {
            setTheme(R$style.InterstitialFullscreenStyle);
        } else if (i10 == 2) {
            setTheme(R$style.AppCompatTranscutes);
        } else {
            setTheme(R$style.InterstitialStyle);
        }
        return i10;
    }

    public static void L(InteractiveWebView interactiveWebView, AdsDTO adsDTO) {
        interactiveWebView.loadUrl(AdPayload.FILE_SCHEME + adsDTO.getIndexLocation());
    }

    private void M(AdsDTO adsDTO) {
        if (this.K) {
            return;
        }
        if (this.f21235q.getNativeObject() == null || TextUtils.isEmpty(this.f21235q.getNativeObject().getTitleTxt())) {
            this.J = false;
            return;
        }
        if (this.f21235q.getSource() == 4 && TextUtils.isEmpty(this.f21235q.getLogoUrl())) {
            this.J = false;
            return;
        }
        if (this.f21235q.getSource() != 4 && TextUtils.isEmpty(this.f21235q.getNativeObject().getLogoUrl())) {
            this.J = false;
            return;
        }
        this.J = false;
        this.L = 0;
        int retentionEndCardRatio = adsDTO.getRetentionEndCardRatio();
        if (retentionEndCardRatio == 0) {
            return;
        }
        if (retentionEndCardRatio < 0 || retentionEndCardRatio > 100) {
            b4.b().e("TAdInterstitialActivity", "getRetentionEndCardRatio error,value is " + retentionEndCardRatio);
            return;
        }
        if (retentionEndCardRatio == 100) {
            this.J = true;
            B0();
        } else if (new Random().nextInt(100) + 1 <= retentionEndCardRatio) {
            this.J = true;
            B0();
        }
    }

    public void M0(View view) {
        if (this.S) {
            com.cloud.hisavana.sdk.common.util.r.f21605a.r(this.f21217a);
        } else {
            U(view, false, false);
        }
    }

    private void N(String str) {
        if (this.E == null) {
            this.E = new com.cloud.hisavana.sdk.q();
        }
        this.E.j(this.S);
        this.E.d(this.f21217a, this.f21235q, new j());
        this.f21217a.loadDataWithBaseURL(null, str, "text/html", "utf-8", null);
    }

    public void O(String str, Intent intent) {
        if (intent == null) {
            try {
                intent = new Intent();
                intent.putExtra("mAdBean", this.f21235q);
            } catch (Throwable th2) {
                b4.b().e(Log.getStackTraceString(th2));
                return;
            }
        }
        intent.setAction(this.f21236r + str);
        b4.b().d("TAdInterstitialActivity", "sendBroadcast action: " + intent.getAction());
        sendBroadcast(intent);
    }

    private void P0() {
        AdsDTO adsDTO = this.f21235q;
        if (adsDTO == null) {
            return;
        }
        if (adsDTO.getSource() == 4) {
            DownLoadRequest.n(this.f21235q.getAdChoiceImageUrl(), this.f21235q, null, this.f21221c);
        } else {
            DownLoadRequest.o(this.f21235q.getAdChoiceImageUrl(), this.f21235q, 3, null, this.f21221c);
        }
        if (this.f21225g == null || this.f21235q.getNativeObject() == null) {
            return;
        }
        if (this.f21235q.getSource() == 4) {
            DownLoadRequest.n(this.f21235q.getLogoUrl(), this.f21235q, null, this.f21225g);
        } else {
            DownLoadRequest.o(this.f21235q.getNativeObject().getLogoUrl(), this.f21235q, 1, null, this.f21225g);
        }
        if (!this.f21235q.isVastTypeAd() || this.f21235q.getMaterialStyle().equals("I01")) {
            return;
        }
        this.f21225g.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f21360a.I0(view);
            }
        });
    }

    public void Q0(View view) {
        J0.k(getApplicationContext(), this.f21235q);
    }

    private int[] S(View view) {
        f0 f0VarA = f0.a(this.M);
        if (f0VarA == null) {
            return null;
        }
        if (this.M == 1) {
            return new int[]{f0VarA.f21324a, f0VarA.f21325b};
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.findViewById(R$id.close_view).getLayoutParams();
        int i10 = f0VarA.f21326c;
        layoutParams.height = i10;
        layoutParams.width = i10;
        int i11 = f0VarA.f21327d;
        layoutParams.topMargin = i11;
        layoutParams.rightMargin = i11;
        ViewGroup.LayoutParams layoutParams2 = view.findViewById(R$id.ffIcon).getLayoutParams();
        int i12 = f0VarA.f21328e;
        layoutParams2.height = i12;
        layoutParams2.width = i12;
        TextView textView = (TextView) view.findViewById(R$id.tvName);
        textView.setTextSize(f0VarA.f21329f);
        ((LinearLayout.LayoutParams) textView.getLayoutParams()).topMargin = f0VarA.f21330g;
        view.findViewById(R$id.score_icon1).getLayoutParams().width = f0VarA.f21331h;
        view.findViewById(R$id.score_icon1).getLayoutParams().height = f0VarA.f21331h;
        view.findViewById(R$id.score_icon2).getLayoutParams().width = f0VarA.f21331h;
        view.findViewById(R$id.score_icon2).getLayoutParams().height = f0VarA.f21331h;
        view.findViewById(R$id.score_icon3).getLayoutParams().width = f0VarA.f21331h;
        view.findViewById(R$id.score_icon3).getLayoutParams().height = f0VarA.f21331h;
        view.findViewById(R$id.score_icon4).getLayoutParams().width = f0VarA.f21331h;
        view.findViewById(R$id.score_icon4).getLayoutParams().height = f0VarA.f21331h;
        view.findViewById(R$id.score_icon5).getLayoutParams().width = f0VarA.f21331h;
        view.findViewById(R$id.score_icon5).getLayoutParams().height = f0VarA.f21331h;
        ((LinearLayout.LayoutParams) view.findViewById(R$id.score_area_view).getLayoutParams()).topMargin = f0VarA.f21332i;
        view.findViewById(R$id.desc_area_view).getLayoutParams().width = f0VarA.f21333j;
        view.findViewById(R$id.desc_area_view).getLayoutParams().height = f0VarA.f21334k;
        ((LinearLayout.LayoutParams) view.findViewById(R$id.desc_area_view).getLayoutParams()).topMargin = f0VarA.f21335l;
        view.findViewById(R$id.score_icon).getLayoutParams().width = f0VarA.f21336m;
        view.findViewById(R$id.score_icon).getLayoutParams().height = f0VarA.f21336m;
        view.findViewById(R$id.download_icon).getLayoutParams().width = f0VarA.f21336m;
        view.findViewById(R$id.download_icon).getLayoutParams().height = f0VarA.f21336m;
        ((TextView) view.findViewById(R$id.score_text)).setTextSize(f0VarA.f21337n);
        ((TextView) view.findViewById(R$id.download_text)).setTextSize(f0VarA.f21337n);
        ((TextView) view.findViewById(R$id.score_info)).setTextSize(f0VarA.f21338o);
        ((TextView) view.findViewById(R$id.download_info)).setTextSize(f0VarA.f21338o);
        view.findViewById(R$id.line_info).getLayoutParams().height = f0VarA.f21339p;
        view.findViewById(R$id.ff_btn).getLayoutParams().width = f0VarA.f21340q;
        view.findViewById(R$id.ff_btn).getLayoutParams().height = f0VarA.f21341r;
        ((LinearLayout.LayoutParams) view.findViewById(R$id.ff_btn).getLayoutParams()).topMargin = f0VarA.f21342s;
        ((LinearLayout.LayoutParams) view.findViewById(R$id.ff_ps_mark_view).getLayoutParams()).topMargin = f0VarA.f21343t;
        return new int[]{f0VarA.f21324a, f0VarA.f21325b};
    }

    private void S0() {
        finish();
    }

    private int T(View view, boolean z10) {
        if (this.f21235q.getPslinkInfo() != null) {
            if (view.getId() == R$id.tvBtn || view.getId() == R$id.btn_pop_confirm || view.getId() == R$id.btn || z10) {
                this.f21235q.getPslinkInfo().setClickType(2);
                this.f21235q.setTrackUserClickArea(2);
                b4.b().d("TAdInterstitialActivity", "pslink half setClickType, click_install");
            } else {
                this.f21235q.setTrackUserClickArea(1);
                this.f21235q.getPslinkInfo().setClickType(1);
                b4.b().d("TAdInterstitialActivity", "pslink half setClickType, click_img");
            }
        }
        DownUpPointBean downUpPointBean = new DownUpPointBean(this.f21241w, this.f21242x, this.f21243y, this.f21244z, view.getMeasuredHeight(), view.getMeasuredWidth());
        AdsDTO adsDTO = this.f21235q;
        boolean z11 = adsDTO != null ? !adsDTO.isAllowTrackingADClick() : false;
        O("_click", null);
        return J0.c(getApplicationContext(), this.f21235q, downUpPointBean, false, z11);
    }

    public void T0(View view) {
        r(view, false);
    }

    public int U(View view, boolean z10, boolean z11) {
        return V(view, z10, z11, false);
    }

    public int V(View view, final boolean z10, boolean z11, boolean z12) {
        AdsDTO adsDTO = this.f21235q;
        if (adsDTO == null || !adsDTO.getMaterialStyle().equals("I01")) {
            return r(view, z10);
        }
        if (this.O != 2) {
            this.P = true;
            return t(view, z10, z11, z12);
        }
        if (this.N || z11) {
            if (c7.b.h()) {
                HSToastUtil.f(getString(R$string.hs_download_in_palm_store));
            }
            this.U = true;
            int iS = s(view, z10, z11);
            if (this.S && !this.V) {
                return iS;
            }
            L0();
            return iS;
        }
        try {
            AdsDTO adsDTO2 = this.f21235q;
            if (adsDTO2 != null) {
                com.cloud.hisavana.sdk.common.util.r.f21605a.n(adsDTO2, new DownUpPointBean(this.f21241w, this.f21242x, this.f21243y, this.f21244z, view.getMeasuredHeight(), view.getMeasuredWidth()));
            }
            if (this.Q == null) {
                g7.d dVar = new g7.d(this, new Function0() {
                    @Override
                    public final Object invoke() {
                        return this.f21354a.z(z10);
                    }
                });
                this.Q = dVar;
                dVar.m(this.f21235q);
            }
            this.Q.show();
        } catch (Throwable unused) {
        }
        return -1;
    }

    private void V0() {
        if (this.f21235q == null) {
            TaErrorCode taErrorCode = TaErrorCode.ERROR_SHOW_ADBEAN_NULL;
            C(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
            b4.b().d("TAdInterstitialActivity", "TAdInterstitialActivity --> null == mAdBean |");
            S0();
            return;
        }
        if (d0()) {
            return;
        }
        q1();
        w1();
        P0();
        j0();
        v0();
        e1();
        try {
            com.cloud.hisavana.sdk.manager.a.f21996a.s(getApplicationContext(), this.f21235q, false);
        } catch (Throwable unused) {
        }
    }

    public void W0(View view) {
        r(view, false);
    }

    private void X(View view) {
        if (this.f21231m == null || view == null) {
            return;
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        this.f21231m.removeAllViews();
        this.f21231m.addView(view, new ConstraintLayout.b(-1, -1));
    }

    private void Y(View view, int i10) {
        String string;
        int i11;
        TextView textView = (TextView) view.findViewById(R$id.close_view);
        TextView textView2 = (TextView) view.findViewById(R$id.count_down_view);
        View viewFindViewById = view.findViewById(R$id.separator);
        if (textView == null || textView2 == null || viewFindViewById == null) {
            return;
        }
        if (this.J) {
            try {
                string = getString(R$string.hs_btn_skip);
            } catch (Exception unused) {
                string = "SKIP";
            }
            textView.setText(string);
        }
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.f21353a.C0(view2);
            }
        });
        if (i10 <= 0 || (i11 = this.H) == 0) {
            b4.b().d("TAdInterstitialActivity", "current close delay time is 0, do not count down.");
            view.setEnabled(true);
            textView.setTextColor(Color.parseColor("#222222"));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) textView.getLayoutParams();
            layoutParams.setMarginStart(0);
            textView.setLayoutParams(layoutParams);
            textView2.setVisibility(8);
            viewFindViewById.setVisibility(8);
            view.requestLayout();
            return;
        }
        if (i11 > 0) {
            i10 = Math.min(i10, i11);
        }
        g7.e eVar = this.G;
        if (eVar != null) {
            eVar.d();
        }
        view.setEnabled(false);
        d dVar = new d(1000 * ((long) i10), 1000L, textView2, view, textView, viewFindViewById);
        this.G = dVar;
        dVar.g();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    private void Y0() {
        String str;
        boolean z10;
        char c10;
        ?? r10;
        String str2;
        ViewGroup viewGroup;
        try {
            if (n0(this.f21235q) && (viewGroup = (ViewGroup) findViewById(R$id.content_layout)) != null) {
                viewGroup.setOnTouchListener(new m(this, null));
                viewGroup.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.f21363a.M0(view);
                    }
                });
            }
            this.f21226h = (ViewGroup) findViewById(R$id.llRoot);
            String materialStyle = this.f21235q.getMaterialStyle();
            ViewGroup viewGroup2 = this.f21226h;
            if (viewGroup2 != null) {
                viewGroup2.setOnClickListener(new b(materialStyle));
            }
        } catch (Throwable unused) {
        }
        this.f21225g = (ImageView) findViewById(R$id.ivIcon);
        this.f21227i = (TextView) findViewById(R$id.tvName);
        this.f21228j = (TextView) findViewById(R$id.tvDescription);
        TextView textView = (TextView) findViewById(R$id.tvSourceSize);
        this.f21229k = (TextView) findViewById(R$id.tvBtn);
        AdsDTO adsDTO = this.f21235q;
        if (adsDTO == null || adsDTO.getNativeObject() == null || TextUtils.isEmpty(this.f21235q.getMaterialStyle())) {
            return;
        }
        if (TextUtils.isEmpty(this.f21235q.getAdm()) || this.S) {
            com.cloud.hisavana.sdk.common.util.r rVar = com.cloud.hisavana.sdk.common.util.r.f21605a;
            String strJ = rVar.j(this.f21235q);
            String materialStyle2 = this.f21235q.getMaterialStyle();
            materialStyle2.hashCode();
            switch (materialStyle2) {
                case "I01":
                case "I1101":
                case "I1103":
                case "I1107":
                case "I16901":
                case "I16902":
                case "I91601":
                case "I91602":
                    this.f21227i.setText(this.f21235q.getNativeObject().getTitleTxt());
                    this.f21228j.setText(this.f21235q.getNativeObject().getDescriptionTxt());
                    String buttonTxt = this.f21235q.getNativeObject().getButtonTxt(this.f21235q.getInstallApk());
                    if (TextUtils.isEmpty(buttonTxt)) {
                        buttonTxt = rVar.i();
                    }
                    this.f21229k.setText(buttonTxt);
                    TextPaint paint = this.f21227i.getPaint();
                    paint.setStrokeWidth(2.0f);
                    paint.setStyle(Paint.Style.FILL_AND_STROKE);
                    if (this.f21219b != null && ((this.f21235q.getMaterialStyle().equals("I91601") || this.f21235q.getMaterialStyle().equals("I91602") || this.f21235q.getMaterialStyle().equals("I01")) && !TextUtils.isEmpty(this.f21235q.getScale()) && this.f21235q.getScale().equals("9:16"))) {
                        this.f21219b.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    }
                    if (this.f21235q.getMaterialStyle().equals("I16902") || this.f21235q.getMaterialStyle().equals("I91602")) {
                        c10 = 3;
                        View viewFindViewById = findViewById(R$id.desc_area_view);
                        TextView textView2 = (TextView) findViewById(R$id.score_text);
                        if (textView2 == null) {
                            str2 = strJ;
                            z10 = false;
                            if (textView != null) {
                                F(textView, str2);
                            }
                        } else if (w2.n(this.f21235q)) {
                            this.f21228j.setVisibility(8);
                            viewFindViewById.setVisibility(0);
                            textView2.setText(w2.b(w2.h(this.f21235q)));
                            if (textView != null) {
                                str = TextUtils.isEmpty(strJ) ? strJ : strJ + " · ";
                                F(textView, str);
                                z10 = false;
                            } else {
                                str2 = strJ;
                                z10 = false;
                            }
                        } else {
                            str2 = strJ;
                            viewFindViewById.setVisibility(8);
                            z10 = false;
                            this.f21228j.setVisibility(0);
                            String descriptionTxt = this.f21235q.getNativeObject().getDescriptionTxt();
                            if (!TextUtils.isEmpty(str2)) {
                                descriptionTxt = str2 + " · " + descriptionTxt;
                            }
                            this.f21228j.setText(descriptionTxt);
                        }
                        str = str2;
                    } else {
                        if (this.f21235q.getMaterialStyle().equals("I01") || this.f21235q.getMaterialStyle().equals("I1107")) {
                            TextView textView3 = (TextView) findViewById(R$id.score_text);
                            ImageView imageView = (ImageView) findViewById(R$id.score_icon);
                            if (this.f21235q.getMaterialStyle().equals("I01")) {
                                TextView textView4 = this.f21229k;
                                if (textView4 != null) {
                                    ObjectAnimator objectAnimatorF = rVar.f(textView4);
                                    this.f21218a0 = objectAnimatorF;
                                    if (objectAnimatorF != null) {
                                        objectAnimatorF.start();
                                    }
                                }
                            } else if (this.f21235q.getMaterialStyle().equals("I1107") && this.f21229k != null) {
                                View viewFindViewById2 = findViewById(R$id.view_animator_bg_color);
                                if (this.R == 2) {
                                    this.f21220b0 = rVar.o(this.f21229k, viewFindViewById2, "#260052E2");
                                } else {
                                    this.f21220b0 = rVar.o(this.f21229k, viewFindViewById2, "#4DFFFFFF");
                                }
                            }
                            int i10 = this.O;
                            c10 = 3;
                            if (i10 == 3) {
                                if (this.f21235q.getMaterialStyle().equals("I01")) {
                                    this.f21229k.setText(getString(R$string.hs_download_t01_btn_pull_live));
                                }
                                if (imageView != null) {
                                    try {
                                        imageView.setVisibility(0);
                                    } catch (Throwable unused2) {
                                    }
                                }
                                textView3.setText(w2.b(w2.h(this.f21235q)) + " · " + this.f21235q.getNativeObject().getDescriptionTxt());
                                break;
                            } else if (i10 == 2) {
                                if (imageView != null) {
                                    imageView.setVisibility(8);
                                }
                                if (textView3 != null) {
                                    try {
                                        textView3.setText(rVar.h(this.f21235q.getPslinkInfo().getSourceSize()) + " · " + this.f21235q.getNativeObject().getDescriptionTxt());
                                        break;
                                    } catch (Throwable unused3) {
                                    }
                                }
                                if (this.f21235q.getMaterialStyle().equals("I01")) {
                                    this.f21229k.setText(getString(R$string.hs_download_t01_btn_pull_new));
                                }
                            } else if (this.f21235q.getMaterialStyle().equals("I01")) {
                                this.f21229k.setText(getString(R$string.hs_download_t01_btn_pull_live));
                            }
                            str2 = strJ;
                            z10 = false;
                        } else {
                            str2 = strJ;
                            z10 = false;
                            c10 = 3;
                        }
                        str = str2;
                    }
                    z1();
                    break;
                case "FA14":
                case "I1106":
                    this.f21227i.setText(this.f21235q.getNativeObject().getTitleTxt());
                    this.f21228j.setText(this.f21235q.getNativeObject().getDescriptionTxt());
                    this.f21229k.setText(this.f21235q.getNativeObject().getButtonTxt(this.f21235q.getInstallApk()));
                    TextPaint paint2 = this.f21228j.getPaint();
                    paint2.setStrokeWidth(2.0f);
                    paint2.setStyle(Paint.Style.FILL_AND_STROKE);
                    z1();
                    str = strJ;
                    z10 = false;
                    c10 = 3;
                    break;
                case "I1102":
                    this.f21227i.setText(this.f21235q.getNativeObject().getTitleTxt());
                    this.f21229k.setText(this.f21235q.getNativeObject().getButtonTxt(this.f21235q.getInstallApk()));
                    TextPaint paint3 = this.f21227i.getPaint();
                    paint3.setStrokeWidth(2.0f);
                    paint3.setStyle(Paint.Style.FILL_AND_STROKE);
                    z1();
                    str = strJ;
                    z10 = false;
                    c10 = 3;
                    break;
                default:
                    str = strJ;
                    z10 = false;
                    c10 = 3;
                    break;
            }
            String materialStyle3 = this.f21235q.getMaterialStyle();
            materialStyle3.hashCode();
            switch (materialStyle3.hashCode()) {
                case 2149406:
                    r10 = !materialStyle3.equals("FA14") ? -1 : z10;
                    break;
                case 68925418:
                    r10 = !materialStyle3.equals("I1101") ? -1 : 1;
                    break;
                case 68925419:
                    r10 = !materialStyle3.equals("I1102") ? -1 : 2;
                    break;
                case 68925420:
                    r10 = !materialStyle3.equals("I1103") ? -1 : c10;
                    break;
                case 68925423:
                    r10 = !materialStyle3.equals("I1106") ? -1 : 4;
                    break;
                case 2136845580:
                    r10 = !materialStyle3.equals("I16901") ? -1 : 5;
                    break;
                case 2144081910:
                    r10 = !materialStyle3.equals("I91601") ? -1 : 6;
                    break;
                default:
                    r10 = -1;
                    break;
            }
            switch (r10) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                    if (textView != null) {
                        F(textView, str);
                    }
                    break;
                case 5:
                    if (this.R != 2) {
                        if (textView != null) {
                            F(textView, str);
                        }
                    } else if (this.f21228j != null) {
                        String descriptionTxt2 = this.f21235q.getNativeObject().getDescriptionTxt();
                        if (!TextUtils.isEmpty(str)) {
                            descriptionTxt2 = str + " · " + descriptionTxt2;
                        }
                        this.f21228j.setText(descriptionTxt2);
                    }
                    break;
                case 6:
                    if (this.R != 2) {
                        if (this.f21228j != null) {
                            String descriptionTxt3 = this.f21235q.getNativeObject().getDescriptionTxt();
                            if (!TextUtils.isEmpty(str)) {
                                descriptionTxt3 = str + " · " + descriptionTxt3;
                            }
                            this.f21228j.setText(descriptionTxt3);
                        }
                    } else if (textView != null) {
                        F(textView, str);
                    }
                    break;
            }
        }
    }

    private void a0(AdsDTO adsDTO) {
        if ((this.B == 1 || adsDTO.getDefaultMaterialType() == 2) && this.f21233o == null) {
            InterstitialAdVideoView interstitialAdVideoView = new InterstitialAdVideoView(getApplicationContext());
            this.f21233o = interstitialAdVideoView;
            if (this.I) {
                interstitialAdVideoView.setProgressBarVisibility(8);
            }
            this.f21233o.setAutoReset(true);
            this.f21233o.setAdMediaPlayerListener(new h(adsDTO));
        }
    }

    private void b0(String str) {
        int i10;
        AdsDTO adsDTO;
        InterstitialAdVideoView interstitialAdVideoView;
        ViewGroup.LayoutParams layoutParams;
        b4.b().d("TAdInterstitialActivity", "setMediaData ");
        InterstitialAdVideoView interstitialAdVideoView2 = this.f21233o;
        if (interstitialAdVideoView2 == null) {
            return;
        }
        X(interstitialAdVideoView2);
        try {
            i10 = getResources().getConfiguration().orientation;
        } catch (Exception unused) {
            i10 = 0;
        }
        AdsDTO adsDTO2 = this.f21235q;
        if (adsDTO2 != null && i10 == 1 && adsDTO2.getMaterialStyle().equals("I91602") && w2.g(this.f21235q).equals("9:16") && (layoutParams = this.f21233o.getLayoutParams()) != null) {
            int iL = w2.l(this.f21235q);
            int iK = w2.k(this.f21235q);
            if (iL <= 0 || iK <= 0) {
                layoutParams.width = -1;
                layoutParams.height = -2;
            } else {
                layoutParams.width = com.cloud.sdk.commonutil.util.h.g();
                layoutParams.height = (int) (com.cloud.sdk.commonutil.util.h.g() * (iK / iL));
            }
            this.f21233o.setLayoutParams(layoutParams);
        }
        if (this.f21240v && (interstitialAdVideoView = this.f21233o) != null) {
            interstitialAdVideoView.seekToPosition(interstitialAdVideoView.getDuration());
        }
        if (this.f21239u) {
            return;
        }
        if (this.f21233o != null && !TextUtils.isEmpty(str)) {
            b4.b().d("TAdInterstitialActivity", "setMediaData filePath " + str);
            this.f21233o.setMediaData(str, this.f21235q, this.f21237s == 0.0f, str.startsWith("http"));
            if (!this.f21235q.getMaterialStyle().equals("I01")) {
                this.f21233o.setOnTouchListener(new m(this, null));
                this.f21233o.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.f21359a.f1(view);
                    }
                });
            }
        }
        if (this.f21233o == null || (adsDTO = this.f21235q) == null || adsDTO.getVideoInfo() == null || this.f21235q.getVideoInfo().getVideoMask() == null) {
            return;
        }
        this.f21233o.setCompanionSize(this.f21235q.getVideoInfo().getVideoMask().getResource());
    }

    private void b1() {
        AdsDTO adsDTO;
        View viewFindViewById = findViewById(R$id.ivCancel);
        if (viewFindViewById == null || (adsDTO = this.f21235q) == null) {
            return;
        }
        int closeDelayTime = (!adsDTO.isVastTypeAd() || this.f21235q.getVideoInfo() == null || this.f21235q.getVideoInfo().getDuration() == null || this.f21235q.getVideoInfo().getDuration().intValue() <= 0) ? this.f21235q.getCloseDelayTime() : Math.min(this.f21235q.getCloseDelayTime(), this.f21235q.getVideoInfo().getDuration().intValue());
        b4.b().d("TAdInterstitialActivity", "current close delay time is: " + closeDelayTime);
        if (viewFindViewById.getTag() == null || !viewFindViewById.getTag().equals("close_button")) {
            E(viewFindViewById, closeDelayTime);
        } else {
            Y(viewFindViewById, closeDelayTime);
        }
    }

    public void P(String str, String str2, String str3) {
        if (this.F == null) {
            com.cloud.hisavana.sdk.common.util.v vVar = new com.cloud.hisavana.sdk.common.util.v(this, new a());
            this.F = vVar;
            vVar.k(str);
            this.F.h(str2);
            this.F.g(str3);
            this.F.j(true);
        }
        try {
            this.F.show();
        } catch (Exception e10) {
            b4.b().e("TAdInterstitialActivity", "showRuDialog error: " + e10.getMessage());
        }
    }

    public void c1(View view) {
        AthenaTracker.A(this.f21235q);
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.f21235q, view, this.D);
    }

    private boolean d0() {
        byte b10 = 5;
        this.R = K0(this.f21235q);
        if (TextUtils.isEmpty(this.f21235q.getAdm())) {
            String materialStyle = this.f21235q.getMaterialStyle();
            materialStyle.hashCode();
            switch (materialStyle.hashCode()) {
                case 71690:
                    b10 = !materialStyle.equals("I01") ? (byte) -1 : (byte) 0;
                    break;
                case 2149406:
                    b10 = !materialStyle.equals("FA14") ? (byte) -1 : (byte) 1;
                    break;
                case 68925418:
                    b10 = !materialStyle.equals("I1101") ? (byte) -1 : (byte) 2;
                    break;
                case 68925419:
                    b10 = !materialStyle.equals("I1102") ? (byte) -1 : (byte) 3;
                    break;
                case 68925420:
                    b10 = !materialStyle.equals("I1103") ? (byte) -1 : (byte) 4;
                    break;
                case 68925423:
                    if (!materialStyle.equals("I1106")) {
                        b10 = -1;
                    }
                    break;
                case 68925424:
                    b10 = !materialStyle.equals("I1107") ? (byte) -1 : (byte) 6;
                    break;
                case 2136845580:
                    b10 = !materialStyle.equals("I16901") ? (byte) -1 : (byte) 7;
                    break;
                case 2136845581:
                    b10 = !materialStyle.equals("I16902") ? (byte) -1 : (byte) 8;
                    break;
                case 2144081910:
                    b10 = !materialStyle.equals("I91601") ? (byte) -1 : (byte) 9;
                    break;
                case 2144081911:
                    b10 = !materialStyle.equals("I91602") ? (byte) -1 : (byte) 10;
                    break;
                default:
                    b10 = -1;
                    break;
            }
            switch (b10) {
                case 0:
                    setContentView(R$layout.activity_t_ad_interstitial_01_layout);
                    if (this.R == 2) {
                        this.M = 6;
                    } else {
                        this.M = 7;
                    }
                    com.cloud.hisavana.sdk.common.util.r rVar = com.cloud.hisavana.sdk.common.util.r.f21605a;
                    this.N = rVar.c(this.f21235q);
                    this.O = rVar.d(this.f21235q);
                    break;
                case 1:
                    setContentView(R$layout.activity_t_ad_interstitial_1104_1105_layout);
                    if (this.R != 2) {
                        this.M = 4;
                    } else {
                        this.M = 3;
                    }
                    break;
                case 2:
                    setContentView(R$layout.activity_t_ad_interstitial_1101_layout);
                    if (this.R != 2) {
                        this.M = 1;
                    } else {
                        this.M = 2;
                    }
                    break;
                case 3:
                    setContentView(R$layout.activity_t_ad_interstitial_1102_layout);
                    if (this.R != 2) {
                        this.M = 1;
                    } else {
                        this.M = 2;
                    }
                    break;
                case 4:
                    setContentView(R$layout.activity_t_ad_interstitial_1103_layout);
                    if (this.R != 2) {
                        this.M = 1;
                    } else {
                        this.M = 2;
                    }
                    break;
                case 5:
                    setContentView(R$layout.activity_t_ad_interstitial_1106_layout);
                    if (this.R != 2) {
                        this.M = 4;
                    } else {
                        this.M = 3;
                    }
                    break;
                case 6:
                    setContentView(R$layout.activity_t_ad_interstitial_1107_layout);
                    if (this.R == 2) {
                        this.M = 2;
                    } else {
                        this.M = 1;
                    }
                    this.O = com.cloud.hisavana.sdk.common.util.r.f21605a.d(this.f21235q);
                    break;
                case 7:
                    setContentView(R$layout.activity_t_ad_interstitial_16901_layout);
                    if (this.R != 2) {
                        this.M = 7;
                    } else {
                        this.M = 6;
                    }
                    break;
                case 8:
                    setContentView(R$layout.activity_t_ad_interstitial_16902_layout);
                    if (this.R != 2) {
                        this.M = 7;
                    } else {
                        this.M = 6;
                    }
                    break;
                case 9:
                    setContentView(R$layout.activity_t_ad_interstitial_91601_layout);
                    if (this.R != 2) {
                        this.M = 7;
                    } else {
                        this.M = 6;
                    }
                    break;
                case 10:
                    setContentView(R$layout.activity_t_ad_interstitial_91602_layout);
                    if (this.R != 2) {
                        this.M = 7;
                    } else {
                        this.M = 6;
                    }
                    break;
                default:
                    TaErrorCode taErrorCode = TaErrorCode.ERROR_SHOW_AD_MATERIAL_STYLE_NOT_MATCH;
                    C(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
                    finish();
                    b4.b().d("TAdInterstitialActivity", "TAdTemplateActivity --> 没有匹配到 materialStyle --> 配置错误 materialStyle=" + this.f21235q.getMaterialStyle());
                    return true;
            }
        } else if ("I01".equals(this.f21235q.getMaterialStyle())) {
            this.S = true;
            com.cloud.hisavana.sdk.common.util.r rVar2 = com.cloud.hisavana.sdk.common.util.r.f21605a;
            rVar2.e(this.f21235q);
            this.N = rVar2.c(this.f21235q);
            this.O = rVar2.d(this.f21235q);
            setContentView(R$layout.activity_t_ad_interstitial_01_layout);
            if (this.R == 2) {
                this.M = 6;
            } else {
                this.M = 7;
            }
        } else {
            setContentView(R$layout.activity_t_ad_interstitial_adm_layout);
            if (this.R == 2) {
                this.M = 5;
            } else {
                this.M = 1;
            }
        }
        A();
        return false;
    }

    private void e1() {
        ViewGroup viewGroup;
        try {
            if (this.f21235q.getMaterialStyle().equals("I01") && this.R == 2 && (viewGroup = (ViewGroup) findViewById(R$id.content_layout)) != null) {
                viewGroup.setOnTouchListener(new m(this, null));
            }
        } catch (Throwable unused) {
        }
    }

    public void f1(View view) {
        i0(view, false);
    }

    public int h0(View view) {
        return T(view, false);
    }

    private void h1() {
        if (this.f21235q.isInteractiveAd()) {
            if (this.f21230l == null) {
                try {
                    this.f21230l = new InteractiveWebView(getApplicationContext());
                } catch (Throwable th2) {
                    b4.b().e("TAdInterstitialActivity", "create webview error: " + Log.getStackTraceString(th2));
                    this.f21230l = null;
                }
            }
            if (this.f21231m == null || this.f21230l == null) {
                L0();
                return;
            }
            j1();
            String materialStyle = this.f21235q.getMaterialStyle();
            if (!TextUtils.isEmpty(materialStyle) && (materialStyle.equals("I1107") || materialStyle.equals("I91601") || materialStyle.equals("I91602") || materialStyle.equals("I16902") || materialStyle.equals("I01") || (materialStyle.equals("I16901") && this.R == 2))) {
                String scale = this.f21235q.getScale();
                if (TextUtils.isEmpty(scale)) {
                    scale = (this.f21235q.getScales() == null || this.f21235q.getScales().isEmpty()) ? "" : this.f21235q.getScales().get(0);
                }
                ViewGroup.LayoutParams layoutParams = this.f21231m.getLayoutParams();
                if (layoutParams instanceof ConstraintLayout.b) {
                    ((ConstraintLayout.b) layoutParams).I = scale;
                }
            }
            X(this.f21230l);
        }
    }

    public int i0(View view, boolean z10) {
        return V(view, z10, false, false);
    }

    public void i1(View view) {
        if (!this.S) {
            U(view, false, true);
        } else {
            this.T = true;
            com.cloud.hisavana.sdk.common.util.r.f21605a.r(this.f21217a);
        }
    }

    private void j0() {
        AdsDTO adsDTO = this.f21235q;
        if (adsDTO == null || adsDTO.getDisplayRule() != Constants.AdDisplayRule.RU || this.f21231m == null) {
            return;
        }
        if (this.f21234p == null) {
            AdDisclaimerView adDisclaimerView = new AdDisclaimerView(this);
            this.f21234p = adDisclaimerView;
            adDisclaimerView.setListener(new AdDisclaimerView.b() {
                @Override
                public final void a(String str, String str2, String str3) {
                    this.f21351a.P(str, str2, str3);
                }
            });
        }
        ConstraintLayout.b bVar = new ConstraintLayout.b(-1, getResources().getDimensionPixelOffset(R$dimen.ad_disclaimer_height));
        bVar.f7391t = this.f21231m.getId();
        bVar.f7395v = this.f21231m.getId();
        bVar.f7375l = this.f21231m.getId();
        if (this.f21234p.getParent() != null) {
            ((ViewGroup) this.f21234p.getParent()).removeView(this.f21234p);
        }
        this.f21231m.addView(this.f21234p, bVar);
        this.f21231m.post(new Runnable() {
            @Override
            public final void run() {
                this.f21352a.v1();
            }
        });
        v0();
    }

    private void j1() {
        this.f21230l.setWebClientCallback(this.f21235q);
        this.f21230l.setOnTouchListener(new m(this, null));
        this.f21230l.setInteractiveListener(new k(this));
    }

    public void k0(String str) {
        AdsDTO adsDTO = this.f21235q;
        if (adsDTO != null) {
            AthenaTracker.y(adsDTO, str);
        }
    }

    private void k1(View view) {
        ViewParent parent;
        if (view == null || (parent = view.getParent()) == null || !(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(view);
    }

    private void m1() {
        AdChoicesView adChoicesView = (AdChoicesView) findViewById(R$id.ad_choices_view);
        this.f21221c = adChoicesView;
        if (adChoicesView != null) {
            adChoicesView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f21358a.Q0(view);
                }
            });
        }
        AdBadgeView adBadgeView = (AdBadgeView) findViewById(R$id.ad_badge_view);
        this.f21222d = adBadgeView;
        if (adBadgeView != null) {
            adBadgeView.setDisplayStyle(this.f21235q.getDisplayRule(), com.cloud.hisavana.sdk.common.util.e0.c(this.f21235q));
        }
        AdCloseView adCloseView = (AdCloseView) findViewById(R$id.ad_close_view);
        this.f21223e = adCloseView;
        if (adCloseView != null) {
            adCloseView.setDisplayStyle(this.f21235q.getDisplayRule(), AdCloseView.CloseImageType.EXPAND);
            s2.p().f(this, this.f21223e, this, this.f21235q);
        }
        try {
            boolean zA = h0.a(this.f21235q);
            StoreMarkView storeMarkView = (StoreMarkView) findViewById(R$id.ps_mark_view);
            this.f21224f = storeMarkView;
            if (storeMarkView != null) {
                storeMarkView.setVisibility(zA ? 0 : 4);
                this.f21224f.setTextSize(6.0f);
                if (!this.f21235q.getMaterialStyle().equals("I1107") || this.R == 2) {
                    this.f21224f.setTextColor(-8882056);
                    this.f21224f.setTextSize(6.0f);
                } else {
                    this.f21224f.setTextColor(Color.parseColor("#FFFFFFFF"));
                    this.f21224f.setTextSize(8.0f);
                }
                this.f21224f.attachInfo(this.f21235q);
            }
        } catch (Throwable unused) {
        }
    }

    private boolean n0(AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.getMaterialStyle() == null) {
            return false;
        }
        return adsDTO.getMaterialStyle().equals("I91601") || adsDTO.getMaterialStyle().equals("I16901") || adsDTO.getMaterialStyle().equals("I91602") || adsDTO.getMaterialStyle().equals("I16902") || adsDTO.getMaterialStyle().equals("I01");
    }

    private void p1() {
        b bVar = null;
        View viewInflate = LayoutInflater.from(this).inflate(R$layout.ad_interstitial_end_card_layout, (ViewGroup) null);
        int[] iArrS = S(viewInflate);
        viewInflate.findViewById(R$id.close_view).setOnClickListener(new e());
        if (this.f21225g != null) {
            FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R$id.ffIcon);
            k1(this.f21225g);
            frameLayout.addView(this.f21225g, new FrameLayout.LayoutParams(-1, -1));
        } else if (this.f21235q.getSource() == 4 && !TextUtils.isEmpty(this.f21235q.getLogoUrl())) {
            TranCircleImageView tranCircleImageView = new TranCircleImageView(this);
            DownLoadRequest.n(this.f21235q.getLogoUrl(), this.f21235q, null, tranCircleImageView);
            tranCircleImageView.setRadius(com.cloud.sdk.commonutil.util.h.a(4.0f));
            ((FrameLayout) viewInflate.findViewById(R$id.ffIcon)).addView(tranCircleImageView, new FrameLayout.LayoutParams(-1, -1));
            if (this.f21235q.isVastTypeAd()) {
                tranCircleImageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.f21316a.T0(view);
                    }
                });
            }
        } else if (this.f21235q.getNativeObject() == null || TextUtils.isEmpty(this.f21235q.getNativeObject().getLogoUrl())) {
            viewInflate.findViewById(R$id.ffIcon).setVisibility(8);
        } else {
            TranCircleImageView tranCircleImageView2 = new TranCircleImageView(this);
            DownLoadRequest.o(this.f21235q.getNativeObject().getLogoUrl(), this.f21235q, 1, null, tranCircleImageView2);
            tranCircleImageView2.setRadius(com.cloud.sdk.commonutil.util.h.a(4.0f));
            ((FrameLayout) viewInflate.findViewById(R$id.ffIcon)).addView(tranCircleImageView2, new FrameLayout.LayoutParams(-1, -1));
            if (this.f21235q.isVastTypeAd()) {
                tranCircleImageView2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.f21317a.W0(view);
                    }
                });
            }
        }
        TextView textView = this.f21227i;
        if (textView != null && !TextUtils.isEmpty(textView.getText())) {
            ((TextView) viewInflate.findViewById(R$id.tvName)).setText(this.f21227i.getText());
        } else if (this.f21235q.getNativeObject() == null || TextUtils.isEmpty(this.f21235q.getNativeObject().getTitleTxt())) {
            viewInflate.findViewById(R$id.tvName).setVisibility(8);
        } else {
            ((TextView) viewInflate.findViewById(R$id.tvName)).setText(this.f21235q.getNativeObject().getTitleTxt());
        }
        if (this.f21235q.getNativeObject() == null || TextUtils.isEmpty(this.f21235q.getNativeObject().getButtonTxt(this.f21235q.getInstallApk()))) {
            viewInflate.findViewById(R$id.ff_btn).setVisibility(8);
        } else {
            TextView textView2 = (TextView) viewInflate.findViewById(R$id.btn);
            textView2.setText(this.f21235q.getNativeObject().getButtonTxt(this.f21235q.getInstallApk()));
            textView2.setOnClickListener(new f());
        }
        FrameLayout frameLayout2 = (FrameLayout) viewInflate.findViewById(R$id.ff_ps_mark_view);
        StoreMarkView storeMarkView = (StoreMarkView) findViewById(R$id.ps_mark_view);
        k1(storeMarkView);
        frameLayout2.addView(storeMarkView, new FrameLayout.LayoutParams(-1, -1));
        if (!w2.n(this.f21235q)) {
            viewInflate.findViewById(R$id.desc_area_view).setVisibility(8);
            this.L = 3;
        } else if (w2.m(this.f21235q)) {
            ((TextView) viewInflate.findViewById(R$id.score_text)).setText(w2.b(w2.h(this.f21235q)));
            ((TextView) viewInflate.findViewById(R$id.download_text)).setText(com.cloud.hisavana.sdk.common.util.c0.b(w2.d(this.f21235q)));
            this.L = 1;
        } else {
            viewInflate.findViewById(R$id.desc_area_view).setVisibility(8);
            viewInflate.findViewById(R$id.score_area_view).setVisibility(0);
            float fH = w2.h(this.f21235q);
            if (fH > 0.0f && fH < 0.5f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon1)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon2)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon3)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fH >= 0.5f && fH < 1.0f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon1)).setImageResource(R$drawable.hs_ad_halfstar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon2)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon3)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fH >= 1.0f && fH < 1.5f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon2)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon3)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fH >= 1.5f && fH < 2.0f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon2)).setImageResource(R$drawable.hs_ad_halfstar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon3)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fH >= 2.0f && fH < 2.5f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon3)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fH >= 2.5f && fH < 3.0f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon3)).setImageResource(R$drawable.hs_ad_halfstar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fH >= 3.0f && fH < 3.5f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_nostar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fH >= 3.5f && fH < 4.0f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon4)).setImageResource(R$drawable.hs_ad_halfstar);
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fH >= 4.0f && fH < 4.5f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_nostar);
            } else if (fH >= 4.5f && fH < 5.0f) {
                ((ImageView) viewInflate.findViewById(R$id.score_icon5)).setImageResource(R$drawable.hs_ad_halfstar);
            }
            this.L = 2;
        }
        viewInflate.setOnTouchListener(new m(this, bVar));
        viewInflate.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TAdInterstitialActivity.Z0(view);
            }
        });
        if (n0(this.f21235q)) {
            setContentView(viewInflate);
        } else {
            ViewGroup viewGroup = (ViewGroup) findViewById(R$id.content_layout);
            if (viewGroup instanceof ConstraintLayout) {
                ConstraintLayout.b bVar2 = (iArrS == null || iArrS.length != 2) ? new ConstraintLayout.b(-1, -1) : new ConstraintLayout.b(iArrS[0], iArrS[1]);
                bVar2.f7391t = viewGroup.getId();
                bVar2.f7395v = viewGroup.getId();
                bVar2.f7375l = viewGroup.getId();
                bVar2.f7369i = viewGroup.getId();
                viewGroup.removeAllViews();
                viewGroup.addView(viewInflate, bVar2);
            } else {
                viewGroup.removeAllViews();
                viewGroup.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            }
        }
        this.K = true;
        this.f21235q.setEndCardType(this.L);
    }

    private void q0() {
        AdsDTO adsDTO = this.f21235q;
        if (adsDTO == null) {
            b4.b().d("TAdInterstitialActivity", "attachAdmView adBean is null");
            S0();
            return;
        }
        String scale = adsDTO.getScale();
        if (TextUtils.isEmpty(scale)) {
            scale = (this.f21235q.getScales() == null || this.f21235q.getScales().isEmpty()) ? "" : this.f21235q.getScales().get(0);
        }
        if (TextUtils.isEmpty(scale)) {
            b4.b().e("TAdInterstitialActivity", "attachAdmView scale is empty,finish");
            S0();
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f21231m.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            ((ConstraintLayout.b) layoutParams).I = scale;
        }
        String str = this.f21235q.getAdm() + TadmWebView.JS_TEXT;
        if (this.f21217a == null) {
            try {
                this.f21217a = new TadmWebView(getApplicationContext());
            } catch (Throwable th2) {
                b4.b().e("TAdInterstitialActivity", "create webview error: " + Log.getStackTraceString(th2));
                this.f21217a = null;
                S0();
                return;
            }
        }
        N(str);
        X(this.f21217a);
    }

    private void q1() {
        this.f21231m = (ViewGroup) findViewById(R$id.main_layout);
        this.f21219b = (TranCircleImageView) findViewById(R$id.iv_main_image);
        Y0();
        M(this.f21235q);
        b1();
        m1();
        if (this.K) {
            p1();
        }
    }

    public int r(View view, boolean z10) {
        return s(view, z10, false);
    }

    private int s(View view, boolean z10, boolean z11) {
        return t(view, z10, z11, false);
    }

    private void s0(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        DownLoadRequest.n(adsDTO.getAdImgUrl(), adsDTO, new g(), this.f21219b);
        b4.b().d("TAdInterstitialActivity", "use image to show ad is:= " + this.f21235q.getAdImgUrl());
    }

    private int t(View view, boolean z10, boolean z11, boolean z12) {
        int iT = 0;
        try {
            b4.b().d("TAdInterstitialActivity", "asyncAction");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.A > 1000 || z12) {
                if (!z10) {
                    iT = T(view, z11);
                } else if (!this.J || this.K) {
                    O("_close", null);
                    if (!isFinishing()) {
                        S0();
                    }
                } else {
                    p1();
                }
                this.A = jCurrentTimeMillis;
            }
        } catch (Throwable th2) {
            b4.b().e(Log.getStackTraceString(th2));
        }
        return iT;
    }

    private void t1() {
        ImageView imageView = (ImageView) findViewById(R$id.im_volume);
        this.f21232n = imageView;
        if (imageView != null) {
            imageView.setVisibility(0);
            B(this.f21237s);
        }
    }

    private void v0() {
        View viewFindViewById = findViewById(R$id.ad_flag);
        if (viewFindViewById != null) {
            viewFindViewById.bringToFront();
        }
    }

    public void v1() {
        this.f21234p.setDisplayStyle(this.f21235q.getDisplayRule(), com.cloud.hisavana.sdk.common.util.e0.f(this.f21235q), com.cloud.hisavana.sdk.common.util.e0.e(this.f21235q), this.f21231m.getMeasuredHeight());
    }

    public void w0(View view) {
        r(view, true);
    }

    private void w1() {
        AdsDTO adsDTO = this.f21235q;
        if (adsDTO == null) {
            L0();
            return;
        }
        if (!TextUtils.isEmpty(adsDTO.getAdm())) {
            q0();
        } else if (this.f21235q.isInteractiveAd()) {
            D0(this.f21235q);
        } else if (this.f21235q.isVastTypeAd()) {
            J0(this.f21235q);
        } else if (this.f21235q.getSource() != 4) {
            x0(this.f21235q);
        } else if (this.f21235q.getDefaultMaterialType() == 1) {
            s0(this.f21235q);
        } else {
            J0(this.f21235q);
        }
        y1();
    }

    private void x0(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        DownLoadRequest.o(adsDTO.getAdImgUrl(), adsDTO, 2, new i(), this.f21219b);
        b4.b().d("TAdInterstitialActivity", "use image to show ad is:= " + this.f21235q.getAdImgUrl());
    }

    public void x1() {
        v2 v2Var;
        WeakReference weakReference = f21216c0;
        if (weakReference == null || (v2Var = (v2) weakReference.get()) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f21234p);
        arrayList.add(this.f21223e);
        arrayList.add(this.f21224f);
        arrayList.add(this.f21221c);
        arrayList.add(this.f21222d);
        com.cloud.hisavana.sdk.z.a(v2Var.v(), this.f21235q, this.f21226h, arrayList);
    }

    private void y1() {
        ViewGroup viewGroup;
        final View childAt;
        if (this.f21235q == null || this.f21238t || (viewGroup = this.f21231m) == null || viewGroup.getChildCount() <= 0 || (childAt = this.f21231m.getChildAt(0)) == null) {
            return;
        }
        childAt.post(new Runnable() {
            @Override
            public final void run() {
                this.f21361a.c1(childAt);
            }
        });
    }

    public Unit z(boolean z10) {
        if (c7.b.h()) {
            HSToastUtil.f(getString(R$string.hs_download_in_palm_store));
        }
        AdsDTO adsDTO = this.f21235q;
        if (adsDTO != null) {
            adsDTO.setAdClickTracking(false);
        }
        this.U = true;
        s(getWindow().getDecorView(), z10, true);
        if (!this.S || this.V) {
            L0();
        }
        return Unit.f64096a;
    }

    private void z1() {
        try {
            TextView textView = this.f21229k;
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.f21356a.i1(view);
                    }
                });
            }
        } catch (Throwable unused) {
        }
    }

    public void L0() {
        O("_close", null);
        if (isFinishing()) {
            return;
        }
        S0();
    }

    @Override
    public void onBackPressed() {
        b4.b().d("TAdInterstitialActivity", "sendBroadcast(TAG_CLOSE);");
        AdsDTO adsDTO = this.f21235q;
        if (adsDTO == null || !adsDTO.isVastTypeAd()) {
            O("_close", null);
            super.onBackPressed();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.W = -1;
        this.X = -1;
        V0();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        setTitle((CharSequence) null);
        if (c7.b.j() == 1) {
            setRequestedOrientation(1);
        } else if (c7.b.j() == 0) {
            setRequestedOrientation(0);
        }
        try {
            if (getIntent() != null) {
                K0((AdsDTO) getIntent().getParcelableExtra("mAdBean"));
            }
        } catch (Exception unused) {
        }
        super.onCreate(bundle);
        if (com.cloud.sdk.commonutil.util.e.h()) {
            this.f21237s = c7.b.n() ? 0.0f : 1.0f;
            A1();
            this.C = true;
        } else {
            com.cloud.sdk.commonutil.util.e.g(getApplicationContext());
            C(TaErrorCode.CODE_INIT_ERROR, TaErrorCode.ERROR_SHOW_INIT_ERROR.getErrorMessage());
            finish();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        O("_close", null);
        O("_destroy", null);
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(this.f21235q);
        com.cloud.sdk.commonutil.util.k.a(this.f21219b);
        com.cloud.sdk.commonutil.util.k.a(this.f21225g);
        com.cloud.sdk.commonutil.util.k.a(this.f21221c);
        ViewGroup viewGroup = this.f21226h;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.f21226h = null;
        }
        ViewGroup viewGroup2 = this.f21231m;
        if (viewGroup2 != null) {
            viewGroup2.removeAllViews();
            this.f21231m = null;
        }
        TadmWebView tadmWebView = this.f21217a;
        if (tadmWebView != null) {
            tadmWebView.destroy();
            this.f21217a = null;
        }
        com.cloud.hisavana.sdk.q qVar = this.E;
        if (qVar != null) {
            qVar.c();
            this.E = null;
        }
        InteractiveWebView interactiveWebView = this.f21230l;
        if (interactiveWebView != null) {
            interactiveWebView.destroy();
            this.f21230l = null;
        }
        InterstitialAdVideoView interstitialAdVideoView = this.f21233o;
        if (interstitialAdVideoView != null) {
            interstitialAdVideoView.release();
            this.f21233o = null;
        }
        if (this.f21234p != null) {
            this.f21234p = null;
        }
        com.cloud.hisavana.sdk.common.util.v vVar = this.F;
        if (vVar != null) {
            vVar.dismiss();
            this.F = null;
        }
        g7.e eVar = this.G;
        if (eVar != null) {
            eVar.d();
            this.G = null;
        }
        f21216c0 = null;
        try {
            g7.d dVar = this.Q;
            if (dVar != null) {
                if (dVar.l()) {
                    this.Q.dismiss();
                }
                this.Q = null;
            }
        } catch (Throwable unused) {
        }
        try {
            ObjectAnimator objectAnimator = this.f21218a0;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.f21218a0 = null;
            }
            Runnable runnable = this.f21220b0;
            if (runnable != null) {
                com.cloud.hisavana.sdk.common.util.r.f21605a.m(this.f21229k, runnable);
            }
        } catch (Exception unused2) {
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        b4.b().d("TAdInterstitialActivity", "onNewIntent ----------------------->");
        if (this.C) {
            setIntent(intent);
            A1();
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        try {
            g7.d dVar = this.Q;
            if (dVar == null || !dVar.l()) {
                return;
            }
            this.Q.dismiss();
        } catch (Throwable th2) {
            b4.b().w("TAdInterstitialActivity", "onPause dismiss bubble dialog failed: " + th2.getMessage());
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (Build.VERSION.SDK_INT <= 29) {
            A();
        }
        try {
            if (this.O == 3 && this.P) {
                this.P = false;
                if (c7.b.h()) {
                    HSToastUtil.f(getString(R$string.hs_interstitial_breadk_ended));
                }
                L0();
            }
        } catch (Throwable unused) {
        }
    }

    class j implements f4 {
        j() {
        }

        @Override
        public void a() {
            TAdInterstitialActivity.this.V = true;
            if (TAdInterstitialActivity.this.U) {
                b4.b().d("TAdInterstitialActivity", "handleThePageClosingProcess closeAd");
                TAdInterstitialActivity.this.L0();
            }
        }

        @Override
        public int b(float f10, float f11, float f12, float f13, boolean z10) {
            if (TAdInterstitialActivity.this.S) {
                TAdInterstitialActivity tAdInterstitialActivity = TAdInterstitialActivity.this;
                tAdInterstitialActivity.D(tAdInterstitialActivity.f21217a, f10, f11, f12, f13);
            } else {
                TAdInterstitialActivity.this.f21241w = f10;
                TAdInterstitialActivity.this.f21242x = f11;
                TAdInterstitialActivity.this.f21243y = f12;
                TAdInterstitialActivity.this.f21244z = f13;
            }
            if (!TAdInterstitialActivity.this.S) {
                TAdInterstitialActivity tAdInterstitialActivity2 = TAdInterstitialActivity.this;
                return tAdInterstitialActivity2.h0(tAdInterstitialActivity2.f21217a);
            }
            boolean z11 = TAdInterstitialActivity.this.T;
            TAdInterstitialActivity.this.T = false;
            TAdInterstitialActivity tAdInterstitialActivity3 = TAdInterstitialActivity.this;
            return tAdInterstitialActivity3.V(tAdInterstitialActivity3.f21217a, false, z11, z10);
        }

        @Override
        public void a(String str, int i10) {
            try {
                if (TAdInterstitialActivity.this.f21235q != null) {
                    String triggerId = TAdInterstitialActivity.this.f21235q.getTriggerId();
                    String codeSeatId = TAdInterstitialActivity.this.f21235q.getCodeSeatId();
                    Bundle bundle = new Bundle();
                    bundle.putString("s_err_code", i10 + "");
                    bundle.putString("error_url", str);
                    SSPTrackingHelper.f21368a.N(Integer.valueOf(TaErrorCode.ERROR_SHOW_ADM_LOAD_WEB_MATERIAL_ERROR.getErrorCode()), triggerId, codeSeatId, TAdInterstitialActivity.this.f21235q, bundle);
                }
            } catch (Throwable unused) {
            }
            TAdInterstitialActivity.this.L0();
        }
    }

    class a implements com.cloud.hisavana.sdk.common.util.v.a {
        a() {
        }

        @Override
        public void c() {
            TAdInterstitialActivity.this.F.dismiss();
        }

        @Override
        public void a() {
        }

        @Override
        public void b() {
        }
    }

    public static void Z0(View view) {
    }

    public static void r0(View view) {
    }
}
