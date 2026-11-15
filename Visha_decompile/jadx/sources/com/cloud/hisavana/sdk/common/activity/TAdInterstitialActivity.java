package com.cloud.hisavana.sdk.common.activity;

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
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.webkit.ProxyConfig;
import com.cloud.hisavana.sdk.C0521r;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.api.view.AdBadgeView;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.AdDisclaimerView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.common.activity.TAdInterstitialActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.common.widget.InteractiveWebView;
import com.cloud.hisavana.sdk.common.widget.TadmWebView;
import com.cloud.hisavana.sdk.common.widget.video.InterstitialAdVideoView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.u;
import com.cloud.hisavana.sdk.w;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import com.cloud.sdk.commonutil.widget.TranCircleImageView;
import defpackage.c74;
import defpackage.cy9;
import defpackage.hm4;
import defpackage.hvd;
import defpackage.ikd;
import defpackage.kn8;
import defpackage.o2d;
import defpackage.p5;
import defpackage.pp4;
import defpackage.qk1;
import defpackage.r6;
import defpackage.t6;
import defpackage.u37;
import defpackage.u5;
import defpackage.ul4;
import defpackage.vkd;
import defpackage.vnd;
import defpackage.zfb;
import defpackage.zl4;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Random;

public class TAdInterstitialActivity extends Activity {
    public static WeakReference d0;
    public long B;
    public int C;
    public boolean D;
    public C0521r F;
    public zl4 G;
    public qk1 H;
    public u5 R;
    public int S;
    public TadmWebView b;
    public ObjectAnimator b0;
    public TranCircleImageView c;
    public Runnable c0;
    public AdChoicesView d;
    public AdBadgeView e;
    public AdCloseView f;
    public StoreMarkView g;
    public ImageView h;
    public ViewGroup i;
    public TextView j;
    public TextView k;
    public TextView l;
    public InteractiveWebView m;
    public ViewGroup n;
    public ImageView o;
    public InterstitialAdVideoView p;
    public AdDisclaimerView q;
    public AdsDTO r = null;
    public String s = "";
    public float t = 0.0f;
    public boolean u = false;
    public boolean v = false;
    public boolean w = false;
    public float x = -1.0f;
    public float y = -1.0f;
    public float z = -1.0f;
    public float A = -1.0f;
    public final l E = new l(this);
    public int I = -1;
    public boolean J = false;
    public boolean K = false;
    public boolean L = false;
    public int M = 0;
    public int N = 1;
    public boolean O = false;
    public int P = 0;
    public boolean Q = false;
    public boolean T = false;
    public boolean U = false;
    public boolean V = false;
    public boolean W = false;
    public int X = -1;
    public int Y = -1;
    public int Z = -1;
    public int a0 = -1;

    public class a implements zl4.a {
        public a() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b() {
        }

        @Override
        public void c() {
            TAdInterstitialActivity.this.G.dismiss();
        }
    }

    public class b implements View.OnClickListener {
        public final String b;

        public b(String str) {
            this.b = str;
        }

        @Override
        public void onClick(View view) {
            if (!TextUtils.equals(this.b, "I01")) {
                TAdInterstitialActivity.this.i0(view, false);
            } else if (!TAdInterstitialActivity.this.T) {
                TAdInterstitialActivity.this.U(view, false, true);
            } else {
                TAdInterstitialActivity.this.U = true;
                HSCommonUtils.a.v(TAdInterstitialActivity.this.b);
            }
        }
    }

    public class c extends qk1 {
        public final ProgressBar f;
        public final TextView g;
        public final View h;
        public final View i;
        public final ImageView j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(long j, long j2, ProgressBar progressBar, TextView textView, View view, View view2, ImageView imageView) {
            super(j, j2);
            this.f = progressBar;
            this.g = textView;
            this.h = view;
            this.i = view2;
            this.j = imageView;
        }

        @Override
        public void e() {
            TAdInterstitialActivity.this.H.d();
            this.h.setVisibility(0);
            if (this.f != null && TAdInterstitialActivity.this.J) {
                this.f.setVisibility(4);
            } else if (TAdInterstitialActivity.this.r.getMaterialStyle().equals("I01")) {
                this.i.setVisibility(0);
                ImageView imageView = this.j;
                if (imageView != null) {
                    imageView.setImageResource(R.drawable.ad_rewarded_time_rest_done);
                }
                this.g.setText(TAdInterstitialActivity.this.getResources().getString(R.string.hs_download_t01_countdown_tv_done));
            } else {
                this.g.setVisibility(4);
            }
            TAdInterstitialActivity.this.I = 0;
        }

        @Override
        public void f(long j) {
            TAdInterstitialActivity.this.I = (int) Math.ceil(j / 1000.0f);
            if (this.f != null && TAdInterstitialActivity.this.J) {
                ProgressBar progressBar = this.f;
                progressBar.setProgress(progressBar.getMax() - TAdInterstitialActivity.this.I);
            } else {
                try {
                    if (TAdInterstitialActivity.this.r.getMaterialStyle().equals("I01")) {
                        this.g.setText(String.format(Locale.getDefault(), TAdInterstitialActivity.this.getResources().getString(R.string.hs_download_t01_countdown_tv), Integer.valueOf(TAdInterstitialActivity.this.I)));
                    } else {
                        this.g.setText(String.valueOf(TAdInterstitialActivity.this.I));
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public class d extends qk1 {
        public final TextView f;
        public final View g;
        public final TextView h;
        public final View i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(long j, long j2, TextView textView, View view, TextView textView2, View view2) {
            super(j, j2);
            this.f = textView;
            this.g = view;
            this.h = textView2;
            this.i = view2;
        }

        @Override
        public void e() {
            TAdInterstitialActivity.this.H.d();
            this.g.setEnabled(true);
            this.h.setTextColor(Color.parseColor("#222222"));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.h.getLayoutParams();
            layoutParams.setMarginStart(0);
            this.h.setLayoutParams(layoutParams);
            this.f.setVisibility(8);
            this.i.setVisibility(8);
            this.g.requestLayout();
            TAdInterstitialActivity.this.I = 0;
        }

        @Override
        public void f(long j) {
            TAdInterstitialActivity.this.I = (int) Math.ceil(j / 1000.0f);
            this.f.setText(String.valueOf(TAdInterstitialActivity.this.I));
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View view) {
            TAdInterstitialActivity.this.r(view, true);
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override
        public void onClick(View view) {
            try {
                if (TAdInterstitialActivity.this.T) {
                    TAdInterstitialActivity.this.U = true;
                    TAdInterstitialActivity.this.V = true;
                    HSCommonUtils.a.v(TAdInterstitialActivity.this.b);
                } else {
                    TAdInterstitialActivity.this.r(view, false);
                }
                if (!TAdInterstitialActivity.this.T || TAdInterstitialActivity.this.W) {
                    TAdInterstitialActivity.this.H0();
                }
            } catch (Throwable unused) {
            }
        }
    }

    public class g extends DrawableResponseListener {
        public g() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            if (taErrorCode != null) {
                TAdInterstitialActivity.this.B(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
            }
            TAdInterstitialActivity.this.finish();
        }

        @Override
        public void g(int i, AdImage adImage) {
            if (TAdInterstitialActivity.this.c == null || TAdInterstitialActivity.this.r.getMaterialStyle().equals("I01")) {
                return;
            }
            TAdInterstitialActivity.this.c.setOnTouchListener(new m(TAdInterstitialActivity.this, null));
            TAdInterstitialActivity.this.c.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.j(view);
                }
            });
        }

        public final void j(View view) {
            TAdInterstitialActivity.this.i0(view, false);
        }
    }

    public class h extends vkd {
        public h(AdsDTO adsDTO) {
            super(adsDTO);
        }

        @Override
        public void b(long j, long j2, int i) {
            if (TAdInterstitialActivity.this.w) {
                return;
            }
            super.b(j, j2, i);
        }

        @Override
        public void d() {
            if (!TAdInterstitialActivity.this.v) {
                super.d();
            }
            TAdInterstitialActivity.this.v = true;
        }

        @Override
        public void onComplete() {
            if (!TAdInterstitialActivity.this.w) {
                super.onComplete();
            }
            TAdInterstitialActivity.this.w = true;
        }

        @Override
        public void onVolumeChanged(float f) {
            super.onVolumeChanged(f);
            if (TAdInterstitialActivity.this.o == null) {
                return;
            }
            TAdInterstitialActivity.this.t = f;
            TAdInterstitialActivity.this.A(f);
        }
    }

    public class i extends DrawableResponseListener {
        public i() {
        }

        public void j(View view) {
            TAdInterstitialActivity.this.i0(view, false);
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            if (taErrorCode != null) {
                TAdInterstitialActivity.this.B(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
            }
            TAdInterstitialActivity.this.finish();
        }

        @Override
        public void g(int i, AdImage adImage) {
            if (adImage != null && adImage.isAdImageRecycled()) {
                TAdInterstitialActivity.this.B(i, "bitmap is null");
                TAdInterstitialActivity.this.finish();
            } else {
                if (TAdInterstitialActivity.this.c == null || TAdInterstitialActivity.this.r.getMaterialStyle().equals("I01")) {
                    return;
                }
                TAdInterstitialActivity.this.c.setOnTouchListener(new m(TAdInterstitialActivity.this, null));
                TAdInterstitialActivity.this.c.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.j(view);
                    }
                });
            }
        }
    }

    public static class k implements InteractiveWebView.c {
        public WeakReference a;

        public k(TAdInterstitialActivity tAdInterstitialActivity) {
            this.a = new WeakReference(tAdInterstitialActivity);
        }

        @Override
        public void a(String str) {
            TAdInterstitialActivity tAdInterstitialActivity;
            WeakReference weakReference = this.a;
            if (weakReference == null || (tAdInterstitialActivity = (TAdInterstitialActivity) weakReference.get()) == null) {
                return;
            }
            tAdInterstitialActivity.k0(str);
        }

        @Override
        public void b() {
            TAdInterstitialActivity tAdInterstitialActivity;
            WeakReference weakReference = this.a;
            if (weakReference == null || (tAdInterstitialActivity = (TAdInterstitialActivity) weakReference.get()) == null) {
                return;
            }
            tAdInterstitialActivity.C(tAdInterstitialActivity.m, tAdInterstitialActivity.x, tAdInterstitialActivity.y, tAdInterstitialActivity.z, tAdInterstitialActivity.A);
            tAdInterstitialActivity.B0();
        }

        @Override
        public void c() {
            ikd.b().d("TAdInterstitialActivity", "timeoutShutdown");
        }
    }

    public class l extends com.cloud.hisavana.sdk.common.tranmeasure.a {
        public final WeakReference b;

        public l(TAdInterstitialActivity tAdInterstitialActivity) {
            this.b = new WeakReference(tAdInterstitialActivity);
        }

        @Override
        public void a(AdsDTO adsDTO) {
            super.a(adsDTO);
            ikd.b().d("TAdInterstitialActivity", "view has impression     track = onAdShow");
            TAdInterstitialActivity tAdInterstitialActivity = (TAdInterstitialActivity) this.b.get();
            if (tAdInterstitialActivity == null) {
                return;
            }
            TAdInterstitialActivity.this.u = true;
            TAdInterstitialActivity.this.w1();
            tAdInterstitialActivity.M("_show", new Intent());
            HSCommonUtils.a.x(adsDTO);
        }
    }

    public class m implements View.OnTouchListener {
        public m() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                TAdInterstitialActivity.this.x = motionEvent.getX();
                TAdInterstitialActivity.this.y = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            TAdInterstitialActivity.this.z = motionEvent.getX();
            TAdInterstitialActivity.this.A = motionEvent.getY();
            return false;
        }

        public m(TAdInterstitialActivity tAdInterstitialActivity, b bVar) {
            this();
        }
    }

    public static void J(InteractiveWebView interactiveWebView, AdsDTO adsDTO) {
        interactiveWebView.loadUrl("file://" + adsDTO.getIndexLocation());
    }

    public static void O(vnd vndVar) {
        d0 = new WeakReference(vndVar);
    }

    public static void Z0(View view) {
    }

    public static void r0(View view) {
    }

    public final void A(float f2) {
        try {
            AdsDTO adsDTO = this.r;
            if (adsDTO != null && adsDTO.getMaterialStyle().equals("I1107")) {
                this.o.setImageResource(f2 == 0.0f ? R.drawable.hisavana_volume_close_i1107 : R.drawable.hisavana_volume_open_i1107);
                return;
            }
        } catch (Throwable unused) {
        }
        ImageView imageView = this.o;
        if (imageView != null) {
            imageView.setImageResource(f2 == 0.0f ? R.drawable.hisavana_volume_close : R.drawable.hisavana_volume_open);
        }
    }

    public final void B(int i2, String str) {
        Intent intent = new Intent();
        intent.putExtra("error_msg", str);
        intent.putExtra("error_code", i2);
        M("_error", intent);
    }

    public final void B0() {
        InteractiveWebView interactiveWebView = this.m;
        if (interactiveWebView != null) {
            i0(interactiveWebView, false);
        }
    }

    public final void C(View view, float f2, float f3, float f4, float f5) {
        int i2;
        int i3;
        if (view == null) {
            return;
        }
        try {
            if (this.X == -1 || this.Y == -1) {
                int[] iArr = new int[2];
                try {
                    view.getLocationOnScreen(iArr);
                    this.X = iArr[0];
                    this.Y = iArr[1];
                    view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    this.Z = view.getMeasuredWidth() / 2;
                    this.a0 = view.getMeasuredHeight() / 2;
                } catch (Throwable unused) {
                }
            }
            if ((this.Z == f2 && this.a0 == f3) || (i2 = this.X) == -1 || (i3 = this.Y) == -1) {
                return;
            }
            float f6 = i2;
            this.x = f2 + f6;
            float f7 = i3;
            this.y = f3 + f7;
            this.z = f4 + f6;
            this.A = f5 + f7;
        } catch (Throwable th) {
            ikd.b().w("TAdInterstitialActivity", "setLocationInfo error:" + th.getMessage());
        }
    }

    public final void C0(View view) {
        r(view, true);
    }

    public final void D(View view, int i2) {
        TextView textView;
        ImageView imageView;
        View view2;
        int i3;
        ImageView imageView2 = (ImageView) view.findViewById(R.id.close_view);
        if (this.r.getMaterialStyle().equals("I01")) {
            textView = (TextView) findViewById(R.id.count_down_view);
            imageView = (ImageView) findViewById(R.id.iv_reward_rest);
            try {
                View viewFindViewById = findViewById(R.id.ad_close_container);
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
            textView = (TextView) view.findViewById(R.id.count_down_view);
            imageView = null;
        }
        TextView textView2 = textView;
        ImageView imageView3 = imageView;
        TextView textView3 = (TextView) view.findViewById(R.id.skip_view);
        if (imageView2 == null || textView2 == null || textView3 == null) {
            return;
        }
        if (this.K) {
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
                this.b.w0(view3);
            }
        });
        if (i2 <= 0 || (i3 = this.I) == 0) {
            if (!this.r.getMaterialStyle().equals("I01")) {
                ikd.b().d("TAdInterstitialActivity", "current close delay time is 0, do not count down.");
                view2.setVisibility(0);
                textView2.setVisibility(8);
                return;
            } else {
                view.setVisibility(0);
                View viewFindViewById2 = findViewById(R.id.ad_close_container);
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setVisibility(8);
                    return;
                }
                return;
            }
        }
        int iMin = i3 > 0 ? Math.min(i2, i3) : i2;
        textView2.setVisibility(0);
        view2.setVisibility(4);
        if (this.C == 1 || this.r.getDefaultMaterialType() == 2) {
            try {
                if (getResources().getConfiguration().orientation == 1 && this.r.getMaterialStyle() != null && this.r.getMaterialStyle().equals("I91602")) {
                    this.J = true;
                    findViewById(R.id.new_ad_progress).setVisibility(0);
                    textView2.setVisibility(8);
                } else {
                    this.J = false;
                }
            } catch (Exception e2) {
                ikd.b().w("TAdInterstitialActivity", "*----> TAdInterstitialActivity --> get screen orientation error:" + e2.getMessage());
            }
        }
        qk1 qk1Var = this.H;
        if (qk1Var != null) {
            qk1Var.d();
        }
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.new_ad_progress);
        if (this.J && progressBar != null) {
            progressBar.setMax(iMin);
            if (this.I > 0) {
                progressBar.setProgress(progressBar.getMax() - this.I);
            }
        }
        c cVar = new c(1000 * ((long) iMin), 1000L, progressBar, textView2, view2, view, imageView3);
        this.H = cVar;
        cVar.g();
    }

    public final void D0(final AdsDTO adsDTO) {
        final InteractiveWebView interactiveWebView;
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getIndexLocation())) {
            return;
        }
        e1();
        if (new File(adsDTO.getIndexLocation()).exists() && (interactiveWebView = this.m) != null) {
            interactiveWebView.setVisibility(0);
            interactiveWebView.post(new Runnable() {
                @Override
                public final void run() {
                    TAdInterstitialActivity.J(interactiveWebView, adsDTO);
                }
            });
        } else {
            B(3005, "interactive file not exists ");
            AthenaTracker.X(this.r, 3);
            finish();
        }
    }

    public final void E(TextView textView, String str) {
        if (TextUtils.isEmpty(str)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(str);
        }
    }

    public void H0() {
        M("_close", null);
        if (isFinishing()) {
            return;
        }
        P0();
    }

    public final void I0(View view) {
        i0(view, false);
    }

    public final void J0(AdsDTO adsDTO) {
        String strK = w.k(adsDTO);
        if (TextUtils.isEmpty(strK)) {
            TaErrorCode taErrorCode = TaErrorCode.NO_MAIN_VIDEO_DATA_ERROR;
            B(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
            finish();
        } else {
            q1();
            b0(adsDTO);
            this.p.setVolumeView(this.o);
            c0(strK);
        }
    }

    public final void K(AdsDTO adsDTO) {
        if (this.L) {
            return;
        }
        if (this.r.getNativeObject() == null || TextUtils.isEmpty(this.r.getNativeObject().getTitleTxt())) {
            this.K = false;
            return;
        }
        if (this.r.getSource() == 4 && TextUtils.isEmpty(this.r.getLogoUrl())) {
            this.K = false;
            return;
        }
        if (this.r.getSource() != 4 && TextUtils.isEmpty(this.r.getNativeObject().getLogoUrl())) {
            this.K = false;
            return;
        }
        this.K = false;
        this.M = 0;
        int retentionEndCardRatio = adsDTO.getRetentionEndCardRatio();
        if (retentionEndCardRatio == 0) {
            return;
        }
        if (retentionEndCardRatio < 0 || retentionEndCardRatio > 100) {
            ikd.b().e("TAdInterstitialActivity", "getRetentionEndCardRatio error,value is " + retentionEndCardRatio);
            return;
        }
        if (retentionEndCardRatio == 100) {
            this.K = true;
            v0();
        } else if (new Random().nextInt(100) + 1 <= retentionEndCardRatio) {
            this.K = true;
            v0();
        }
    }

    public final int K0(AdsDTO adsDTO) {
        int i2 = 0;
        if (adsDTO == null) {
            return 0;
        }
        try {
            i2 = getResources().getConfiguration().orientation;
        } catch (Exception e2) {
            ikd.b().w("TAdInterstitialActivity", "*----> TAdInterstitialActivity --> get screen orientation error:" + e2.getMessage());
        }
        if (n0(adsDTO)) {
            setTheme(R.style.InterstitialFullscreenStyle);
        } else if (i2 == 2) {
            setTheme(R.style.AppCompatTranscutes);
        } else {
            setTheme(R.style.InterstitialStyle);
        }
        return i2;
    }

    public final void L(String str) {
        if (this.F == null) {
            this.F = new C0521r();
        }
        this.F.j(this.T);
        this.F.d(this.b, this.r, new j());
        this.b.loadDataWithBaseURL(null, str, "text/html", "utf-8", null);
    }

    public final void L0() {
        AdsDTO adsDTO = this.r;
        if (adsDTO == null) {
            return;
        }
        if (adsDTO.getSource() == 4) {
            DownLoadRequest.n(this.r.getAdChoiceImageUrl(), this.r, null, this.d);
        } else {
            DownLoadRequest.o(this.r.getAdChoiceImageUrl(), this.r, 3, null, this.d);
        }
        if (this.h == null || this.r.getNativeObject() == null) {
            return;
        }
        if (this.r.getSource() == 4) {
            DownLoadRequest.n(this.r.getLogoUrl(), this.r, null, this.h);
        } else {
            DownLoadRequest.o(this.r.getNativeObject().getLogoUrl(), this.r, 1, null, this.h);
        }
        if (!this.r.isVastTypeAd() || this.r.getMaterialStyle().equals("I01")) {
            return;
        }
        this.h.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.I0(view);
            }
        });
    }

    public final void M(String str, Intent intent) {
        if (intent == null) {
            try {
                intent = new Intent();
                intent.putExtra("mAdBean", this.r);
            } catch (Throwable th) {
                ikd.b().e(Log.getStackTraceString(th));
                return;
            }
        }
        intent.setAction(this.s + str);
        ikd.b().d("TAdInterstitialActivity", "sendBroadcast action: " + intent.getAction());
        sendBroadcast(intent);
    }

    public final void M0(View view) {
        if (this.T) {
            HSCommonUtils.a.v(this.b);
        } else {
            U(view, false, false);
        }
    }

    public final boolean P() {
        byte b2 = 5;
        this.S = K0(this.r);
        if (TextUtils.isEmpty(this.r.getAdm())) {
            String materialStyle = this.r.getMaterialStyle();
            materialStyle.hashCode();
            switch (materialStyle.hashCode()) {
                case 71690:
                    b2 = !materialStyle.equals("I01") ? (byte) -1 : (byte) 0;
                    break;
                case 2149406:
                    b2 = !materialStyle.equals("FA14") ? (byte) -1 : (byte) 1;
                    break;
                case 68925418:
                    b2 = !materialStyle.equals("I1101") ? (byte) -1 : (byte) 2;
                    break;
                case 68925419:
                    b2 = !materialStyle.equals("I1102") ? (byte) -1 : (byte) 3;
                    break;
                case 68925420:
                    b2 = !materialStyle.equals("I1103") ? (byte) -1 : (byte) 4;
                    break;
                case 68925423:
                    if (!materialStyle.equals("I1106")) {
                        b2 = -1;
                    }
                    break;
                case 68925424:
                    b2 = !materialStyle.equals("I1107") ? (byte) -1 : (byte) 6;
                    break;
                case 2136845580:
                    b2 = !materialStyle.equals("I16901") ? (byte) -1 : (byte) 7;
                    break;
                case 2136845581:
                    b2 = !materialStyle.equals("I16902") ? (byte) -1 : (byte) 8;
                    break;
                case 2144081910:
                    b2 = !materialStyle.equals("I91601") ? (byte) -1 : (byte) 9;
                    break;
                case 2144081911:
                    b2 = !materialStyle.equals("I91602") ? (byte) -1 : (byte) 10;
                    break;
                default:
                    b2 = -1;
                    break;
            }
            switch (b2) {
                case 0:
                    setContentView(R.layout.activity_t_ad_interstitial_01_layout);
                    if (this.S == 2) {
                        this.N = 6;
                    } else {
                        this.N = 7;
                    }
                    HSCommonUtils hSCommonUtils = HSCommonUtils.a;
                    this.O = hSCommonUtils.d(this.r);
                    this.P = hSCommonUtils.e(this.r);
                    break;
                case 1:
                    setContentView(R.layout.activity_t_ad_interstitial_1104_1105_layout);
                    if (this.S != 2) {
                        this.N = 4;
                    } else {
                        this.N = 3;
                    }
                    break;
                case 2:
                    setContentView(R.layout.activity_t_ad_interstitial_1101_layout);
                    if (this.S != 2) {
                        this.N = 1;
                    } else {
                        this.N = 2;
                    }
                    break;
                case 3:
                    setContentView(R.layout.activity_t_ad_interstitial_1102_layout);
                    if (this.S != 2) {
                        this.N = 1;
                    } else {
                        this.N = 2;
                    }
                    break;
                case 4:
                    setContentView(R.layout.activity_t_ad_interstitial_1103_layout);
                    if (this.S != 2) {
                        this.N = 1;
                    } else {
                        this.N = 2;
                    }
                    break;
                case 5:
                    setContentView(R.layout.activity_t_ad_interstitial_1106_layout);
                    if (this.S != 2) {
                        this.N = 4;
                    } else {
                        this.N = 3;
                    }
                    break;
                case 6:
                    setContentView(R.layout.activity_t_ad_interstitial_1107_layout);
                    if (this.S == 2) {
                        this.N = 2;
                    } else {
                        this.N = 1;
                    }
                    this.P = HSCommonUtils.a.e(this.r);
                    break;
                case 7:
                    setContentView(R.layout.activity_t_ad_interstitial_16901_layout);
                    if (this.S != 2) {
                        this.N = 7;
                    } else {
                        this.N = 6;
                    }
                    break;
                case 8:
                    setContentView(R.layout.activity_t_ad_interstitial_16902_layout);
                    if (this.S != 2) {
                        this.N = 7;
                    } else {
                        this.N = 6;
                    }
                    break;
                case 9:
                    setContentView(R.layout.activity_t_ad_interstitial_91601_layout);
                    if (this.S != 2) {
                        this.N = 7;
                    } else {
                        this.N = 6;
                    }
                    break;
                case 10:
                    setContentView(R.layout.activity_t_ad_interstitial_91602_layout);
                    if (this.S != 2) {
                        this.N = 7;
                    } else {
                        this.N = 6;
                    }
                    break;
                default:
                    TaErrorCode taErrorCode = TaErrorCode.ERROR_SHOW_AD_MATERIAL_STYLE_NOT_MATCH;
                    B(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
                    finish();
                    ikd.b().d("TAdInterstitialActivity", "TAdTemplateActivity --> 没有匹配到 materialStyle --> 配置错误 materialStyle=" + this.r.getMaterialStyle());
                    return true;
            }
        } else if ("I01".equals(this.r.getMaterialStyle())) {
            this.T = true;
            HSCommonUtils hSCommonUtils2 = HSCommonUtils.a;
            hSCommonUtils2.g(this.r);
            this.O = hSCommonUtils2.d(this.r);
            this.P = hSCommonUtils2.e(this.r);
            setContentView(R.layout.activity_t_ad_interstitial_01_layout);
            if (this.S == 2) {
                this.N = 6;
            } else {
                this.N = 7;
            }
        } else {
            setContentView(R.layout.activity_t_ad_interstitial_adm_layout);
            if (this.S == 2) {
                this.N = 5;
            } else {
                this.N = 1;
            }
        }
        p5.a(this, n0(this.r));
        return false;
    }

    public final void P0() {
        finish();
    }

    public final void Q0(View view) {
        U0.k(getApplicationContext(), this.r);
    }

    public final int[] S(View view) {
        o2d o2dVarA = o2d.a(this.N);
        if (o2dVarA == null) {
            return null;
        }
        if (this.N == 1) {
            return new int[]{o2dVarA.a, o2dVarA.b};
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.findViewById(R.id.close_view).getLayoutParams();
        int i2 = o2dVarA.c;
        layoutParams.height = i2;
        layoutParams.width = i2;
        int i3 = o2dVarA.d;
        layoutParams.topMargin = i3;
        layoutParams.rightMargin = i3;
        ViewGroup.LayoutParams layoutParams2 = view.findViewById(R.id.ffIcon).getLayoutParams();
        int i4 = o2dVarA.e;
        layoutParams2.height = i4;
        layoutParams2.width = i4;
        TextView textView = (TextView) view.findViewById(R.id.tvName);
        textView.setTextSize(o2dVarA.f);
        ((LinearLayout.LayoutParams) textView.getLayoutParams()).topMargin = o2dVarA.g;
        int i5 = R.id.score_icon1;
        view.findViewById(i5).getLayoutParams().width = o2dVarA.h;
        view.findViewById(i5).getLayoutParams().height = o2dVarA.h;
        int i6 = R.id.score_icon2;
        view.findViewById(i6).getLayoutParams().width = o2dVarA.h;
        view.findViewById(i6).getLayoutParams().height = o2dVarA.h;
        int i7 = R.id.score_icon3;
        view.findViewById(i7).getLayoutParams().width = o2dVarA.h;
        view.findViewById(i7).getLayoutParams().height = o2dVarA.h;
        int i8 = R.id.score_icon4;
        view.findViewById(i8).getLayoutParams().width = o2dVarA.h;
        view.findViewById(i8).getLayoutParams().height = o2dVarA.h;
        int i9 = R.id.score_icon5;
        view.findViewById(i9).getLayoutParams().width = o2dVarA.h;
        view.findViewById(i9).getLayoutParams().height = o2dVarA.h;
        ((LinearLayout.LayoutParams) view.findViewById(R.id.score_area_view).getLayoutParams()).topMargin = o2dVarA.i;
        int i10 = R.id.desc_area_view;
        view.findViewById(i10).getLayoutParams().width = o2dVarA.j;
        view.findViewById(i10).getLayoutParams().height = o2dVarA.k;
        ((LinearLayout.LayoutParams) view.findViewById(i10).getLayoutParams()).topMargin = o2dVarA.l;
        int i11 = R.id.score_icon;
        view.findViewById(i11).getLayoutParams().width = o2dVarA.m;
        view.findViewById(i11).getLayoutParams().height = o2dVarA.m;
        int i12 = R.id.download_icon;
        view.findViewById(i12).getLayoutParams().width = o2dVarA.m;
        view.findViewById(i12).getLayoutParams().height = o2dVarA.m;
        ((TextView) view.findViewById(R.id.score_text)).setTextSize(o2dVarA.n);
        ((TextView) view.findViewById(R.id.download_text)).setTextSize(o2dVarA.n);
        ((TextView) view.findViewById(R.id.score_info)).setTextSize(o2dVarA.o);
        ((TextView) view.findViewById(R.id.download_info)).setTextSize(o2dVarA.o);
        view.findViewById(R.id.line_info).getLayoutParams().height = o2dVarA.p;
        int i13 = R.id.ff_btn;
        view.findViewById(i13).getLayoutParams().width = o2dVarA.q;
        view.findViewById(i13).getLayoutParams().height = o2dVarA.r;
        ((LinearLayout.LayoutParams) view.findViewById(i13).getLayoutParams()).topMargin = o2dVarA.s;
        ((LinearLayout.LayoutParams) view.findViewById(R.id.ff_ps_mark_view).getLayoutParams()).topMargin = o2dVarA.t;
        return new int[]{o2dVarA.a, o2dVarA.b};
    }

    public final void S0() {
        if (this.r == null) {
            TaErrorCode taErrorCode = TaErrorCode.ERROR_SHOW_ADBEAN_NULL;
            B(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage());
            ikd.b().d("TAdInterstitialActivity", "TAdInterstitialActivity --> null == mAdBean |");
            P0();
            return;
        }
        if (P()) {
            return;
        }
        p1();
        v1();
        L0();
        X();
        q0();
        b1();
        try {
            com.cloud.hisavana.sdk.manager.a.a.s(getApplicationContext(), this.r, false);
        } catch (Throwable unused) {
        }
    }

    public final int T(View view, boolean z) {
        if (this.r.getPslinkInfo() != null) {
            if (view.getId() == R.id.tvBtn || view.getId() == R.id.btn_pop_confirm || view.getId() == R.id.btn || z) {
                this.r.getPslinkInfo().setClickType(2);
                this.r.setTrackUserClickArea(2);
                ikd.b().d("TAdInterstitialActivity", "pslink half setClickType, click_install");
            } else {
                this.r.setTrackUserClickArea(1);
                this.r.getPslinkInfo().setClickType(1);
                ikd.b().d("TAdInterstitialActivity", "pslink half setClickType, click_img");
            }
        }
        DownUpPointBean downUpPointBean = new DownUpPointBean(this.x, this.y, this.z, this.A, view.getMeasuredHeight(), view.getMeasuredWidth());
        AdsDTO adsDTO = this.r;
        boolean z2 = adsDTO != null ? !adsDTO.isAllowTrackingADClick() : false;
        M("_click", null);
        return U0.c(getApplicationContext(), this.r, downUpPointBean, false, z2);
    }

    public final void T0(View view) {
        r(view, false);
    }

    public final int U(View view, boolean z, boolean z2) {
        return V(view, z, z2, false);
    }

    public final int V(View view, final boolean z, boolean z2, boolean z3) {
        AdsDTO adsDTO = this.r;
        if (adsDTO == null || !adsDTO.getMaterialStyle().equals("I01")) {
            return r(view, z);
        }
        if (this.P != 2) {
            this.Q = true;
            return t(view, z, z2, z3);
        }
        if (this.O || z2) {
            if (r6.j()) {
                HSToastUtil.f(getString(R.string.hs_download_in_palm_store));
            }
            this.V = true;
            int iS = s(view, z, z2);
            if (!this.T || this.W) {
                H0();
            }
            return iS;
        }
        try {
            AdsDTO adsDTO2 = this.r;
            if (adsDTO2 != null) {
                HSCommonUtils.a.r(adsDTO2, new DownUpPointBean(this.x, this.y, this.z, this.A, view.getMeasuredHeight(), view.getMeasuredWidth()));
            }
            if (this.R == null) {
                u5 u5Var = new u5(this, new c74() {
                    @Override
                    public final Object invoke() {
                        return this.b.z(z);
                    }
                });
                this.R = u5Var;
                u5Var.m(this.r);
            }
            this.R.show();
        } catch (Throwable unused) {
        }
        return -1;
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
    public final void V0() {
        String str;
        boolean z;
        char c2;
        ?? r5;
        String str2;
        ViewGroup viewGroup;
        try {
            if (n0(this.r) && (viewGroup = (ViewGroup) findViewById(R.id.content_layout)) != null) {
                viewGroup.setOnTouchListener(new m(this, null));
                viewGroup.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.M0(view);
                    }
                });
            }
            this.i = (ViewGroup) findViewById(R.id.llRoot);
            String materialStyle = this.r.getMaterialStyle();
            ViewGroup viewGroup2 = this.i;
            if (viewGroup2 != null) {
                viewGroup2.setOnClickListener(new b(materialStyle));
            }
        } catch (Throwable unused) {
        }
        this.h = (ImageView) findViewById(R.id.ivIcon);
        this.j = (TextView) findViewById(R.id.tvName);
        this.k = (TextView) findViewById(R.id.tvDescription);
        TextView textView = (TextView) findViewById(R.id.tvSourceSize);
        this.l = (TextView) findViewById(R.id.tvBtn);
        AdsDTO adsDTO = this.r;
        if (adsDTO == null || adsDTO.getNativeObject() == null || TextUtils.isEmpty(this.r.getMaterialStyle())) {
            return;
        }
        if (TextUtils.isEmpty(this.r.getAdm()) || this.T) {
            HSCommonUtils hSCommonUtils = HSCommonUtils.a;
            String strM = hSCommonUtils.m(this.r);
            String materialStyle2 = this.r.getMaterialStyle();
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
                    this.j.setText(this.r.getNativeObject().getTitleTxt());
                    this.k.setText(this.r.getNativeObject().getDescriptionTxt());
                    String buttonTxt = this.r.getNativeObject().getButtonTxt(this.r.getInstallApk());
                    if (TextUtils.isEmpty(buttonTxt)) {
                        buttonTxt = hSCommonUtils.l();
                    }
                    this.l.setText(buttonTxt);
                    TextPaint paint = this.j.getPaint();
                    paint.setStrokeWidth(2.0f);
                    paint.setStyle(Paint.Style.FILL_AND_STROKE);
                    if (this.c != null && ((this.r.getMaterialStyle().equals("I91601") || this.r.getMaterialStyle().equals("I91602") || this.r.getMaterialStyle().equals("I01")) && !TextUtils.isEmpty(this.r.getScale()) && this.r.getScale().equals("9:16"))) {
                        this.c.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    }
                    if (this.r.getMaterialStyle().equals("I16902") || this.r.getMaterialStyle().equals("I91602")) {
                        c2 = 3;
                        View viewFindViewById = findViewById(R.id.desc_area_view);
                        TextView textView2 = (TextView) findViewById(R.id.score_text);
                        if (textView2 == null) {
                            str2 = strM;
                            z = false;
                            if (textView != null) {
                                E(textView, str2);
                            }
                        } else if (w.o(this.r)) {
                            this.k.setVisibility(8);
                            viewFindViewById.setVisibility(0);
                            textView2.setText(w.b(w.i(this.r)));
                            if (textView != null) {
                                str = TextUtils.isEmpty(strM) ? strM : strM + " · ";
                                E(textView, str);
                                z = false;
                            } else {
                                str2 = strM;
                                z = false;
                            }
                        } else {
                            str2 = strM;
                            viewFindViewById.setVisibility(8);
                            z = false;
                            this.k.setVisibility(0);
                            String descriptionTxt = this.r.getNativeObject().getDescriptionTxt();
                            if (!TextUtils.isEmpty(str2)) {
                                descriptionTxt = str2 + " · " + descriptionTxt;
                            }
                            this.k.setText(descriptionTxt);
                        }
                        str = str2;
                    } else {
                        if (this.r.getMaterialStyle().equals("I01") || this.r.getMaterialStyle().equals("I1107")) {
                            TextView textView3 = (TextView) findViewById(R.id.score_text);
                            ImageView imageView = (ImageView) findViewById(R.id.score_icon);
                            if (this.r.getMaterialStyle().equals("I01")) {
                                TextView textView4 = this.l;
                                if (textView4 != null) {
                                    ObjectAnimator objectAnimatorH = hSCommonUtils.h(textView4);
                                    this.b0 = objectAnimatorH;
                                    if (objectAnimatorH != null) {
                                        objectAnimatorH.start();
                                    }
                                }
                            } else if (this.r.getMaterialStyle().equals("I1107") && this.l != null) {
                                View viewFindViewById2 = findViewById(R.id.view_animator_bg_color);
                                if (this.S == 2) {
                                    this.c0 = hSCommonUtils.s(this.l, viewFindViewById2, "#260052E2");
                                } else {
                                    this.c0 = hSCommonUtils.s(this.l, viewFindViewById2, "#4DFFFFFF");
                                }
                            }
                            int i2 = this.P;
                            c2 = 3;
                            if (i2 == 3) {
                                if (this.r.getMaterialStyle().equals("I01")) {
                                    this.l.setText(getString(R.string.hs_download_t01_btn_pull_live));
                                }
                                if (imageView != null) {
                                    try {
                                        imageView.setVisibility(0);
                                    } catch (Throwable unused2) {
                                    }
                                }
                                textView3.setText(w.b(w.i(this.r)) + " · " + this.r.getNativeObject().getDescriptionTxt());
                                break;
                            } else if (i2 == 2) {
                                if (imageView != null) {
                                    imageView.setVisibility(8);
                                }
                                if (textView3 != null) {
                                    try {
                                        textView3.setText(hSCommonUtils.j(this.r.getPslinkInfo().getSourceSize()) + " · " + this.r.getNativeObject().getDescriptionTxt());
                                        break;
                                    } catch (Throwable unused3) {
                                    }
                                }
                                if (this.r.getMaterialStyle().equals("I01")) {
                                    this.l.setText(getString(R.string.hs_download_t01_btn_pull_new));
                                }
                            } else if (this.r.getMaterialStyle().equals("I01")) {
                                this.l.setText(getString(R.string.hs_download_t01_btn_pull_live));
                            }
                            str2 = strM;
                            z = false;
                        } else {
                            str2 = strM;
                            z = false;
                            c2 = 3;
                        }
                        str = str2;
                    }
                    y1();
                    break;
                case "FA14":
                case "I1106":
                    this.j.setText(this.r.getNativeObject().getTitleTxt());
                    this.k.setText(this.r.getNativeObject().getDescriptionTxt());
                    this.l.setText(this.r.getNativeObject().getButtonTxt(this.r.getInstallApk()));
                    TextPaint paint2 = this.k.getPaint();
                    paint2.setStrokeWidth(2.0f);
                    paint2.setStyle(Paint.Style.FILL_AND_STROKE);
                    y1();
                    str = strM;
                    z = false;
                    c2 = 3;
                    break;
                case "I1102":
                    this.j.setText(this.r.getNativeObject().getTitleTxt());
                    this.l.setText(this.r.getNativeObject().getButtonTxt(this.r.getInstallApk()));
                    TextPaint paint3 = this.j.getPaint();
                    paint3.setStrokeWidth(2.0f);
                    paint3.setStyle(Paint.Style.FILL_AND_STROKE);
                    y1();
                    str = strM;
                    z = false;
                    c2 = 3;
                    break;
                default:
                    str = strM;
                    z = false;
                    c2 = 3;
                    break;
            }
            String materialStyle3 = this.r.getMaterialStyle();
            materialStyle3.hashCode();
            switch (materialStyle3.hashCode()) {
                case 2149406:
                    r5 = !materialStyle3.equals("FA14") ? -1 : z;
                    break;
                case 68925418:
                    r5 = !materialStyle3.equals("I1101") ? -1 : 1;
                    break;
                case 68925419:
                    r5 = !materialStyle3.equals("I1102") ? -1 : 2;
                    break;
                case 68925420:
                    r5 = !materialStyle3.equals("I1103") ? -1 : c2;
                    break;
                case 68925423:
                    r5 = !materialStyle3.equals("I1106") ? -1 : 4;
                    break;
                case 2136845580:
                    r5 = !materialStyle3.equals("I16901") ? -1 : 5;
                    break;
                case 2144081910:
                    r5 = !materialStyle3.equals("I91601") ? -1 : 6;
                    break;
                default:
                    r5 = -1;
                    break;
            }
            switch (r5) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                    if (textView != null) {
                        E(textView, str);
                    }
                    break;
                case 5:
                    if (this.S != 2) {
                        if (textView != null) {
                            E(textView, str);
                        }
                    } else if (this.k != null) {
                        String descriptionTxt2 = this.r.getNativeObject().getDescriptionTxt();
                        if (!TextUtils.isEmpty(str)) {
                            descriptionTxt2 = str + " · " + descriptionTxt2;
                        }
                        this.k.setText(descriptionTxt2);
                    }
                    break;
                case 6:
                    if (this.S != 2) {
                        if (this.k != null) {
                            String descriptionTxt3 = this.r.getNativeObject().getDescriptionTxt();
                            if (!TextUtils.isEmpty(str)) {
                                descriptionTxt3 = str + " · " + descriptionTxt3;
                            }
                            this.k.setText(descriptionTxt3);
                        }
                    } else if (textView != null) {
                        E(textView, str);
                    }
                    break;
            }
        }
    }

    public final void W0(View view) {
        r(view, false);
    }

    public final void X() {
        AdsDTO adsDTO = this.r;
        if (adsDTO == null || adsDTO.getDisplayRule() != Constants.AdDisplayRule.RU || this.n == null) {
            return;
        }
        if (this.q == null) {
            AdDisclaimerView adDisclaimerView = new AdDisclaimerView(this);
            this.q = adDisclaimerView;
            adDisclaimerView.setListener(new AdDisclaimerView.b() {
                @Override
                public final void a(String str, String str2, String str3) {
                    this.a.N(str, str2, str3);
                }
            });
        }
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-1, getResources().getDimensionPixelOffset(R.dimen.ad_disclaimer_height));
        layoutParams.startToStart = this.n.getId();
        layoutParams.endToEnd = this.n.getId();
        layoutParams.bottomToBottom = this.n.getId();
        if (this.q.getParent() != null) {
            ((ViewGroup) this.q.getParent()).removeView(this.q);
        }
        this.n.addView(this.q, layoutParams);
        this.n.post(new Runnable() {
            @Override
            public final void run() {
                this.b.t1();
            }
        });
        q0();
    }

    public final void Y(View view) {
        if (this.n == null || view == null) {
            return;
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        this.n.removeAllViews();
        this.n.addView(view, new ConstraintLayout.LayoutParams(-1, -1));
    }

    public final void Y0() {
        AdsDTO adsDTO;
        View viewFindViewById = findViewById(R.id.ivCancel);
        if (viewFindViewById == null || (adsDTO = this.r) == null) {
            return;
        }
        int closeDelayTime = (!adsDTO.isVastTypeAd() || this.r.getVideoInfo() == null || this.r.getVideoInfo().getDuration() == null || this.r.getVideoInfo().getDuration().intValue() <= 0) ? this.r.getCloseDelayTime() : Math.min(this.r.getCloseDelayTime(), this.r.getVideoInfo().getDuration().intValue());
        ikd.b().d("TAdInterstitialActivity", "current close delay time is: " + closeDelayTime);
        if (viewFindViewById.getTag() == null || !viewFindViewById.getTag().equals("close_button")) {
            D(viewFindViewById, closeDelayTime);
        } else {
            Z(viewFindViewById, closeDelayTime);
        }
    }

    public final void Z(View view, int i2) {
        String string;
        int i3;
        TextView textView = (TextView) view.findViewById(R.id.close_view);
        TextView textView2 = (TextView) view.findViewById(R.id.count_down_view);
        View viewFindViewById = view.findViewById(R.id.separator);
        if (textView == null || textView2 == null || viewFindViewById == null) {
            return;
        }
        if (this.K) {
            try {
                string = getString(R.string.hs_btn_skip);
            } catch (Exception unused) {
                string = HlsMediaPlaylist.Interstitial.NAVIGATION_RESTRICTION_SKIP;
            }
            textView.setText(string);
        }
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.C0(view2);
            }
        });
        if (i2 <= 0 || (i3 = this.I) == 0) {
            ikd.b().d("TAdInterstitialActivity", "current close delay time is 0, do not count down.");
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
        if (i3 > 0) {
            i2 = Math.min(i2, i3);
        }
        qk1 qk1Var = this.H;
        if (qk1Var != null) {
            qk1Var.d();
        }
        view.setEnabled(false);
        d dVar = new d(1000 * ((long) i2), 1000L, textView2, view, textView, viewFindViewById);
        this.H = dVar;
        dVar.g();
    }

    public final void b0(AdsDTO adsDTO) {
        if ((this.C == 1 || adsDTO.getDefaultMaterialType() == 2) && this.p == null) {
            InterstitialAdVideoView interstitialAdVideoView = new InterstitialAdVideoView(getApplicationContext());
            this.p = interstitialAdVideoView;
            if (this.J) {
                interstitialAdVideoView.setProgressBarVisibility(8);
            }
            this.p.setAutoReset(true);
            this.p.setAdMediaPlayerListener(new h(adsDTO));
        }
    }

    public final void b1() {
        ViewGroup viewGroup;
        try {
            if (this.r.getMaterialStyle().equals("I01") && this.S == 2 && (viewGroup = (ViewGroup) findViewById(R.id.content_layout)) != null) {
                viewGroup.setOnTouchListener(new m(this, null));
            }
        } catch (Throwable unused) {
        }
    }

    public final void c0(String str) {
        int i2;
        AdsDTO adsDTO;
        InterstitialAdVideoView interstitialAdVideoView;
        ViewGroup.LayoutParams layoutParams;
        ikd.b().d("TAdInterstitialActivity", "setMediaData ");
        InterstitialAdVideoView interstitialAdVideoView2 = this.p;
        if (interstitialAdVideoView2 == null) {
            return;
        }
        Y(interstitialAdVideoView2);
        try {
            i2 = getResources().getConfiguration().orientation;
        } catch (Exception unused) {
            i2 = 0;
        }
        AdsDTO adsDTO2 = this.r;
        if (adsDTO2 != null && i2 == 1 && adsDTO2.getMaterialStyle().equals("I91602") && w.h(this.r).equals("9:16") && (layoutParams = this.p.getLayoutParams()) != null) {
            int iM = w.m(this.r);
            int iL = w.l(this.r);
            if (iM <= 0 || iL <= 0) {
                layoutParams.width = -1;
                layoutParams.height = -2;
            } else {
                layoutParams.width = hm4.h();
                layoutParams.height = (int) (hm4.h() * (iL / iM));
            }
            this.p.setLayoutParams(layoutParams);
        }
        if (this.w && (interstitialAdVideoView = this.p) != null) {
            interstitialAdVideoView.seekToPosition(interstitialAdVideoView.getDuration());
        }
        if (this.v) {
            return;
        }
        if (this.p != null && !TextUtils.isEmpty(str)) {
            ikd.b().d("TAdInterstitialActivity", "setMediaData filePath " + str);
            this.p.setMediaData(str, this.r, this.t == 0.0f, str.startsWith(ProxyConfig.MATCH_HTTP));
            if (!this.r.getMaterialStyle().equals("I01")) {
                this.p.setOnTouchListener(new m(this, null));
                this.p.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.f1(view);
                    }
                });
            }
        }
        if (this.p == null || (adsDTO = this.r) == null || adsDTO.getVideoInfo() == null || this.r.getVideoInfo().getVideoMask() == null) {
            return;
        }
        this.p.setCompanionSize(this.r.getVideoInfo().getVideoMask().getResource());
    }

    public final void c1(View view) {
        AthenaTracker.D(this.r);
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.r, view, this.E);
    }

    public final void N(String str, String str2, String str3) {
        if (this.G == null) {
            zl4 zl4Var = new zl4(this, new a());
            this.G = zl4Var;
            zl4Var.k(str);
            this.G.h(str2);
            this.G.g(str3);
            this.G.j(true);
        }
        try {
            this.G.show();
        } catch (Exception e2) {
            ikd.b().e("TAdInterstitialActivity", "showRuDialog error: " + e2.getMessage());
        }
    }

    public final void e1() {
        if (this.r.isInteractiveAd()) {
            if (this.m == null) {
                try {
                    this.m = new InteractiveWebView(getApplicationContext());
                } catch (Throwable th) {
                    ikd.b().e("TAdInterstitialActivity", "create webview error: " + Log.getStackTraceString(th));
                    this.m = null;
                }
            }
            if (this.n == null || this.m == null) {
                H0();
                return;
            }
            h1();
            String materialStyle = this.r.getMaterialStyle();
            if (!TextUtils.isEmpty(materialStyle) && (materialStyle.equals("I1107") || materialStyle.equals("I91601") || materialStyle.equals("I91602") || materialStyle.equals("I16902") || materialStyle.equals("I01") || (materialStyle.equals("I16901") && this.S == 2))) {
                String scale = this.r.getScale();
                if (TextUtils.isEmpty(scale)) {
                    scale = (this.r.getScales() == null || this.r.getScales().isEmpty()) ? "" : this.r.getScales().get(0);
                }
                ViewGroup.LayoutParams layoutParams = this.n.getLayoutParams();
                if (layoutParams instanceof ConstraintLayout.LayoutParams) {
                    ((ConstraintLayout.LayoutParams) layoutParams).dimensionRatio = scale;
                }
            }
            Y(this.m);
        }
    }

    public final void f1(View view) {
        i0(view, false);
    }

    public final int h0(View view) {
        return T(view, false);
    }

    public final void h1() {
        this.m.setWebClientCallback(this.r);
        this.m.setOnTouchListener(new m(this, null));
        this.m.setInteractiveListener(new k(this));
    }

    public final int i0(View view, boolean z) {
        return V(view, z, false, false);
    }

    public final void i1(View view) {
        if (!this.T) {
            U(view, false, true);
        } else {
            this.U = true;
            HSCommonUtils.a.v(this.b);
        }
    }

    public final void j0() {
        AdsDTO adsDTO = this.r;
        if (adsDTO == null) {
            ikd.b().d("TAdInterstitialActivity", "attachAdmView adBean is null");
            P0();
            return;
        }
        String scale = adsDTO.getScale();
        if (TextUtils.isEmpty(scale)) {
            scale = (this.r.getScales() == null || this.r.getScales().isEmpty()) ? "" : this.r.getScales().get(0);
        }
        if (TextUtils.isEmpty(scale)) {
            ikd.b().e("TAdInterstitialActivity", "attachAdmView scale is empty,finish");
            P0();
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.n.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).dimensionRatio = scale;
        }
        String str = this.r.getAdm() + TadmWebView.JS_TEXT;
        if (this.b == null) {
            try {
                this.b = new TadmWebView(getApplicationContext());
            } catch (Throwable th) {
                ikd.b().e("TAdInterstitialActivity", "create webview error: " + Log.getStackTraceString(th));
                this.b = null;
                P0();
                return;
            }
        }
        L(str);
        Y(this.b);
    }

    public final void j1() {
        AdChoicesView adChoicesView = (AdChoicesView) findViewById(R.id.ad_choices_view);
        this.d = adChoicesView;
        if (adChoicesView != null) {
            adChoicesView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.Q0(view);
                }
            });
        }
        AdBadgeView adBadgeView = (AdBadgeView) findViewById(R.id.ad_badge_view);
        this.e = adBadgeView;
        if (adBadgeView != null) {
            adBadgeView.setDisplayStyle(this.r.getDisplayRule(), kn8.c(this.r));
        }
        AdCloseView adCloseView = (AdCloseView) findViewById(R.id.ad_close_view);
        this.f = adCloseView;
        if (adCloseView != null) {
            adCloseView.setDisplayStyle(this.r.getDisplayRule(), AdCloseView.CloseImageType.EXPAND);
            u.n().d(this, this.f, this, this.r);
        }
        try {
            boolean zA = cy9.a(this.r);
            StoreMarkView storeMarkView = (StoreMarkView) findViewById(R.id.ps_mark_view);
            this.g = storeMarkView;
            if (storeMarkView != null) {
                storeMarkView.setVisibility(zA ? 0 : 4);
                this.g.setTextSize(6.0f);
                if (!this.r.getMaterialStyle().equals("I1107") || this.S == 2) {
                    this.g.setTextColor(-8882056);
                    this.g.setTextSize(6.0f);
                } else {
                    this.g.setTextColor(Color.parseColor("#FFFFFFFF"));
                    this.g.setTextSize(8.0f);
                }
                this.g.attachInfo(this.r);
            }
        } catch (Throwable unused) {
        }
    }

    public final void k0(String str) {
        AdsDTO adsDTO = this.r;
        if (adsDTO != null) {
            AthenaTracker.B(adsDTO, str);
        }
    }

    public final void k1(View view) {
        ViewParent parent;
        if (view == null || (parent = view.getParent()) == null || !(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(view);
    }

    public final void m1() {
        b bVar = null;
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.ad_interstitial_end_card_layout, (ViewGroup) null);
        int[] iArrS = S(viewInflate);
        viewInflate.findViewById(R.id.close_view).setOnClickListener(new e());
        if (this.h != null) {
            FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.ffIcon);
            k1(this.h);
            frameLayout.addView(this.h, new FrameLayout.LayoutParams(-1, -1));
        } else if (this.r.getSource() == 4 && !TextUtils.isEmpty(this.r.getLogoUrl())) {
            TranCircleImageView tranCircleImageView = new TranCircleImageView(this);
            DownLoadRequest.n(this.r.getLogoUrl(), this.r, null, tranCircleImageView);
            tranCircleImageView.setRadius(hm4.a(4.0f));
            ((FrameLayout) viewInflate.findViewById(R.id.ffIcon)).addView(tranCircleImageView, new FrameLayout.LayoutParams(-1, -1));
            if (this.r.isVastTypeAd()) {
                tranCircleImageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.T0(view);
                    }
                });
            }
        } else if (this.r.getNativeObject() == null || TextUtils.isEmpty(this.r.getNativeObject().getLogoUrl())) {
            viewInflate.findViewById(R.id.ffIcon).setVisibility(8);
        } else {
            TranCircleImageView tranCircleImageView2 = new TranCircleImageView(this);
            DownLoadRequest.o(this.r.getNativeObject().getLogoUrl(), this.r, 1, null, tranCircleImageView2);
            tranCircleImageView2.setRadius(hm4.a(4.0f));
            ((FrameLayout) viewInflate.findViewById(R.id.ffIcon)).addView(tranCircleImageView2, new FrameLayout.LayoutParams(-1, -1));
            if (this.r.isVastTypeAd()) {
                tranCircleImageView2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.W0(view);
                    }
                });
            }
        }
        TextView textView = this.j;
        if (textView != null && !TextUtils.isEmpty(textView.getText())) {
            ((TextView) viewInflate.findViewById(R.id.tvName)).setText(this.j.getText());
        } else if (this.r.getNativeObject() == null || TextUtils.isEmpty(this.r.getNativeObject().getTitleTxt())) {
            viewInflate.findViewById(R.id.tvName).setVisibility(8);
        } else {
            ((TextView) viewInflate.findViewById(R.id.tvName)).setText(this.r.getNativeObject().getTitleTxt());
        }
        if (this.r.getNativeObject() == null || TextUtils.isEmpty(this.r.getNativeObject().getButtonTxt(this.r.getInstallApk()))) {
            viewInflate.findViewById(R.id.ff_btn).setVisibility(8);
        } else {
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.btn);
            textView2.setText(this.r.getNativeObject().getButtonTxt(this.r.getInstallApk()));
            textView2.setOnClickListener(new f());
        }
        FrameLayout frameLayout2 = (FrameLayout) viewInflate.findViewById(R.id.ff_ps_mark_view);
        StoreMarkView storeMarkView = (StoreMarkView) findViewById(R.id.ps_mark_view);
        k1(storeMarkView);
        frameLayout2.addView(storeMarkView, new FrameLayout.LayoutParams(-1, -1));
        if (!w.o(this.r)) {
            viewInflate.findViewById(R.id.desc_area_view).setVisibility(8);
            this.M = 3;
        } else if (w.n(this.r)) {
            ((TextView) viewInflate.findViewById(R.id.score_text)).setText(w.b(w.i(this.r)));
            ((TextView) viewInflate.findViewById(R.id.download_text)).setText(u37.b(w.e(this.r)));
            this.M = 1;
        } else {
            viewInflate.findViewById(R.id.desc_area_view).setVisibility(8);
            viewInflate.findViewById(R.id.score_area_view).setVisibility(0);
            float fI = w.i(this.r);
            if (fI > 0.0f && fI < 0.5f) {
                ImageView imageView = (ImageView) viewInflate.findViewById(R.id.score_icon1);
                int i2 = R.drawable.hs_ad_nostar;
                imageView.setImageResource(i2);
                ((ImageView) viewInflate.findViewById(R.id.score_icon2)).setImageResource(i2);
                ((ImageView) viewInflate.findViewById(R.id.score_icon3)).setImageResource(i2);
                ((ImageView) viewInflate.findViewById(R.id.score_icon4)).setImageResource(i2);
                ((ImageView) viewInflate.findViewById(R.id.score_icon5)).setImageResource(i2);
            } else if (fI >= 0.5f && fI < 1.0f) {
                ((ImageView) viewInflate.findViewById(R.id.score_icon1)).setImageResource(R.drawable.hs_ad_halfstar);
                ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.score_icon2);
                int i3 = R.drawable.hs_ad_nostar;
                imageView2.setImageResource(i3);
                ((ImageView) viewInflate.findViewById(R.id.score_icon3)).setImageResource(i3);
                ((ImageView) viewInflate.findViewById(R.id.score_icon4)).setImageResource(i3);
                ((ImageView) viewInflate.findViewById(R.id.score_icon5)).setImageResource(i3);
            } else if (fI >= 1.0f && fI < 1.5f) {
                ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.score_icon2);
                int i4 = R.drawable.hs_ad_nostar;
                imageView3.setImageResource(i4);
                ((ImageView) viewInflate.findViewById(R.id.score_icon3)).setImageResource(i4);
                ((ImageView) viewInflate.findViewById(R.id.score_icon4)).setImageResource(i4);
                ((ImageView) viewInflate.findViewById(R.id.score_icon5)).setImageResource(i4);
            } else if (fI >= 1.5f && fI < 2.0f) {
                ((ImageView) viewInflate.findViewById(R.id.score_icon2)).setImageResource(R.drawable.hs_ad_halfstar);
                ImageView imageView4 = (ImageView) viewInflate.findViewById(R.id.score_icon3);
                int i5 = R.drawable.hs_ad_nostar;
                imageView4.setImageResource(i5);
                ((ImageView) viewInflate.findViewById(R.id.score_icon4)).setImageResource(i5);
                ((ImageView) viewInflate.findViewById(R.id.score_icon5)).setImageResource(i5);
            } else if (fI >= 2.0f && fI < 2.5f) {
                ImageView imageView5 = (ImageView) viewInflate.findViewById(R.id.score_icon3);
                int i6 = R.drawable.hs_ad_nostar;
                imageView5.setImageResource(i6);
                ((ImageView) viewInflate.findViewById(R.id.score_icon4)).setImageResource(i6);
                ((ImageView) viewInflate.findViewById(R.id.score_icon5)).setImageResource(i6);
            } else if (fI >= 2.5f && fI < 3.0f) {
                ((ImageView) viewInflate.findViewById(R.id.score_icon3)).setImageResource(R.drawable.hs_ad_halfstar);
                ImageView imageView6 = (ImageView) viewInflate.findViewById(R.id.score_icon4);
                int i7 = R.drawable.hs_ad_nostar;
                imageView6.setImageResource(i7);
                ((ImageView) viewInflate.findViewById(R.id.score_icon5)).setImageResource(i7);
            } else if (fI >= 3.0f && fI < 3.5f) {
                ImageView imageView7 = (ImageView) viewInflate.findViewById(R.id.score_icon4);
                int i8 = R.drawable.hs_ad_nostar;
                imageView7.setImageResource(i8);
                ((ImageView) viewInflate.findViewById(R.id.score_icon5)).setImageResource(i8);
            } else if (fI >= 3.5f && fI < 4.0f) {
                ((ImageView) viewInflate.findViewById(R.id.score_icon4)).setImageResource(R.drawable.hs_ad_halfstar);
                ((ImageView) viewInflate.findViewById(R.id.score_icon5)).setImageResource(R.drawable.hs_ad_nostar);
            } else if (fI >= 4.0f && fI < 4.5f) {
                ((ImageView) viewInflate.findViewById(R.id.score_icon5)).setImageResource(R.drawable.hs_ad_nostar);
            } else if (fI >= 4.5f && fI < 5.0f) {
                ((ImageView) viewInflate.findViewById(R.id.score_icon5)).setImageResource(R.drawable.hs_ad_halfstar);
            }
            this.M = 2;
        }
        viewInflate.setOnTouchListener(new m(this, bVar));
        viewInflate.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TAdInterstitialActivity.Z0(view);
            }
        });
        if (n0(this.r)) {
            setContentView(viewInflate);
        } else {
            ViewGroup viewGroup = (ViewGroup) findViewById(R.id.content_layout);
            if (viewGroup instanceof ConstraintLayout) {
                ConstraintLayout.LayoutParams layoutParams = (iArrS == null || iArrS.length != 2) ? new ConstraintLayout.LayoutParams(-1, -1) : new ConstraintLayout.LayoutParams(iArrS[0], iArrS[1]);
                layoutParams.startToStart = viewGroup.getId();
                layoutParams.endToEnd = viewGroup.getId();
                layoutParams.bottomToBottom = viewGroup.getId();
                layoutParams.topToTop = viewGroup.getId();
                viewGroup.removeAllViews();
                viewGroup.addView(viewInflate, layoutParams);
            } else {
                viewGroup.removeAllViews();
                viewGroup.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            }
        }
        this.L = true;
        this.r.setEndCardType(this.M);
    }

    public final boolean n0(AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.getMaterialStyle() == null) {
            return false;
        }
        return adsDTO.getMaterialStyle().equals("I91601") || adsDTO.getMaterialStyle().equals("I16901") || adsDTO.getMaterialStyle().equals("I91602") || adsDTO.getMaterialStyle().equals("I16902") || adsDTO.getMaterialStyle().equals("I01");
    }

    @Override
    public void onBackPressed() {
        ikd.b().d("TAdInterstitialActivity", "sendBroadcast(TAG_CLOSE);");
        AdsDTO adsDTO = this.r;
        if (adsDTO == null || !adsDTO.isVastTypeAd()) {
            M("_close", null);
            super.onBackPressed();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.X = -1;
        this.Y = -1;
        S0();
    }

    @Override
    public void onCreate(Bundle bundle) {
        setTitle((CharSequence) null);
        if (r6.n() == 1) {
            setRequestedOrientation(1);
        } else if (r6.n() == 0) {
            setRequestedOrientation(0);
        }
        try {
            if (getIntent() != null) {
                K0((AdsDTO) getIntent().getParcelableExtra("mAdBean"));
            }
        } catch (Exception unused) {
        }
        super.onCreate(bundle);
        if (ul4.i()) {
            this.t = r6.r() ? 0.0f : 1.0f;
            z1();
            this.D = true;
        } else {
            ul4.g(getApplicationContext());
            B(TaErrorCode.CODE_INIT_ERROR, TaErrorCode.ERROR_SHOW_INIT_ERROR.getErrorMessage());
            finish();
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        M("_close", null);
        M("_destroy", null);
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(this.r);
        pp4.a(this.c);
        pp4.a(this.h);
        pp4.a(this.d);
        ViewGroup viewGroup = this.i;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.i = null;
        }
        ViewGroup viewGroup2 = this.n;
        if (viewGroup2 != null) {
            viewGroup2.removeAllViews();
            this.n = null;
        }
        TadmWebView tadmWebView = this.b;
        if (tadmWebView != null) {
            tadmWebView.destroy();
            this.b = null;
        }
        C0521r c0521r = this.F;
        if (c0521r != null) {
            c0521r.c();
            this.F = null;
        }
        InteractiveWebView interactiveWebView = this.m;
        if (interactiveWebView != null) {
            interactiveWebView.destroy();
            this.m = null;
        }
        InterstitialAdVideoView interstitialAdVideoView = this.p;
        if (interstitialAdVideoView != null) {
            interstitialAdVideoView.release();
            this.p = null;
        }
        if (this.q != null) {
            this.q = null;
        }
        zl4 zl4Var = this.G;
        if (zl4Var != null) {
            zl4Var.dismiss();
            this.G = null;
        }
        qk1 qk1Var = this.H;
        if (qk1Var != null) {
            qk1Var.d();
            this.H = null;
        }
        d0 = null;
        try {
            u5 u5Var = this.R;
            if (u5Var != null) {
                if (u5Var.l()) {
                    this.R.dismiss();
                }
                this.R = null;
            }
        } catch (Throwable unused) {
        }
        try {
            ObjectAnimator objectAnimator = this.b0;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.b0 = null;
            }
            Runnable runnable = this.c0;
            if (runnable != null) {
                HSCommonUtils.a.q(this.l, runnable);
            }
        } catch (Exception unused2) {
        }
    }

    @Override
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        ikd.b().d("TAdInterstitialActivity", "onNewIntent ----------------------->");
        if (this.D) {
            setIntent(intent);
            z1();
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        try {
            u5 u5Var = this.R;
            if (u5Var == null || !u5Var.l()) {
                return;
            }
            this.R.dismiss();
        } catch (Throwable th) {
            ikd.b().w("TAdInterstitialActivity", "onPause dismiss bubble dialog failed: " + th.getMessage());
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (Build.VERSION.SDK_INT <= 29) {
            p5.a(this, n0(this.r));
        }
        try {
            if (this.P == 3 && this.Q) {
                this.Q = false;
                if (r6.j()) {
                    HSToastUtil.f(getString(R.string.hs_interstitial_breadk_ended));
                }
                H0();
            }
        } catch (Throwable unused) {
        }
    }

    public final void p1() {
        this.n = (ViewGroup) findViewById(R.id.main_layout);
        this.c = (TranCircleImageView) findViewById(R.id.iv_main_image);
        V0();
        K(this.r);
        Y0();
        j1();
        if (this.L) {
            m1();
        }
    }

    public final void q0() {
        View viewFindViewById = findViewById(R.id.ad_flag);
        if (viewFindViewById != null) {
            viewFindViewById.bringToFront();
        }
    }

    public final void q1() {
        ImageView imageView = (ImageView) findViewById(R.id.im_volume);
        this.o = imageView;
        if (imageView != null) {
            imageView.setVisibility(0);
            A(this.t);
        }
    }

    public final int r(View view, boolean z) {
        return s(view, z, false);
    }

    public final int s(View view, boolean z, boolean z2) {
        return t(view, z, z2, false);
    }

    public final void s0(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        DownLoadRequest.n(adsDTO.getAdImgUrl(), adsDTO, new g(), this.c);
        ikd.b().d("TAdInterstitialActivity", "use image to show ad is:= " + this.r.getAdImgUrl());
    }

    public final int t(View view, boolean z, boolean z2, boolean z3) {
        int iT = 0;
        try {
            ikd.b().d("TAdInterstitialActivity", "asyncAction");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.B > 1000 || z3) {
                if (!z) {
                    iT = T(view, z2);
                } else if (!this.K || this.L) {
                    M("_close", null);
                    if (!isFinishing()) {
                        P0();
                    }
                } else {
                    m1();
                }
                this.B = jCurrentTimeMillis;
            }
        } catch (Throwable th) {
            ikd.b().e(Log.getStackTraceString(th));
        }
        return iT;
    }

    public final void t1() {
        this.q.setDisplayStyle(this.r.getDisplayRule(), kn8.f(this.r), kn8.e(this.r), this.n.getMeasuredHeight());
    }

    public final void v0() {
        if (!w.o(this.r)) {
            this.M = 3;
        } else if (w.n(this.r)) {
            this.M = 1;
        } else {
            this.M = 2;
        }
        this.r.setEndCardType(this.M);
    }

    public final void v1() {
        AdsDTO adsDTO = this.r;
        if (adsDTO == null) {
            H0();
            return;
        }
        if (!TextUtils.isEmpty(adsDTO.getAdm())) {
            j0();
        } else if (this.r.isInteractiveAd()) {
            D0(this.r);
        } else if (this.r.isVastTypeAd()) {
            J0(this.r);
        } else if (this.r.getSource() != 4) {
            x0(this.r);
        } else if (this.r.getDefaultMaterialType() == 1) {
            s0(this.r);
        } else {
            J0(this.r);
        }
        x1();
    }

    public final void w0(View view) {
        r(view, true);
    }

    public final void w1() {
        vnd vndVar;
        WeakReference weakReference = d0;
        if (weakReference == null || (vndVar = (vnd) weakReference.get()) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.q);
        arrayList.add(this.f);
        arrayList.add(this.g);
        arrayList.add(this.d);
        arrayList.add(this.e);
        com.cloud.hisavana.sdk.m.a(vndVar.v(), this.r, this.i, arrayList);
    }

    public final void x0(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        DownLoadRequest.o(adsDTO.getAdImgUrl(), adsDTO, 2, new i(), this.c);
        ikd.b().d("TAdInterstitialActivity", "use image to show ad is:= " + this.r.getAdImgUrl());
    }

    public final void x1() {
        ViewGroup viewGroup;
        final View childAt;
        if (this.r == null || this.u || (viewGroup = this.n) == null || viewGroup.getChildCount() <= 0 || (childAt = this.n.getChildAt(0)) == null) {
            return;
        }
        childAt.post(new Runnable() {
            @Override
            public final void run() {
                this.b.c1(childAt);
            }
        });
    }

    public final void y1() {
        try {
            TextView textView = this.l;
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.b.i1(view);
                    }
                });
            }
        } catch (Throwable unused) {
        }
    }

    public final zfb z(boolean z) {
        if (r6.j()) {
            HSToastUtil.f(getString(R.string.hs_download_in_palm_store));
        }
        AdsDTO adsDTO = this.r;
        if (adsDTO != null) {
            adsDTO.setAdClickTracking(false);
        }
        this.V = true;
        s(getWindow().getDecorView(), z, true);
        if (!this.T || this.W) {
            H0();
        }
        return zfb.a;
    }

    public final void z1() {
        try {
            if (getIntent() != null) {
                this.s = getIntent().getStringExtra("BroadCastPrefix");
                this.r = (AdsDTO) getIntent().getParcelableExtra("mAdBean");
            }
            AdsDTO adsDTO = this.r;
            if (adsDTO != null && adsDTO.getMaterialStyle() != null) {
                int iB = t6.a.b(this.r);
                this.C = iB;
                if (iB != -1) {
                    S0();
                    return;
                }
                ikd.b().d("TAdInterstitialActivity", "TAdInterstitialActivity --> adMediaType == INVALID_TYPE");
                B(TaErrorCode.CODE_INVALID_TYPE, TaErrorCode.ERROR_INVALID_TYPE.getErrorMessage());
                finish();
                return;
            }
            ikd.b().d("TAdInterstitialActivity", "TAdInterstitialActivity --> null == mAdBean || null == mAdBean.materialStyle");
            B(TaErrorCode.CODE_INTERSTITIAL_MISS_ELEMENT, TaErrorCode.ERROR_INTERSTITIAL_MISS_ELEMENT.getErrorMessage());
            finish();
        } catch (Exception e2) {
            ikd.b().e("TAdInterstitialActivity", "start " + Log.getStackTraceString(e2));
        }
    }

    public class j implements hvd {
        public j() {
        }

        @Override
        public void a() {
            TAdInterstitialActivity.this.W = true;
            if (TAdInterstitialActivity.this.V) {
                ikd.b().d("TAdInterstitialActivity", "handleThePageClosingProcess closeAd");
                TAdInterstitialActivity.this.H0();
            }
        }

        @Override
        public int a(float f, float f2, float f3, float f4, boolean z) {
            if (!TAdInterstitialActivity.this.T) {
                TAdInterstitialActivity.this.x = f;
                TAdInterstitialActivity.this.y = f2;
                TAdInterstitialActivity.this.z = f3;
                TAdInterstitialActivity.this.A = f4;
            } else {
                TAdInterstitialActivity tAdInterstitialActivity = TAdInterstitialActivity.this;
                tAdInterstitialActivity.C(tAdInterstitialActivity.b, f, f2, f3, f4);
            }
            if (TAdInterstitialActivity.this.T) {
                boolean z2 = TAdInterstitialActivity.this.U;
                TAdInterstitialActivity.this.U = false;
                TAdInterstitialActivity tAdInterstitialActivity2 = TAdInterstitialActivity.this;
                return tAdInterstitialActivity2.V(tAdInterstitialActivity2.b, false, z2, z);
            }
            TAdInterstitialActivity tAdInterstitialActivity3 = TAdInterstitialActivity.this;
            return tAdInterstitialActivity3.h0(tAdInterstitialActivity3.b);
        }

        @Override
        public void a(String str, int i) {
            try {
                if (TAdInterstitialActivity.this.r != null) {
                    String triggerId = TAdInterstitialActivity.this.r.getTriggerId();
                    String codeSeatId = TAdInterstitialActivity.this.r.getCodeSeatId();
                    Bundle bundle = new Bundle();
                    bundle.putString("s_err_code", i + "");
                    bundle.putString("error_url", str);
                    SSPTrackingHelper.a.N(Integer.valueOf(TaErrorCode.ERROR_SHOW_ADM_LOAD_WEB_MATERIAL_ERROR.getErrorCode()), triggerId, codeSeatId, TAdInterstitialActivity.this.r, bundle);
                }
            } catch (Throwable unused) {
            }
            TAdInterstitialActivity.this.H0();
        }
    }
}
