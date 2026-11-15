package com.bytedance.sdk.component.adexpress.vS;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import org.json.JSONObject;

public class RiZ extends LinearLayout {
    private LinearLayout Dq;
    private com.bytedance.sdk.component.utils.kF EjP;
    private TextView HiB;
    private Sj Jcg;
    private TextView Sj;
    private int TEQ;
    private ImageView TKC;
    private int Ym;

    private JSONObject f20290aa;
    private TextView sP;
    private int uA;
    private TextView vS;

    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override
        public void run() {
            if (RiZ.this.TKC != null) {
                final RotateAnimation rotateAnimation = new RotateAnimation(-14.0f, 14.0f, 1, 0.9f, 1, 0.9f);
                rotateAnimation.setInterpolator(new sP(null));
                rotateAnimation.setDuration(1000L);
                rotateAnimation.setAnimationListener(new Animation.AnimationListener() {
                    @Override
                    public void onAnimationEnd(Animation animation) {
                        RiZ.this.postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                RiZ.this.TKC.startAnimation(rotateAnimation);
                            }
                        }, 250L);
                    }

                    @Override
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override
                    public void onAnimationStart(Animation animation) {
                    }
                });
                RiZ.this.TKC.startAnimation(rotateAnimation);
            }
        }
    }

    public interface Sj {
    }

    private static class sP implements Interpolator {
        private sP() {
        }

        @Override
        public float getInterpolation(float f10) {
            if (f10 <= 0.25f) {
                return (f10 * (-2.0f)) + 0.5f;
            }
            if (f10 <= 0.5f) {
                return (f10 * 4.0f) - 1.0f;
            }
            return f10 <= 0.75f ? (f10 * (-4.0f)) + 3.0f : (f10 * 2.0f) - 1.5f;
        }

        sP(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public RiZ(@NonNull Context context, View view, int i10, int i11, int i12, JSONObject jSONObject) {
        super(context);
        this.uA = i10;
        this.TEQ = i11;
        this.Ym = i12;
        this.f20290aa = jSONObject;
        Sj(context, view);
    }

    public LinearLayout getShakeLayout() {
        return this.Dq;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.EjP == null) {
                this.EjP = new com.bytedance.sdk.component.utils.kF(getContext().getApplicationContext(), 1);
            }
            new Object() {
            };
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setOnShakeViewListener(Sj sj2) {
        this.Jcg = sj2;
    }

    public void setShakeText(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.HiB.setText(str);
        } else {
            this.HiB.setVisibility(8);
            this.vS.setVisibility(8);
        }
    }

    protected void Sj(Context context, View view) {
        addView(view);
        this.Dq = (LinearLayout) findViewById(2097610727);
        this.TKC = (ImageView) findViewById(2097610725);
        this.Sj = (TextView) findViewById(2097610724);
        this.sP = (TextView) findViewById(2097610726);
        this.HiB = (TextView) findViewById(2097610723);
        this.vS = (TextView) findViewById(2097610728);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.Dq.setBackground(gradientDrawable);
    }

    public void Sj() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(300L);
        objectAnimatorOfFloat.start();
        postDelayed(new AnonymousClass1(), 500L);
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
    }
}
