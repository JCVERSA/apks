package com.mbridge.msdk.splash.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.shake.MBShakeView;
import com.mbridge.msdk.splash.view.nativeview.MBNoRecycledCrashImageView;
import com.mbridge.msdk.splash.view.nativeview.MBSplashClickView;
import com.mbridge.msdk.widget.FeedBackButton;

public class BaseMBSplashNativeView extends RelativeLayout {
    private int A;
    private int B;
    private int C;
    private float D;
    private float E;
    private boolean F;
    private boolean G;
    protected boolean H;
    protected boolean I;
    protected boolean J;
    protected String K;
    private String L;
    protected MBSplashView M;
    protected CampaignEx N;
    protected MBShakeView O;
    private String P;
    private String Q;
    private String R;
    protected com.mbridge.msdk.shake.b S;

    private MBNoRecycledCrashImageView f36790a;

    private MBNoRecycledCrashImageView f36791b;

    private RelativeLayout f36792c;

    private ImageView f36793d;

    private FeedBackButton f36794e;

    protected TextView f36795f;

    private RelativeLayout f36796g;

    private MBNoRecycledCrashImageView f36797h;

    private TextView f36798i;

    private MBNoRecycledCrashImageView f36799j;

    private TextView f36800k;

    private TextView f36801l;

    protected RelativeLayout f36802m;

    protected TextView f36803n;

    protected TextView f36804o;

    protected TextView f36805p;

    protected TextView f36806q;

    protected MBSplashClickView f36807r;

    protected int f36808s;

    private int f36809t;

    private int f36810u;

    private int f36811v;

    protected int f36812w;

    protected int f36813x;

    protected int f36814y;

    protected int f36815z;

    class a implements com.mbridge.msdk.foundation.same.image.c {
        a() {
        }

        @Override
        public void onFailedLoad(String str, String str2) {
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap != null) {
                try {
                    if (bitmap.isRecycled()) {
                        return;
                    }
                    if (bitmap.getWidth() < bitmap.getHeight()) {
                        BaseMBSplashNativeView.this.G = true;
                        BaseMBSplashNativeView.this.f36796g.setVisibility(4);
                        BaseMBSplashNativeView.this.f36791b.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        BaseMBSplashNativeView.this.f36791b.setImageBitmap(bitmap);
                    } else if (BaseMBSplashNativeView.this.A == 1) {
                        BaseMBSplashNativeView.this.f36796g.setVisibility(0);
                        try {
                            Bitmap bitmapA = n0.a(bitmap, 1, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f));
                            if (bitmapA != null && !bitmapA.isRecycled()) {
                                BaseMBSplashNativeView.this.f36799j.setScaleType(ImageView.ScaleType.FIT_XY);
                                BaseMBSplashNativeView.this.f36799j.setImageBitmap(bitmapA);
                            }
                        } catch (Throwable th2) {
                            try {
                                o0.b("MBSplashNativeView", th2.getMessage());
                                BaseMBSplashNativeView.this.f36799j.setImageBitmap(bitmap);
                            } catch (Throwable th3) {
                                o0.b("MBSplashNativeView", th3.getMessage());
                            }
                        }
                        BaseMBSplashNativeView.this.f36798i.setText(BaseMBSplashNativeView.this.N.getAppName());
                        BaseMBSplashNativeView.this.f();
                        try {
                            try {
                                Bitmap bitmapA2 = n0.a(bitmap);
                                if (bitmapA2 != null && !bitmapA2.isRecycled()) {
                                    BaseMBSplashNativeView.this.f36791b.setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    BaseMBSplashNativeView.this.f36791b.setImageBitmap(bitmapA2);
                                }
                            } catch (Throwable th4) {
                                o0.b("MBSplashNativeView", th4.getMessage());
                            }
                        } catch (Throwable unused) {
                            BaseMBSplashNativeView.this.f36791b.setImageBitmap(bitmap);
                        }
                    } else {
                        BaseMBSplashNativeView.this.f36796g.setVisibility(4);
                        BaseMBSplashNativeView.this.f36791b.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        BaseMBSplashNativeView.this.f36791b.setImageBitmap(bitmap);
                    }
                    try {
                        Bitmap bitmapA3 = n0.a(bitmap);
                        if (bitmapA3 == null || bitmapA3.isRecycled()) {
                            return;
                        }
                        BaseMBSplashNativeView.this.f36790a.setScaleType(ImageView.ScaleType.CENTER_CROP);
                        BaseMBSplashNativeView.this.f36790a.setImageBitmap(bitmapA3);
                        return;
                    } catch (Throwable unused2) {
                        BaseMBSplashNativeView.this.f36791b.setImageBitmap(bitmap);
                        return;
                    }
                    o0.b("MBSplashNativeView", th.getMessage());
                } catch (Throwable th5) {
                    o0.b("MBSplashNativeView", th5.getMessage());
                }
            }
        }
    }

    class b implements com.mbridge.msdk.foundation.same.image.c {
        b() {
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            BaseMBSplashNativeView.this.f36797h.setVisibility(4);
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            Bitmap bitmapA;
            if (bitmap != null) {
                try {
                    if (bitmap.isRecycled()) {
                        return;
                    }
                    try {
                        if (BaseMBSplashNativeView.this.f36797h == null || (bitmapA = n0.a(bitmap, 1, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 40.0f))) == null || bitmapA.isRecycled()) {
                            return;
                        }
                        BaseMBSplashNativeView.this.f36797h.setImageBitmap(bitmapA);
                        return;
                    } catch (Throwable th2) {
                        o0.b("MBSplashNativeView", th2.getMessage());
                        BaseMBSplashNativeView.this.f36797h.setImageBitmap(bitmap);
                        return;
                    }
                    o0.b("MBSplashNativeView", th.getMessage());
                } catch (Throwable th3) {
                    o0.b("MBSplashNativeView", th3.getMessage());
                }
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override
        public void onClick(View view) {
            BaseMBSplashNativeView.this.a(1);
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override
        public void onClick(View view) {
            BaseMBSplashNativeView.this.a(0);
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override
        public void onClick(View view) {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            if (baseMBSplashNativeView.H) {
                if (baseMBSplashNativeView.M.getSplashSignalCommunicationImpl() != null && BaseMBSplashNativeView.this.M.getSplashSignalCommunicationImpl().a() != null) {
                    BaseMBSplashNativeView.this.M.getSplashSignalCommunicationImpl().a().close();
                }
                BaseMBSplashNativeView.this.f36795f.setVisibility(4);
                BaseMBSplashNativeView.this.f36795f.setEnabled(false);
            }
        }
    }

    public BaseMBSplashNativeView(Context context) {
        super(context);
        this.I = false;
        this.J = false;
    }

    private void i() {
        if (this.f36811v == 1) {
            this.f36807r.setVisibility(8);
        } else if (this.f36813x == 1) {
            this.f36807r.setVisibility(8);
        } else {
            this.f36807r.initView(this.N.getAdCall());
        }
    }

    private void j() {
        if (this.f36810u == 1) {
            setOnClickListener(new d());
        } else {
            this.f36807r.setOnClickListener(new e());
        }
        this.f36795f.setOnClickListener(new f());
    }

    public void setCountDownStatus(boolean z10) {
        if (this.M.getSplashSignalCommunicationImpl() == null || this.M.getSplashSignalCommunicationImpl().a() == null) {
            return;
        }
        this.M.getSplashSignalCommunicationImpl().a().a(z10 ? 2 : 1, this.f36809t);
    }

    protected void b() {
    }

    protected void e() {
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            if (this.f36813x != 1 || this.O == null || this.S == null) {
                return;
            }
            com.mbridge.msdk.shake.a.a().a(this.S);
        } catch (Throwable th2) {
            o0.b("MBSplashNativeView", th2.getMessage());
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release();
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.D = motionEvent.getRawX();
        this.E = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void release() {
        try {
            if (this.S != null) {
                com.mbridge.msdk.shake.a.a().b(this.S);
                this.S = null;
            }
            com.mbridge.msdk.foundation.feedback.b.b().d(this.K);
            detachAllViewsFromParent();
        } catch (Exception e10) {
            o0.b("MBSplashNativeView", e10.getMessage());
        }
    }

    public void setIsPause(boolean z10) {
        this.I = z10;
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13) {
        try {
            RelativeLayout relativeLayout = this.f36792c;
            if (relativeLayout == null) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
            int i14 = this.C;
            layoutParams.leftMargin = i10 + i14;
            layoutParams.rightMargin = i11 + i14;
            layoutParams.topMargin = i12 + i14;
            layoutParams.bottomMargin = i14 + i13;
        } catch (Throwable th2) {
            o0.b("MBSplashNativeView", th2.getMessage());
        }
    }

    public void updateCountDown(int i10) {
        String str;
        if (this.f36795f != null) {
            this.f36809t = i10;
            if (this.H) {
                str = this.Q + " " + i10 + this.P;
            } else {
                str = i10 + this.P + " " + this.R;
            }
            this.f36795f.setText(str);
        }
    }

    class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override
        public void a() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = true;
            baseMBSplashNativeView.setCountDownStatus(false);
        }

        @Override
        public void close() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }

        @Override
        public void a(String str) {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }
    }

    class g implements com.mbridge.msdk.foundation.feedback.a {
        g() {
        }

        @Override
        public void a() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = true;
            baseMBSplashNativeView.setCountDownStatus(false);
        }

        @Override
        public void close() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }

        @Override
        public void a(String str) {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }
    }

    private void c() {
        try {
            this.F = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh");
        } catch (Throwable th2) {
            o0.b("MBSplashNativeView", th2.getMessage());
        }
        a();
        g();
        h();
        e();
        i();
        j();
        b();
        updateCountDown(this.f36808s);
    }

    private void d() {
        try {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.A == 1 ? g0.a(getContext().getApplicationContext(), "mbridge_splash_portrait", TtmlNode.TAG_LAYOUT) : g0.a(getContext().getApplicationContext(), "mbridge_splash_landscape", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
            addView(viewInflate);
            this.f36790a = (MBNoRecycledCrashImageView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_image_bg", "id"));
            this.f36791b = (MBNoRecycledCrashImageView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_image", "id"));
            this.f36792c = (RelativeLayout) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_topcontroller", "id"));
            this.f36793d = (ImageView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_link", "id"));
            this.f36794e = (FeedBackButton) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_feedback", "id"));
            this.f36795f = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_skip", "id"));
            this.f36796g = (RelativeLayout) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_landscape_foreground", "id"));
            this.f36797h = (MBNoRecycledCrashImageView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_icon", "id"));
            this.f36798i = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_title", "id"));
            this.f36799j = (MBNoRecycledCrashImageView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_foregroundimage", "id"));
            this.f36800k = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_adrect", "id"));
            this.f36802m = (RelativeLayout) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_layout_appinfo", "id"));
            this.f36803n = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_appinfo", "id"));
            this.f36804o = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_privacy", "id"));
            this.f36805p = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_permission", "id"));
            this.f36806q = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_app_desc", "id"));
            this.f36807r = (MBSplashClickView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_click", "id"));
            this.f36801l = (TextView) viewInflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_adcircle", "id"));
            int iA = g0.a(getContext().getApplicationContext(), "mbridge_splash_count_time_can_skip", "string");
            int iA2 = g0.a(getContext().getApplicationContext(), "mbridge_splash_count_time_can_skip_not", "string");
            int iA3 = g0.a(getContext().getApplicationContext(), "mbridge_splash_count_time_can_skip_s", "string");
            this.Q = getContext().getResources().getString(iA);
            this.R = getContext().getResources().getString(iA2);
            this.P = getContext().getResources().getString(iA3);
            this.C = t0.a(getContext(), 9.0f);
        } catch (Throwable th2) {
            o0.b("MBSplashNativeView", th2.getMessage());
        }
    }

    public void f() {
        if (TextUtils.isEmpty(this.N.getIconUrl())) {
            this.f36797h.setVisibility(4);
        } else {
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.N.getIconUrl(), new b());
        }
    }

    private void g() {
        if (TextUtils.isEmpty(this.N.getImageUrl())) {
            this.f36791b.setVisibility(4);
        } else {
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.N.getImageUrl(), new a());
        }
    }

    private void h() {
        Drawable drawable;
        t0.a(3, this.f36793d, this.N, getContext(), true, new c());
        try {
            drawable = getResources().getDrawable(g0.a(getContext().getApplicationContext(), "mbridge_splash_m_circle", "drawable"));
            try {
                drawable.setBounds(0, 0, t0.a(getContext(), 10.0f), t0.a(getContext(), 10.0f));
            } catch (Throwable th2) {
                th = th2;
                o0.b("MBSplashNativeView", th.getMessage());
            }
        } catch (Throwable th3) {
            th = th3;
            drawable = null;
        }
        if (this.A == 1 && this.G) {
            if (this.B != 0 && drawable != null) {
                this.f36801l.setCompoundDrawables(drawable, null, null, null);
            }
            this.f36801l.setText(this.F ? "广告" : "AD");
            this.f36800k.setVisibility(4);
            return;
        }
        if (this.B != 0 && drawable != null) {
            this.f36800k.setCompoundDrawables(drawable, null, null, null);
        }
        this.f36800k.setText(this.F ? "广告" : "AD");
        this.f36801l.setVisibility(4);
    }

    protected void a(int i10) {
        if (this.M.getSplashSignalCommunicationImpl() == null || this.M.getSplashSignalCommunicationImpl().a() == null) {
            return;
        }
        try {
            this.M.getSplashSignalCommunicationImpl().a().a(com.mbridge.msdk.splash.common.util.a.a(com.mbridge.msdk.splash.common.util.a.a(i10, this.D, this.E), this.N));
        } catch (Throwable th2) {
            o0.b("MBSplashNativeView", th2.getMessage());
            this.M.getSplashSignalCommunicationImpl().a().a(this.N);
        }
    }

    public BaseMBSplashNativeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseMBSplashNativeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.I = false;
        this.J = false;
    }

    public BaseMBSplashNativeView(Context context, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar) {
        super(context);
        this.I = false;
        this.J = false;
        if (cVar != null) {
            this.K = cVar.l();
            this.L = cVar.h();
            this.N = cVar.b();
            this.M = mBSplashView;
            this.f36808s = cVar.d();
            this.f36811v = cVar.c();
            this.f36810u = cVar.f();
            this.f36812w = cVar.a();
            this.f36813x = cVar.i();
            this.f36814y = cVar.j();
            this.f36815z = cVar.k();
            this.A = cVar.g();
            this.H = cVar.m();
            this.B = cVar.e();
            d();
            c();
            return;
        }
        throw new IllegalArgumentException("Parameters is NULL, can't gen view.");
    }

    private void a() {
        CampaignEx campaignEx = this.N;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.K);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, 3);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, this.N);
        }
        if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, new g());
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, this.f36794e);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, 3);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, this.N);
            return;
        }
        FeedBackButton feedBackButton = this.f36794e;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(8);
        }
    }
}
