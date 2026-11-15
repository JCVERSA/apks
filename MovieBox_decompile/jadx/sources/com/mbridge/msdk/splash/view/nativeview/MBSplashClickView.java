package com.mbridge.msdk.splash.view.nativeview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.tools.t0;

public class MBSplashClickView extends RelativeLayout {
    public final int TYPE_SPLASH_BTN_CLICK;
    public final int TYPE_SPLASH_BTN_GO;
    public final int TYPE_SPLASH_BTN_OPEN;

    private final String f36888a;

    private final String f36889b;

    private final String f36890c;

    private final String f36891d;

    private final String f36892e;

    private final String f36893f;

    private final String f36894g;

    private final String f36895h;

    private final String f36896i;

    private final String f36897j;

    private final String f36898k;

    private String f36899l;

    private int f36900m;

    private ImageView f36901n;

    private ImageView f36902o;

    private final RectF f36903p;

    private final Paint f36904q;

    private final Paint f36905r;

    class a implements Animation.AnimationListener {

        final ScaleAnimation f36906a;

        class RunnableC0522a implements Runnable {
            RunnableC0522a() {
            }

            @Override
            public void run() {
                MBSplashClickView.this.f36902o.startAnimation(a.this.f36906a);
            }
        }

        a(ScaleAnimation scaleAnimation) {
            this.f36906a = scaleAnimation;
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            MBSplashClickView.this.f36902o.setVisibility(4);
            MBSplashClickView.this.f36902o.postDelayed(new RunnableC0522a(), 700L);
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
            MBSplashClickView.this.f36902o.setVisibility(0);
        }
    }

    class b implements Runnable {

        final ScaleAnimation f36909a;

        b(ScaleAnimation scaleAnimation) {
            this.f36909a = scaleAnimation;
        }

        @Override
        public void run() {
            MBSplashClickView.this.f36902o.startAnimation(this.f36909a);
        }
    }

    class c implements Animation.AnimationListener {

        class a implements Runnable {

            final Animation f36912a;

            a(Animation animation) {
                this.f36912a = animation;
            }

            @Override
            public void run() {
                MBSplashClickView.this.f36901n.startAnimation(this.f36912a);
            }
        }

        c() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            MBSplashClickView.this.f36901n.setVisibility(4);
            MBSplashClickView.this.f36901n.postDelayed(new a(animation), 2000L);
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
            MBSplashClickView.this.f36901n.setVisibility(0);
        }
    }

    public MBSplashClickView(Context context) {
        super(context);
        this.f36888a = "浏览第三方应用";
        this.f36889b = "View";
        this.f36890c = "打开第三方应用";
        this.f36891d = "Open";
        this.f36892e = "下载第三方应用";
        this.f36893f = "Install";
        this.f36894g = "mbridge_splash_btn_arrow_right";
        this.f36895h = "mbridge_splash_btn_circle";
        this.f36896i = "mbridge_splash_btn_finger";
        this.f36897j = "mbridge_splash_btn_go";
        this.f36898k = "mbridge_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f36903p = new RectF();
        this.f36904q = new Paint();
        this.f36905r = new Paint();
        a();
    }

    private void c() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(400L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.0f, 0.5f, 0.0f, 0.5f, 1, 0.5f, 1, 0.5f);
        scaleAnimation2.setDuration(200L);
        scaleAnimation2.setAnimationListener(new a(scaleAnimation2));
        this.f36902o.setVisibility(4);
        this.f36901n.startAnimation(scaleAnimation);
        this.f36902o.postDelayed(new b(scaleAnimation2), 500L);
    }

    private void d() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(500L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        this.f36901n.startAnimation(scaleAnimation);
    }

    private void e() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0, -100.0f, 0, 1000.0f, 0, 0.0f, 0, 0.0f);
        translateAnimation.setDuration(1000L);
        translateAnimation.setAnimationListener(new c());
        this.f36901n.startAnimation(translateAnimation);
    }

    private void setBgDrawable(int i10) {
        int color = Color.parseColor("#666666");
        int color2 = Color.parseColor("#8FC31F");
        int color3 = Color.parseColor("#000000");
        GradientDrawable gradientDrawable = new GradientDrawable();
        if (i10 == 2) {
            gradientDrawable.setColor(color2);
        } else {
            gradientDrawable.setColor(color3);
            gradientDrawable.setStroke(2, color);
        }
        gradientDrawable.setCornerRadius(200);
        setBackground(gradientDrawable);
    }

    @Override
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.f36903p, this.f36905r, 31);
        canvas.drawRoundRect(this.f36903p, 200.0f, 200.0f, this.f36905r);
        canvas.saveLayer(this.f36903p, this.f36904q, 31);
        super.draw(canvas);
        canvas.restore();
    }

    public void initView(String str) {
        this.f36899l = str;
        b();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        int i10 = this.f36900m;
        if (i10 == 2) {
            d();
        } else if (i10 == 1) {
            e();
        } else if (i10 == 3) {
            c();
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.f36903p.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    private void a() {
        this.f36904q.setAntiAlias(true);
        this.f36904q.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f36905r.setAntiAlias(true);
        this.f36905r.setColor(-1);
    }

    private void b() {
        RelativeLayout.LayoutParams layoutParams;
        int identifier;
        if (!a(this.f36899l)) {
            boolean zContains = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh");
            if (TextUtils.isEmpty(this.f36899l)) {
                this.f36899l = zContains ? "浏览第三方应用" : "View";
            }
            this.f36900m = 2;
        }
        setBgDrawable(this.f36900m);
        TextView textView = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(15);
        textView.setLayoutParams(layoutParams2);
        textView.setGravity(17);
        textView.setTextSize(20.0f);
        textView.setTextColor(-1);
        textView.setText(this.f36899l);
        this.f36901n = new ImageView(getContext());
        int i10 = this.f36900m;
        if (i10 == 2) {
            identifier = getResources().getIdentifier("mbridge_splash_btn_go", "drawable", com.mbridge.msdk.foundation.controller.c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 35.0f), t0.a(getContext(), 35.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(15);
            layoutParams.rightMargin = t0.a(getContext(), 10.0f);
        } else if (i10 == 1) {
            identifier = getResources().getIdentifier("mbridge_splash_btn_light", "drawable", com.mbridge.msdk.foundation.controller.c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams.leftMargin = 20;
            layoutParams.rightMargin = 20;
            ImageView imageView = new ImageView(getContext());
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams3.addRule(11);
            layoutParams3.addRule(15);
            layoutParams3.rightMargin = t0.a(getContext(), 50.0f);
            imageView.setImageResource(getResources().getIdentifier("mbridge_splash_btn_arrow_right", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setLayoutParams(layoutParams3);
            addView(imageView);
        } else if (i10 == 3) {
            identifier = getResources().getIdentifier("mbridge_splash_btn_finger", "drawable", com.mbridge.msdk.foundation.controller.c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 25.0f), t0.a(getContext(), 25.0f));
            layoutParams.addRule(11);
            layoutParams.rightMargin = t0.a(getContext(), 50.0f);
            layoutParams.topMargin = t0.a(getContext(), 18.0f);
            this.f36902o = new ImageView(getContext());
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(t0.a(getContext(), 30.0f), t0.a(getContext(), 30.0f));
            layoutParams4.addRule(11);
            layoutParams4.rightMargin = t0.a(getContext(), 50.0f);
            layoutParams4.topMargin = t0.a(getContext(), 5.0f);
            this.f36902o.setLayoutParams(layoutParams4);
            this.f36902o.setImageResource(getResources().getIdentifier("mbridge_splash_btn_circle", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            addView(this.f36902o);
        } else {
            layoutParams = null;
            identifier = 0;
        }
        this.f36901n.setLayoutParams(layoutParams);
        this.f36901n.setImageResource(identifier);
        addView(textView);
        addView(this.f36901n);
        invalidate();
    }

    private boolean a(String str) {
        str.hashCode();
        switch (str) {
            case "Install":
            case "下载第三方应用":
                this.f36900m = 3;
                break;
            case "Open":
            case "打开第三方应用":
                this.f36900m = 1;
                break;
            case "View":
            case "浏览第三方应用":
                this.f36900m = 2;
                break;
            default:
                return false;
        }
        return true;
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36888a = "浏览第三方应用";
        this.f36889b = "View";
        this.f36890c = "打开第三方应用";
        this.f36891d = "Open";
        this.f36892e = "下载第三方应用";
        this.f36893f = "Install";
        this.f36894g = "mbridge_splash_btn_arrow_right";
        this.f36895h = "mbridge_splash_btn_circle";
        this.f36896i = "mbridge_splash_btn_finger";
        this.f36897j = "mbridge_splash_btn_go";
        this.f36898k = "mbridge_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f36903p = new RectF();
        this.f36904q = new Paint();
        this.f36905r = new Paint();
        a();
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f36888a = "浏览第三方应用";
        this.f36889b = "View";
        this.f36890c = "打开第三方应用";
        this.f36891d = "Open";
        this.f36892e = "下载第三方应用";
        this.f36893f = "Install";
        this.f36894g = "mbridge_splash_btn_arrow_right";
        this.f36895h = "mbridge_splash_btn_circle";
        this.f36896i = "mbridge_splash_btn_finger";
        this.f36897j = "mbridge_splash_btn_go";
        this.f36898k = "mbridge_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f36903p = new RectF();
        this.f36904q = new Paint();
        this.f36905r = new Paint();
        a();
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f36888a = "浏览第三方应用";
        this.f36889b = "View";
        this.f36890c = "打开第三方应用";
        this.f36891d = "Open";
        this.f36892e = "下载第三方应用";
        this.f36893f = "Install";
        this.f36894g = "mbridge_splash_btn_arrow_right";
        this.f36895h = "mbridge_splash_btn_circle";
        this.f36896i = "mbridge_splash_btn_finger";
        this.f36897j = "mbridge_splash_btn_go";
        this.f36898k = "mbridge_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f36903p = new RectF();
        this.f36904q = new Paint();
        this.f36905r = new Paint();
    }
}
