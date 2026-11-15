package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.image.b;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;

public class MBridgeBaitClickView extends RelativeLayout {
    public static final int ANIMATION_TYPE_DOUBLE_CLICK = 4;
    public static final int ANIMATION_TYPE_FAST_SCALE = 1;
    public static final int ANIMATION_TYPE_ROTATE = 5;
    public static final int ANIMATION_TYPE_SLOW_SCALE = 2;
    public static final int ANIMATION_TYPE_SLOW_SCALE_WITH_PAUSE = 3;

    private MBridgeDyImageView f33755a;

    private MBridgeDyImageView f33756b;

    private TextView f33757c;

    private String f33758d;

    private String f33759e;

    private String f33760f;

    private int f33761g;

    private int f33762h;

    private Animation f33763i;

    private Animation f33764j;

    private Animation f33765k;

    private Animation f33766l;

    public MBridgeBaitClickView(@NonNull Context context) {
        super(context);
        this.f33758d = "";
        this.f33759e = "";
        this.f33760f = "Click now for details";
        this.f33761g = 1;
        this.f33762h = 1342177280;
    }

    private void d() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
        this.f33763i = scaleAnimation;
        scaleAnimation.setDuration(500L);
        this.f33763i.setRepeatCount(-1);
        this.f33763i.setRepeatMode(2);
        MBridgeDyImageView mBridgeDyImageView = this.f33755a;
        if (mBridgeDyImageView != null) {
            mBridgeDyImageView.startAnimation(this.f33763i);
        }
    }

    private void e() {
        MBridgeDyImageView mBridgeDyImageView = this.f33756b;
        if (mBridgeDyImageView != null) {
            mBridgeDyImageView.setVisibility(4);
        }
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
        this.f33763i = scaleAnimation;
        scaleAnimation.setDuration(500L);
        this.f33763i.setRepeatCount(1);
        this.f33763i.setRepeatMode(2);
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.0f, 1.5f, 0.0f, 1.5f, 1, 0.5f, 1, 0.5f);
        this.f33764j = scaleAnimation2;
        scaleAnimation2.setDuration(1000L);
        this.f33764j.setRepeatCount(0);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        this.f33765k = alphaAnimation;
        alphaAnimation.setDuration(1000L);
        this.f33765k.setRepeatCount(0);
        final AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(this.f33764j);
        animationSet.addAnimation(this.f33765k);
        this.f33764j.setAnimationListener(new Animation.AnimationListener() {
            @Override
            public void onAnimationEnd(Animation animation) {
                if (MBridgeBaitClickView.this.f33756b != null) {
                    MBridgeBaitClickView.this.f33756b.setVisibility(4);
                }
            }

            @Override
            public void onAnimationRepeat(Animation animation) {
            }

            @Override
            public void onAnimationStart(Animation animation) {
                if (MBridgeBaitClickView.this.f33756b != null) {
                    MBridgeBaitClickView.this.f33756b.setVisibility(0);
                }
            }
        });
        this.f33763i.setAnimationListener(new Animation.AnimationListener() {
            @Override
            public void onAnimationEnd(Animation animation) {
                MBridgeBaitClickView.this.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (MBridgeBaitClickView.this.f33755a != null) {
                            MBridgeBaitClickView.this.f33755a.startAnimation(MBridgeBaitClickView.this.f33763i);
                        }
                    }
                }, 1000L);
            }

            @Override
            public void onAnimationRepeat(Animation animation) {
            }

            @Override
            public void onAnimationStart(Animation animation) {
                MBridgeBaitClickView.this.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (MBridgeBaitClickView.this.f33756b != null) {
                            MBridgeBaitClickView.this.f33756b.startAnimation(animationSet);
                        }
                    }
                }, 550L);
            }
        });
        MBridgeDyImageView mBridgeDyImageView2 = this.f33755a;
        if (mBridgeDyImageView2 != null) {
            mBridgeDyImageView2.startAnimation(this.f33763i);
        }
    }

    private void getDefaultClickText() {
        try {
            this.f33760f = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh") ? "点击查看详情" : "Click now for details";
        } catch (Throwable th2) {
            o0.b("MBridgeAnimationClickView", th2.getMessage());
        }
    }

    public void init(int i10) {
        this.f33761g = i10;
        init();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearAnimation();
        Animation animation = this.f33763i;
        if (animation != null) {
            animation.cancel();
        }
        Animation animation2 = this.f33764j;
        if (animation2 != null) {
            animation2.cancel();
        }
        Animation animation3 = this.f33765k;
        if (animation3 != null) {
            animation3.cancel();
        }
        Animation animation4 = this.f33766l;
        if (animation4 != null) {
            animation4.cancel();
        }
    }

    public void startAnimation() {
        int i10 = this.f33761g;
        if (i10 == 2) {
            this.f33756b.setVisibility(4);
            d();
            return;
        }
        if (i10 == 3) {
            e();
            return;
        }
        if (i10 == 4) {
            this.f33756b.setVisibility(4);
            a();
        } else if (i10 != 5) {
            b();
        } else {
            c();
        }
    }

    private void a() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
        this.f33763i = scaleAnimation;
        scaleAnimation.setDuration(200L);
        this.f33763i.setRepeatCount(1);
        this.f33763i.setAnimationListener(new Animation.AnimationListener() {
            @Override
            public void onAnimationEnd(Animation animation) {
                MBridgeBaitClickView.this.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (MBridgeBaitClickView.this.f33755a != null) {
                            MBridgeBaitClickView.this.f33755a.startAnimation(MBridgeBaitClickView.this.f33763i);
                        }
                    }
                }, 1000L);
            }

            @Override
            public void onAnimationRepeat(Animation animation) {
            }

            @Override
            public void onAnimationStart(Animation animation) {
            }
        });
        MBridgeDyImageView mBridgeDyImageView = this.f33755a;
        if (mBridgeDyImageView != null) {
            mBridgeDyImageView.startAnimation(this.f33763i);
        }
    }

    private void b() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
        this.f33763i = scaleAnimation;
        scaleAnimation.setDuration(200L);
        this.f33763i.setRepeatCount(-1);
        this.f33763i.setRepeatMode(2);
        MBridgeDyImageView mBridgeDyImageView = this.f33755a;
        if (mBridgeDyImageView != null) {
            mBridgeDyImageView.startAnimation(this.f33763i);
        }
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.0f, 1.2f, 0.0f, 1.2f, 1, 0.5f, 1, 0.5f);
        this.f33764j = scaleAnimation2;
        scaleAnimation2.setDuration(400L);
        this.f33764j.setRepeatCount(-1);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.3f);
        this.f33765k = alphaAnimation;
        alphaAnimation.setDuration(400L);
        this.f33765k.setRepeatCount(-1);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(this.f33764j);
        animationSet.addAnimation(this.f33765k);
        MBridgeDyImageView mBridgeDyImageView2 = this.f33756b;
        if (mBridgeDyImageView2 != null) {
            mBridgeDyImageView2.startAnimation(animationSet);
        }
    }

    private void c() {
        RotateAnimation rotateAnimation = new RotateAnimation(-10.0f, 30.0f, 1, 0.5f, 1, 0.5f);
        this.f33766l = rotateAnimation;
        rotateAnimation.setDuration(300L);
        this.f33766l.setRepeatMode(2);
        this.f33766l.setRepeatCount(-1);
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.2f, 0.0f, 1.2f, 1, 0.5f, 1, 0.5f);
        this.f33764j = scaleAnimation;
        scaleAnimation.setDuration(600L);
        this.f33764j.setRepeatCount(-1);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        this.f33765k = alphaAnimation;
        alphaAnimation.setDuration(600L);
        this.f33765k.setRepeatCount(-1);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(this.f33764j);
        animationSet.addAnimation(this.f33765k);
        MBridgeDyImageView mBridgeDyImageView = this.f33755a;
        if (mBridgeDyImageView != null) {
            mBridgeDyImageView.startAnimation(this.f33766l);
        }
        MBridgeDyImageView mBridgeDyImageView2 = this.f33756b;
        if (mBridgeDyImageView2 != null) {
            mBridgeDyImageView2.startAnimation(animationSet);
        }
    }

    public void init(int i10, int i11) {
        this.f33762h = i10;
        this.f33761g = i11;
        init();
    }

    public void init(int i10, int i11, String str, String str2, String str3) {
        this.f33762h = i10;
        this.f33761g = i11;
        this.f33758d = str;
        this.f33759e = str2;
        this.f33760f = str3;
        init();
    }

    public MBridgeBaitClickView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33758d = "";
        this.f33759e = "";
        this.f33760f = "Click now for details";
        this.f33761g = 1;
        this.f33762h = 1342177280;
    }

    public void init() {
        try {
            setBackgroundColor(this.f33762h);
            getDefaultClickText();
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
            int iA = t0.a(getContext(), 55.0f);
            int iA2 = t0.a(getContext(), 33.0f);
            this.f33756b = new MBridgeDyImageView(getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA, iA);
            layoutParams.setMargins(iA2, iA2, 0, 0);
            this.f33756b.setLayoutParams(layoutParams);
            final int iA3 = g0.a(getContext(), "mbridge_icon_click_circle", "drawable");
            if (TextUtils.isEmpty(this.f33759e)) {
                this.f33756b.setImageResource(iA3);
            } else {
                b.a(c.m().d()).a(this.f33758d, new com.mbridge.msdk.foundation.same.image.c() {
                    @Override
                    public void onFailedLoad(String str, String str2) {
                        MBridgeBaitClickView.this.f33756b.setImageResource(iA3);
                    }

                    @Override
                    public void onSuccessLoad(Bitmap bitmap, String str) {
                        if (bitmap.isRecycled()) {
                            return;
                        }
                        MBridgeBaitClickView.this.f33756b.setImageBitmap(bitmap);
                    }
                });
            }
            int iA4 = t0.a(getContext(), 108.0f);
            int iA5 = t0.a(getContext(), 35.0f);
            int iA6 = t0.a(getContext(), 43.0f);
            this.f33755a = new MBridgeDyImageView(getContext());
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iA4, iA4);
            layoutParams2.setMargins(iA5, iA6, 0, 0);
            this.f33755a.setLayoutParams(layoutParams2);
            final int iA7 = g0.a(getContext(), "mbridge_icon_click_hand", "drawable");
            if (TextUtils.isEmpty(this.f33758d)) {
                this.f33755a.setImageResource(iA7);
            } else {
                b.a(c.m().d()).a(this.f33758d, new com.mbridge.msdk.foundation.same.image.c() {
                    @Override
                    public void onFailedLoad(String str, String str2) {
                        MBridgeBaitClickView.this.f33755a.setImageResource(iA7);
                    }

                    @Override
                    public void onSuccessLoad(Bitmap bitmap, String str) {
                        if (bitmap.isRecycled()) {
                            return;
                        }
                        MBridgeBaitClickView.this.f33755a.setImageBitmap(bitmap);
                    }
                });
            }
            relativeLayout.addView(this.f33756b);
            relativeLayout.addView(this.f33755a);
            LinearLayout linearLayout = new LinearLayout(getContext());
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(13);
            linearLayout.setLayoutParams(layoutParams3);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(1);
            linearLayout.addView(relativeLayout);
            this.f33757c = new TextView(getContext());
            this.f33757c.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
            this.f33757c.setText(this.f33760f);
            this.f33757c.setTextColor(-1);
            this.f33757c.setGravity(14);
            linearLayout.addView(this.f33757c);
            addView(linearLayout);
        } catch (Throwable th2) {
            o0.b("MBridgeAnimationClickView", th2.getMessage());
        }
    }

    public MBridgeBaitClickView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33758d = "";
        this.f33759e = "";
        this.f33760f = "Click now for details";
        this.f33761g = 1;
        this.f33762h = 1342177280;
    }

    public MBridgeBaitClickView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f33758d = "";
        this.f33759e = "";
        this.f33760f = "Click now for details";
        this.f33761g = 1;
        this.f33762h = 1342177280;
    }
}
