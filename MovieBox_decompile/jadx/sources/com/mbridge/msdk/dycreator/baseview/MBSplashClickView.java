package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.image.b;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;

public class MBSplashClickView extends MBRelativeLayout {
    public final int TYPE_SPLASH_BTN_CLICK;
    public final int TYPE_SPLASH_BTN_GO;
    public final int TYPE_SPLASH_BTN_OPEN;

    private final String f33671f;

    private final String f33672g;

    private final String f33673h;

    private final String f33674i;

    private final String f33675j;

    private final String f33676k;

    private final String f33677l;

    private final String f33678m;

    private final String f33679n;

    private final String f33680o;

    private final String f33681p;

    private final String f33682q;

    private String f33683r;

    private int f33684s;

    private ImageView f33685t;

    private ImageView f33686u;

    private final RectF f33687v;

    private final Paint f33688w;

    private final Paint f33689x;

    public MBSplashClickView(Context context) {
        super(context);
        this.f33671f = "浏览第三方应用";
        this.f33672g = "View";
        this.f33673h = "打开第三方应用";
        this.f33674i = "Open";
        this.f33675j = "下载第三方应用";
        this.f33676k = "Install";
        this.f33677l = "mbridge_splash_btn_arrow_right";
        this.f33678m = "mbridge_splash_btn_circle";
        this.f33679n = "mbridge_splash_btn_finger";
        this.f33680o = "mbridge_splash_btn_go";
        this.f33681p = "mbridge_splash_btn_light";
        this.f33682q = "mbridge_expand_data";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f33687v = new RectF();
        this.f33688w = new Paint();
        this.f33689x = new Paint();
        a();
    }

    private void c() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(1000L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        final ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.0f, 0.5f, 0.0f, 0.5f, 1, 0.5f, 1, 0.5f);
        scaleAnimation2.setDuration(400L);
        scaleAnimation2.setAnimationListener(new Animation.AnimationListener() {
            @Override
            public void onAnimationEnd(Animation animation) {
                MBSplashClickView.this.f33686u.setVisibility(4);
                MBSplashClickView.this.f33686u.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        MBSplashClickView.this.f33686u.startAnimation(scaleAnimation2);
                    }
                }, 1600L);
            }

            @Override
            public void onAnimationRepeat(Animation animation) {
            }

            @Override
            public void onAnimationStart(Animation animation) {
                MBSplashClickView.this.f33686u.setVisibility(0);
            }
        });
        this.f33686u.setVisibility(4);
        this.f33685t.startAnimation(scaleAnimation);
        this.f33686u.postDelayed(new Runnable() {
            @Override
            public void run() {
                MBSplashClickView.this.f33686u.startAnimation(scaleAnimation2);
            }
        }, 800L);
    }

    private void d() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(500L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        this.f33685t.startAnimation(scaleAnimation);
    }

    private void e() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0, -100.0f, 0, 1000.0f, 0, 0.0f, 0, 0.0f);
        translateAnimation.setDuration(1000L);
        translateAnimation.setAnimationListener(new Animation.AnimationListener() {
            @Override
            public void onAnimationEnd(final Animation animation) {
                MBSplashClickView.this.f33685t.setVisibility(4);
                MBSplashClickView.this.f33685t.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        MBSplashClickView.this.f33685t.startAnimation(animation);
                    }
                }, 2000L);
            }

            @Override
            public void onAnimationRepeat(Animation animation) {
            }

            @Override
            public void onAnimationStart(Animation animation) {
                MBSplashClickView.this.f33685t.setVisibility(0);
            }
        });
        this.f33685t.startAnimation(translateAnimation);
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
        canvas.saveLayer(this.f33687v, this.f33689x, 31);
        canvas.drawRoundRect(this.f33687v, 200.0f, 200.0f, this.f33689x);
        canvas.saveLayer(this.f33687v, this.f33688w, 31);
        super.draw(canvas);
        canvas.restore();
    }

    public void initView(String str) {
        this.f33683r = str;
        b();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        int i10 = this.f33684s;
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
        this.f33687v.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    private void a() {
        this.f33688w.setAntiAlias(true);
        this.f33688w.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f33689x.setAntiAlias(true);
        this.f33689x.setColor(-1);
    }

    private void b() {
        RelativeLayout.LayoutParams layoutParams;
        int identifier;
        View viewA;
        if (!a(this.f33683r)) {
            boolean zContains = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh");
            if (TextUtils.isEmpty(this.f33683r)) {
                this.f33683r = zContains ? "浏览第三方应用" : "View";
            }
            this.f33684s = 2;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        String string = (viewGroup == null || (viewA = a(viewGroup, "mbridge_expand_data")) == null || !(viewA instanceof TextView)) ? "" : ((TextView) viewA).getText().toString();
        setBgDrawable(this.f33684s);
        TextView textView = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(15);
        textView.setLayoutParams(layoutParams2);
        textView.setGravity(17);
        textView.setTextSize(20.0f);
        textView.setTextColor(-1);
        textView.setText(this.f33683r);
        this.f33685t = new ImageView(getContext());
        int i10 = this.f33684s;
        if (i10 == 2) {
            identifier = getResources().getIdentifier("mbridge_splash_btn_go", "drawable", c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 35.0f), t0.a(getContext(), 35.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(15);
            layoutParams.rightMargin = t0.a(getContext(), 10.0f);
        } else if (i10 == 1) {
            identifier = getResources().getIdentifier("mbridge_splash_btn_light", "drawable", c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams.leftMargin = 20;
            layoutParams.rightMargin = 20;
            ImageView imageView = new ImageView(getContext());
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams3.addRule(11);
            layoutParams3.addRule(15);
            layoutParams3.rightMargin = t0.a(getContext(), 50.0f);
            imageView.setImageResource(getResources().getIdentifier("mbridge_splash_btn_arrow_right", "drawable", c.m().h()));
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setLayoutParams(layoutParams3);
            addView(imageView);
        } else if (i10 == 3) {
            identifier = getResources().getIdentifier("mbridge_splash_btn_finger", "drawable", c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 25.0f), t0.a(getContext(), 25.0f));
            layoutParams.addRule(11);
            layoutParams.rightMargin = t0.a(getContext(), 50.0f);
            layoutParams.topMargin = t0.a(getContext(), 18.0f);
            this.f33686u = new ImageView(getContext());
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(t0.a(getContext(), 30.0f), t0.a(getContext(), 30.0f));
            layoutParams4.addRule(11);
            layoutParams4.rightMargin = t0.a(getContext(), 50.0f);
            layoutParams4.topMargin = t0.a(getContext(), 5.0f);
            this.f33686u.setLayoutParams(layoutParams4);
            this.f33686u.setImageResource(getResources().getIdentifier("mbridge_splash_btn_circle", "drawable", c.m().h()));
            addView(this.f33686u);
        } else {
            layoutParams = null;
            identifier = 0;
        }
        this.f33685t.setLayoutParams(layoutParams);
        if (TextUtils.isEmpty(string)) {
            this.f33685t.setImageResource(identifier);
        } else {
            a(this.f33685t, string, identifier);
        }
        addView(textView);
        addView(this.f33685t);
        invalidate();
    }

    private boolean a(String str) {
        str.hashCode();
        switch (str) {
            case "Install":
            case "下载第三方应用":
                this.f33684s = 3;
                break;
            case "Open":
            case "打开第三方应用":
                this.f33684s = 1;
                break;
            case "View":
            case "浏览第三方应用":
                this.f33684s = 2;
                break;
            default:
                return false;
        }
        return true;
    }

    private void a(final ImageView imageView, String str, final int i10) {
        if (imageView == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                imageView.setBackgroundResource(i10);
            }
            b.a(c.m().d()).a(str, new com.mbridge.msdk.foundation.same.image.c() {
                @Override
                public void onFailedLoad(String str2, String str3) {
                    ImageView imageView2 = imageView;
                    if (imageView2 != null) {
                        imageView2.setBackgroundResource(i10);
                    }
                }

                @Override
                public void onSuccessLoad(Bitmap bitmap, String str2) {
                    if (imageView != null) {
                        if (bitmap == null || bitmap.isRecycled()) {
                            imageView.setBackgroundResource(i10);
                            return;
                        }
                        if (MBSplashClickView.this.f33686u != null) {
                            MBSplashClickView mBSplashClickView = MBSplashClickView.this;
                            mBSplashClickView.removeView(mBSplashClickView.f33686u);
                        }
                        imageView.setImageBitmap(bitmap);
                    }
                }
            });
        } catch (Exception e10) {
            o0.a("MBSplashClickView", e10.getMessage());
            imageView.setBackgroundResource(i10);
        }
    }

    private View a(ViewGroup viewGroup, String str) {
        if (viewGroup != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    if (viewGroup.getId() == str.hashCode()) {
                        return viewGroup;
                    }
                    int childCount = viewGroup.getChildCount();
                    for (int i10 = 0; i10 < childCount; i10++) {
                        View childAt = viewGroup.getChildAt(i10);
                        if (childAt.getId() == str.hashCode()) {
                            return childAt;
                        }
                        if (childAt instanceof ViewGroup) {
                            a((ViewGroup) childAt, str);
                        }
                    }
                    return null;
                }
            } catch (Exception e10) {
                o0.b("MBSplashClickView", e10.getMessage());
            }
        }
        return null;
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33671f = "浏览第三方应用";
        this.f33672g = "View";
        this.f33673h = "打开第三方应用";
        this.f33674i = "Open";
        this.f33675j = "下载第三方应用";
        this.f33676k = "Install";
        this.f33677l = "mbridge_splash_btn_arrow_right";
        this.f33678m = "mbridge_splash_btn_circle";
        this.f33679n = "mbridge_splash_btn_finger";
        this.f33680o = "mbridge_splash_btn_go";
        this.f33681p = "mbridge_splash_btn_light";
        this.f33682q = "mbridge_expand_data";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f33687v = new RectF();
        this.f33688w = new Paint();
        this.f33689x = new Paint();
        a();
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33671f = "浏览第三方应用";
        this.f33672g = "View";
        this.f33673h = "打开第三方应用";
        this.f33674i = "Open";
        this.f33675j = "下载第三方应用";
        this.f33676k = "Install";
        this.f33677l = "mbridge_splash_btn_arrow_right";
        this.f33678m = "mbridge_splash_btn_circle";
        this.f33679n = "mbridge_splash_btn_finger";
        this.f33680o = "mbridge_splash_btn_go";
        this.f33681p = "mbridge_splash_btn_light";
        this.f33682q = "mbridge_expand_data";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f33687v = new RectF();
        this.f33688w = new Paint();
        this.f33689x = new Paint();
        a();
    }
}
