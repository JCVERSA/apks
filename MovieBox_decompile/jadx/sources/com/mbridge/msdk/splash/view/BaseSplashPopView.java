package com.mbridge.msdk.splash.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.click.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.MBridgeIds;
import java.util.concurrent.atomic.AtomicInteger;

public class BaseSplashPopView extends RelativeLayout {
    public static final int TYPE_POP_DEFAULT = 1;
    public static final int TYPE_POP_LARGE = 4;
    public static final int TYPE_POP_MEDIUM = 3;
    public static final int TYPE_POP_SMALL = 2;

    private static final AtomicInteger f36823v = new AtomicInteger(1);

    protected String f36824a;

    protected String f36825b;

    private int f36826c;

    private CampaignEx f36827d;

    protected com.mbridge.msdk.splash.middle.d f36828e;

    private ImageView f36829f;

    private ImageView f36830g;

    private ImageView f36831h;

    private ImageView f36832i;

    private TextView f36833j;

    private TextView f36834k;

    private TextView f36835l;

    private int f36836m;

    protected Handler f36837n;

    private boolean f36838o;

    protected com.mbridge.msdk.click.a f36839p;

    private j f36840q;

    private Runnable f36841r;

    private Runnable f36842s;

    View.OnClickListener f36843t;

    View.OnClickListener f36844u;

    class a implements j {
        a() {
        }

        @Override
        public void onFinishRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, BaseSplashPopView.this);
        }

        @Override
        public void onRedirectionFailed(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, BaseSplashPopView.this);
        }

        @Override
        public void onStartRedirection(Campaign campaign, String str) {
            int iA;
            int iA2;
            if (BaseSplashPopView.this.f36826c == 1) {
                int iMin = Math.min(BaseSplashPopView.this.getWidth(), BaseSplashPopView.this.getHeight());
                int iA3 = (t0.a(BaseSplashPopView.this.getContext(), 60.0f) - Math.min(Math.max(iMin / 4, 70), iMin)) / 2;
                iA = t0.a(BaseSplashPopView.this.getContext(), 23.0f) + iA3;
                iA2 = t0.a(BaseSplashPopView.this.getContext(), 10.0f) + iA3;
            } else {
                iA = 0;
                iA2 = 0;
            }
            s0.a(campaign, BaseSplashPopView.this, iA, iA2);
        }
    }

    class b implements com.mbridge.msdk.foundation.same.image.c {

        final boolean f36846a;

        b(boolean z10) {
            this.f36846a = z10;
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            o0.b("MBSplashPopView", str);
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            try {
                if (bitmap.isRecycled()) {
                    return;
                }
                Bitmap bitmapB = this.f36846a ? n0.b(bitmap) : n0.a(bitmap, 1, 16);
                ImageView imageView = BaseSplashPopView.this.f36829f;
                if (bitmapB != null) {
                    bitmap = bitmapB;
                }
                imageView.setImageBitmap(bitmap);
            } catch (Throwable th2) {
                o0.b("MBSplashPopView", th2.getMessage());
            }
        }
    }

    class c implements com.mbridge.msdk.foundation.same.image.c {
        c() {
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            o0.b("MBSplashPopView", str);
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            try {
                if (bitmap.isRecycled()) {
                    return;
                }
                BaseSplashPopView.this.f36831h.setImageBitmap(y.a(bitmap, 10));
            } catch (Throwable th2) {
                o0.b("MBSplashPopView", th2.getMessage());
            }
        }
    }

    class d implements com.mbridge.msdk.foundation.same.image.c {
        d() {
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            o0.b("MBSplashPopView", str);
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            try {
                if (bitmap.isRecycled()) {
                    return;
                }
                BaseSplashPopView.this.f36830g.setImageBitmap(n0.a(bitmap, 1, 16));
            } catch (Throwable th2) {
                o0.b("MBSplashPopView", th2.getMessage());
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override
        public void run() {
            if (BaseSplashPopView.this.f36835l != null) {
                if (BaseSplashPopView.this.f36836m != 0) {
                    BaseSplashPopView.g(BaseSplashPopView.this);
                    BaseSplashPopView.this.f36835l.setText(String.valueOf(BaseSplashPopView.this.f36836m));
                    BaseSplashPopView baseSplashPopView = BaseSplashPopView.this;
                    baseSplashPopView.f36837n.postDelayed(baseSplashPopView.f36841r, 1000L);
                    return;
                }
                BaseSplashPopView.this.f36836m = -1;
                BaseSplashPopView.this.g();
                BaseSplashPopView baseSplashPopView2 = BaseSplashPopView.this;
                baseSplashPopView2.f36837n.removeCallbacks(baseSplashPopView2.f36841r);
                BaseSplashPopView baseSplashPopView3 = BaseSplashPopView.this;
                com.mbridge.msdk.splash.middle.d dVar = baseSplashPopView3.f36828e;
                if (dVar != null) {
                    dVar.a(new MBridgeIds(baseSplashPopView3.f36824a, baseSplashPopView3.f36825b), 5);
                }
            }
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override
        public void run() {
            BaseSplashPopView baseSplashPopView = BaseSplashPopView.this;
            com.mbridge.msdk.splash.middle.d dVar = baseSplashPopView.f36828e;
            if (dVar != null) {
                dVar.a(new MBridgeIds(baseSplashPopView.f36824a, baseSplashPopView.f36825b), BaseSplashPopView.this.getWidth(), BaseSplashPopView.this.getHeight(), BaseSplashPopView.this.f36826c);
            }
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override
        public void onClick(View view) {
            BaseSplashPopView baseSplashPopView = BaseSplashPopView.this;
            if (baseSplashPopView.f36828e != null) {
                baseSplashPopView.b(baseSplashPopView.f36827d);
            }
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override
        public void onClick(View view) {
            BaseSplashPopView baseSplashPopView;
            com.mbridge.msdk.splash.middle.d dVar;
            if (BaseSplashPopView.this.f36836m <= 0 && (dVar = (baseSplashPopView = BaseSplashPopView.this).f36828e) != null) {
                dVar.a(new MBridgeIds(baseSplashPopView.f36824a, baseSplashPopView.f36825b), 4);
            }
        }
    }

    public static class i {

        private String f36854a;

        private String f36855b;

        private int f36856c;

        private CampaignEx f36857d;

        public i(String str, String str2, int i10, CampaignEx campaignEx) {
            this.f36854a = str;
            this.f36855b = str2;
            this.f36856c = i10;
            this.f36857d = campaignEx;
        }

        public CampaignEx a() {
            return this.f36857d;
        }

        public String b() {
            return this.f36854a;
        }

        public String c() {
            return this.f36855b;
        }

        public int d() {
            return this.f36856c;
        }
    }

    public BaseSplashPopView(Context context, i iVar, com.mbridge.msdk.splash.middle.d dVar) {
        super(context);
        this.f36826c = 1;
        this.f36836m = -1;
        this.f36837n = new Handler();
        this.f36838o = false;
        this.f36840q = new a();
        this.f36841r = new e();
        this.f36842s = new f();
        this.f36843t = new g();
        this.f36844u = new h();
        if (iVar == null) {
            throw new IllegalArgumentException("Parameters is NULL, can't gen view.");
        }
        this.f36825b = iVar.c();
        this.f36824a = iVar.b();
        this.f36826c = iVar.d();
        this.f36827d = iVar.a();
        this.f36828e = dVar;
        a();
    }

    static int g(BaseSplashPopView baseSplashPopView) {
        int i10 = baseSplashPopView.f36836m;
        baseSplashPopView.f36836m = i10 - 1;
        return i10;
    }

    public static int generateViewId() {
        AtomicInteger atomicInteger;
        int i10;
        int i11;
        do {
            atomicInteger = f36823v;
            i10 = atomicInteger.get();
            i11 = i10 + 1;
            if (i11 > 16777215) {
                i11 = 1;
            }
        } while (!atomicInteger.compareAndSet(i10, i11));
        return i10;
    }

    private void setBackgroundImage(String str) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, new c());
    }

    private void setForegroundImage(String str) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, new d());
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f36828e != null) {
            postDelayed(this.f36842s, 500L);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release();
    }

    public void pauseCountDown() {
        this.f36838o = true;
        if (this.f36835l != null) {
            this.f36837n.removeCallbacks(this.f36841r);
        }
    }

    public void reStartCountDown() {
        if (this.f36838o) {
            this.f36838o = false;
            int i10 = this.f36836m;
            if (i10 == -1 || i10 == 0) {
                g();
                return;
            }
            TextView textView = this.f36835l;
            if (textView != null) {
                textView.setText(String.valueOf(i10));
                this.f36837n.postDelayed(this.f36841r, 1000L);
            }
        }
    }

    public void release() {
        try {
            this.f36837n.removeCallbacks(this.f36842s);
            this.f36837n.removeCallbacks(this.f36841r);
            this.f36841r = null;
            detachAllViewsFromParent();
            this.f36827d = null;
            this.f36828e = null;
        } catch (Exception e10) {
            o0.b("MBSplashPopView", e10.getMessage());
        }
    }

    public void setPopViewType(i iVar, com.mbridge.msdk.splash.middle.d dVar) {
        if (iVar == null) {
            throw new IllegalArgumentException("Parameters is NULL, can't gen view.");
        }
        this.f36825b = iVar.c();
        this.f36824a = iVar.b();
        this.f36826c = iVar.d();
        this.f36827d = iVar.a();
        this.f36828e = dVar;
        a();
    }

    public void startCountDown() {
        this.f36837n.removeCallbacks(this.f36841r);
        CampaignEx campaignEx = this.f36827d;
        if (campaignEx == null || this.f36826c != 1) {
            return;
        }
        int flbSkipTime = campaignEx.getFlbSkipTime();
        if (flbSkipTime <= 0) {
            g();
            return;
        }
        this.f36836m = flbSkipTime;
        TextView textView = this.f36835l;
        if (textView != null) {
            textView.setText(String.valueOf(flbSkipTime));
            this.f36837n.postDelayed(this.f36841r, 1000L);
        }
    }

    private void b() {
        String language;
        this.f36832i = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 32.0f), t0.a(getContext(), 13.0f));
        layoutParams.addRule(11);
        layoutParams.addRule(8, this.f36829f.getId());
        this.f36832i.setLayoutParams(layoutParams);
        try {
            language = getResources().getConfiguration().locale.getLanguage();
        } catch (Throwable th2) {
            o0.b("MBSplashPopView", th2.getMessage());
            language = "ZH";
        }
        this.f36832i.setBackgroundResource((language.toUpperCase().equals("CN") || language.toUpperCase().equals("ZH")) ? getResources().getIdentifier("mbridge_splash_pop_ad", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()) : getResources().getIdentifier("mbridge_splash_pop_ad_en", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        addView(this.f36832i);
    }

    private void c() {
        View imageView = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 80.0f), t0.a(getContext(), 80.0f));
        layoutParams.addRule(9);
        layoutParams.topMargin = t0.a(getContext(), 16.0f);
        imageView.setId(generateViewId());
        imageView.setLayoutParams(layoutParams);
        imageView.setBackgroundResource(getResources().getIdentifier("mbridge_splash_popview_default", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        this.f36829f = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(t0.a(getContext(), 60.0f), t0.a(getContext(), 60.0f));
        layoutParams2.addRule(6, imageView.getId());
        layoutParams2.topMargin = t0.a(getContext(), 7.0f);
        layoutParams2.leftMargin = t0.a(getContext(), 10.0f);
        this.f36829f.setId(generateViewId());
        this.f36829f.setLayoutParams(layoutParams2);
        this.f36829f.setScaleType(ImageView.ScaleType.FIT_CENTER);
        CampaignEx campaignEx = this.f36827d;
        if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getIconUrl())) {
            a(this.f36827d.getIconUrl(), true);
        }
        this.f36835l = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(5, imageView.getId());
        layoutParams3.addRule(8, imageView.getId());
        layoutParams3.leftMargin = t0.a(getContext(), 62.0f);
        layoutParams3.bottomMargin = t0.a(getContext(), 70.0f);
        this.f36835l.setId(generateViewId());
        this.f36835l.setTextSize(10.0f);
        this.f36835l.setTextColor(-1);
        this.f36835l.setGravity(17);
        this.f36835l.setMinWidth(t0.a(getContext(), 16.0f));
        this.f36835l.setMaxHeight(t0.a(getContext(), 16.0f));
        this.f36835l.setLayoutParams(layoutParams3);
        this.f36835l.setBackgroundResource(getResources().getIdentifier("mbridge_cm_circle_50black", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        addView(imageView);
        addView(this.f36835l);
        addView(this.f36829f);
        CampaignEx campaignEx2 = this.f36827d;
        if (campaignEx2 != null && campaignEx2.getFlbSkipTime() <= 0) {
            g();
        }
        setOnClickListener(this.f36843t);
        this.f36835l.setOnClickListener(this.f36844u);
    }

    private void d() {
        this.f36831h = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, t0.a(getContext(), 131.0f));
        layoutParams.addRule(10);
        layoutParams.addRule(14);
        this.f36831h.setScaleType(ImageView.ScaleType.FIT_XY);
        this.f36831h.setId(generateViewId());
        this.f36831h.setLayoutParams(layoutParams);
        setBackgroundImage(this.f36827d.getImageUrl());
        this.f36830g = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, t0.a(getContext(), 131.0f));
        layoutParams2.addRule(10);
        layoutParams2.addRule(14);
        this.f36830g.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.f36830g.setId(generateViewId());
        this.f36830g.setLayoutParams(layoutParams2);
        setForegroundImage(this.f36827d.getImageUrl());
        this.f36829f = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(t0.a(getContext(), 50.0f), t0.a(getContext(), 50.0f));
        layoutParams3.addRule(9);
        layoutParams3.addRule(3, this.f36831h.getId());
        layoutParams3.topMargin = 20;
        this.f36829f.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.f36829f.setId(generateViewId());
        this.f36829f.setLayoutParams(layoutParams3);
        a(this.f36827d.getIconUrl(), false);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams4.addRule(1, this.f36829f.getId());
        layoutParams4.addRule(6, this.f36829f.getId());
        layoutParams4.addRule(8, this.f36829f.getId());
        layoutParams4.leftMargin = t0.a(getContext(), 8.0f);
        layoutParams4.rightMargin = t0.a(getContext(), 8.0f);
        relativeLayout.setLayoutParams(layoutParams4);
        relativeLayout.setGravity(16);
        TextView textView = new TextView(getContext());
        this.f36833j = textView;
        textView.setId(generateViewId());
        this.f36833j.setGravity(16);
        this.f36833j.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.f36833j.setTextSize(12.0f);
        this.f36833j.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        TextView textView2 = this.f36833j;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.MARQUEE;
        textView2.setEllipsize(truncateAt);
        this.f36833j.setMarqueeRepeatLimit(-1);
        this.f36833j.setSelected(true);
        this.f36833j.setSingleLine(true);
        this.f36833j.setText(this.f36827d.getAppName());
        TextView textView3 = new TextView(getContext());
        this.f36834k = textView3;
        textView3.setId(generateViewId());
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(5, this.f36833j.getId());
        layoutParams5.addRule(3, this.f36833j.getId());
        layoutParams5.topMargin = t0.a(getContext(), 4.0f);
        layoutParams5.rightMargin = t0.a(getContext(), 36.0f);
        this.f36834k.setGravity(16);
        this.f36834k.setLayoutParams(layoutParams5);
        this.f36834k.setTextSize(8.0f);
        this.f36834k.setTextColor(-10066330);
        this.f36834k.setEllipsize(truncateAt);
        this.f36834k.setMarqueeRepeatLimit(-1);
        this.f36834k.setSelected(true);
        this.f36834k.setSingleLine(true);
        this.f36834k.setText(this.f36827d.getAppDesc());
        relativeLayout.addView(this.f36833j);
        relativeLayout.addView(this.f36834k);
        addView(this.f36831h);
        addView(this.f36830g);
        addView(this.f36829f);
        addView(relativeLayout);
        b();
        setOnClickListener(this.f36843t);
    }

    private void e() {
        int iA = t0.a(getContext(), 4.0f);
        this.f36829f = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 50.0f), t0.a(getContext(), 50.0f));
        layoutParams.addRule(9);
        this.f36829f.setId(generateViewId());
        this.f36829f.setLayoutParams(layoutParams);
        this.f36829f.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.f36829f.setPadding(iA, iA, iA, iA);
        a(this.f36827d.getIconUrl(), false);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(1, this.f36829f.getId());
        layoutParams2.addRule(6, this.f36829f.getId());
        layoutParams2.addRule(8, this.f36829f.getId());
        layoutParams2.leftMargin = t0.a(getContext(), 8.0f);
        layoutParams2.rightMargin = t0.a(getContext(), 8.0f);
        relativeLayout.setLayoutParams(layoutParams2);
        relativeLayout.setGravity(16);
        TextView textView = new TextView(getContext());
        this.f36833j = textView;
        textView.setId(generateViewId());
        this.f36833j.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.f36833j.setGravity(16);
        this.f36833j.setTextSize(12.0f);
        this.f36833j.setSelected(true);
        TextView textView2 = this.f36833j;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.MARQUEE;
        textView2.setEllipsize(truncateAt);
        this.f36833j.setMarqueeRepeatLimit(-1);
        this.f36833j.setSingleLine(true);
        this.f36833j.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.f36833j.setText(this.f36827d.getAppName());
        TextView textView3 = new TextView(getContext());
        this.f36834k = textView3;
        textView3.setId(generateViewId());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(5, this.f36833j.getId());
        layoutParams3.addRule(3, this.f36833j.getId());
        layoutParams3.topMargin = t0.a(getContext(), 4.0f);
        layoutParams3.rightMargin = t0.a(getContext(), 36.0f);
        this.f36834k.setGravity(16);
        this.f36834k.setLayoutParams(layoutParams3);
        this.f36834k.setTextSize(8.0f);
        this.f36834k.setTextColor(-10066330);
        this.f36834k.setEllipsize(truncateAt);
        this.f36834k.setMarqueeRepeatLimit(-1);
        this.f36834k.setSelected(true);
        this.f36834k.setSingleLine(true);
        this.f36834k.setText(this.f36827d.getAppDesc());
        relativeLayout.addView(this.f36833j);
        relativeLayout.addView(this.f36834k);
        setBackgroundResource(getResources().getIdentifier("mbridge_shape_corners_bg", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        addView(this.f36829f);
        addView(relativeLayout);
        b();
        setOnClickListener(this.f36843t);
    }

    private void f() {
        int iA = t0.a(getContext(), 4.0f);
        this.f36829f = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 28.0f), t0.a(getContext(), 28.0f));
        layoutParams.addRule(9);
        this.f36829f.setId(generateViewId());
        this.f36829f.setLayoutParams(layoutParams);
        this.f36829f.setPadding(iA, iA, iA, iA);
        this.f36829f.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        a(this.f36827d.getIconUrl(), false);
        TextView textView = new TextView(getContext());
        this.f36833j = textView;
        textView.setId(generateViewId());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(1, this.f36829f.getId());
        layoutParams2.addRule(6, this.f36829f.getId());
        layoutParams2.addRule(8, this.f36829f.getId());
        layoutParams2.leftMargin = t0.a(getContext(), 4.0f);
        layoutParams2.rightMargin = t0.a(getContext(), 40.0f);
        this.f36833j.setLayoutParams(layoutParams2);
        this.f36833j.setGravity(16);
        this.f36833j.setTextSize(10.0f);
        this.f36833j.setSelected(true);
        this.f36833j.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        this.f36833j.setMarqueeRepeatLimit(-1);
        this.f36833j.setSingleLine(true);
        this.f36833j.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.f36833j.setText(this.f36827d.getAppName());
        setBackgroundResource(getResources().getIdentifier("mbridge_shape_corners_bg", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        addView(this.f36829f);
        addView(this.f36833j);
        b();
        setOnClickListener(this.f36843t);
    }

    public void g() {
        TextView textView = this.f36835l;
        if (textView != null) {
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            layoutParams.width = t0.a(getContext(), 16.0f);
            layoutParams.height = t0.a(getContext(), 16.0f);
            this.f36835l.setLayoutParams(layoutParams);
            this.f36835l.setText("");
            this.f36835l.setSelected(true);
            this.f36835l.setBackgroundResource(getResources().getIdentifier("mbridge_splash_popview_close", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        }
    }

    private void a() {
        if (this.f36827d == null) {
            return;
        }
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        int i10 = this.f36826c;
        if (i10 == 1) {
            c();
            return;
        }
        if (i10 == 2) {
            f();
        } else if (i10 == 3) {
            e();
        } else {
            if (i10 != 4) {
                return;
            }
            d();
        }
    }

    private void a(String str, boolean z10) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, new b(z10));
    }

    protected void a(CampaignEx campaignEx) {
        if (this.f36839p == null) {
            com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36825b);
            this.f36839p = aVar;
            aVar.a(this.f36840q);
        }
        campaignEx.setCampaignUnitId(this.f36825b);
        this.f36839p.a(campaignEx);
        if (!campaignEx.isReportClick()) {
            campaignEx.setReportClick(true);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
        }
        com.mbridge.msdk.splash.middle.d dVar = this.f36828e;
        if (dVar != null) {
            dVar.a(new MBridgeIds(this.f36824a, this.f36825b));
            this.f36828e.a(new MBridgeIds(this.f36824a, this.f36825b), 6);
        }
    }

    protected void b(CampaignEx campaignEx) {
        com.mbridge.msdk.splash.report.a.a(campaignEx, this.f36825b);
    }

    public BaseSplashPopView(Context context) {
        super(context);
        this.f36826c = 1;
        this.f36836m = -1;
        this.f36837n = new Handler();
        this.f36838o = false;
        this.f36840q = new a();
        this.f36841r = new e();
        this.f36842s = new f();
        this.f36843t = new g();
        this.f36844u = new h();
        this.f36826c = 1;
        o0.c("MBSplashPopView", "Please call setPopViewType() to init.");
    }

    public BaseSplashPopView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36826c = 1;
        this.f36836m = -1;
        this.f36837n = new Handler();
        this.f36838o = false;
        this.f36840q = new a();
        this.f36841r = new e();
        this.f36842s = new f();
        this.f36843t = new g();
        this.f36844u = new h();
        this.f36826c = 1;
        o0.c("MBSplashPopView", "Please call setPopViewType() to init.");
    }

    public BaseSplashPopView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f36826c = 1;
        this.f36836m = -1;
        this.f36837n = new Handler();
        this.f36838o = false;
        this.f36840q = new a();
        this.f36841r = new e();
        this.f36842s = new f();
        this.f36843t = new g();
        this.f36844u = new h();
        this.f36826c = 1;
        o0.c("MBSplashPopView", "Please call setPopViewType() to init.");
    }

    public BaseSplashPopView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f36826c = 1;
        this.f36836m = -1;
        this.f36837n = new Handler();
        this.f36838o = false;
        this.f36840q = new a();
        this.f36841r = new e();
        this.f36842s = new f();
        this.f36843t = new g();
        this.f36844u = new h();
        this.f36826c = 1;
        o0.c("MBSplashPopView", "Please call setPopViewType() to init.");
    }
}
