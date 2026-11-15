package com.bytedance.adsdk.ugeno.core;

import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;

public class Jcg {
    private View EjP;
    private int HiB;
    private String Jcg;
    Paint Sj;
    private AnimatorSet TKC = new AnimatorSet();
    private Sj sP;
    private int vS;

    public Jcg(View view, Sj sj2) {
        this.EjP = view;
        this.sP = sj2;
        Paint paint = new Paint();
        this.Sj = paint;
        paint.setAntiAlias(true);
    }

    public void sP() {
        AnimatorSet animatorSet = this.TKC;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public void Sj() {
        ArrayList arrayList = new ArrayList();
        List<Sj.C0183Sj> listTKC = this.sP.TKC();
        if (listTKC == null || listTKC.size() <= 0) {
            return;
        }
        for (Sj.C0183Sj c0183Sj : listTKC) {
            if (c0183Sj != null) {
                ObjectAnimator objectAnimator = new ObjectAnimator();
                objectAnimator.setDuration(c0183Sj.Sj());
                if (TextUtils.equals(c0183Sj.HiB(), "translateX")) {
                    objectAnimator.setPropertyName("translationX");
                } else if (TextUtils.equals(c0183Sj.HiB(), "translateY")) {
                    objectAnimator.setPropertyName("translationY");
                } else {
                    objectAnimator.setPropertyName(c0183Sj.HiB());
                }
                objectAnimator.setStartDelay(c0183Sj.EjP());
                objectAnimator.setTarget(this.EjP);
                if (TextUtils.equals(c0183Sj.HiB(), "backgroundColor")) {
                    objectAnimator.setIntValues((int) c0183Sj.vS(), (int) c0183Sj.Jcg());
                    StringBuilder sb2 = new StringBuilder("playAnimation: from = ");
                    sb2.append(c0183Sj.vS());
                    sb2.append("; to=");
                    sb2.append(c0183Sj.Jcg());
                } else {
                    objectAnimator.setFloatValues(c0183Sj.vS(), c0183Sj.Jcg());
                }
                int iSP = (int) this.sP.sP();
                if (iSP != 0) {
                    objectAnimator.setRepeatCount(iSP);
                } else {
                    objectAnimator.setRepeatCount((int) c0183Sj.sP());
                }
                if (TextUtils.equals(c0183Sj.HiB(), "backgroundColor")) {
                    objectAnimator.setEvaluator(new ArgbEvaluator());
                }
                String strVS = this.sP.vS();
                if (TextUtils.isEmpty(strVS)) {
                    strVS = c0183Sj.TKC();
                }
                if (TextUtils.equals(strVS, "reverse")) {
                    objectAnimator.setRepeatMode(2);
                } else {
                    objectAnimator.setRepeatMode(1);
                }
                if (c0183Sj.Dq() != null && c0183Sj.Dq().length > 0) {
                    objectAnimator.setFloatValues(c0183Sj.Dq());
                }
                if (TextUtils.equals(c0183Sj.HiB(), "rotationX")) {
                    this.EjP.post(new Runnable() {
                        @Override
                        public void run() {
                            Jcg.this.EjP.setPivotX(Jcg.this.EjP.getWidth() / 2.0f);
                            Jcg.this.EjP.setPivotY(Jcg.this.EjP.getHeight());
                        }
                    });
                }
                if (TextUtils.equals(c0183Sj.HiB(), "ripple")) {
                    this.Jcg = c0183Sj.TEQ();
                }
                String strUA = c0183Sj.uA();
                strUA.hashCode();
                switch (strUA) {
                    case "accelerate":
                        objectAnimator.setInterpolator(new AccelerateInterpolator());
                        break;
                    case "decelerate":
                        objectAnimator.setInterpolator(new DecelerateInterpolator());
                        break;
                    case "linear":
                    case "standard":
                        objectAnimator.setInterpolator(new LinearInterpolator());
                        break;
                    case "accelerateDecelerate":
                        objectAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
                        break;
                }
                arrayList.add(objectAnimator);
            }
        }
        if (this.sP.EjP() != 0) {
            this.TKC.setDuration(this.sP.EjP());
        }
        this.TKC.setStartDelay(this.sP.HiB());
        if (TextUtils.equals(this.sP.Sj(), "sequentially")) {
            this.TKC.playSequentially(arrayList);
        } else {
            this.TKC.playTogether(arrayList);
        }
        this.TKC.start();
    }

    public void Sj(Canvas canvas, IAnimation iAnimation) {
        try {
            if (iAnimation.getRipple() == 0.0f || TextUtils.isEmpty(this.Jcg)) {
                return;
            }
            this.Sj.setColor(com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(this.Jcg));
            this.Sj.setAlpha(90);
            ((ViewGroup) this.EjP.getParent()).setClipChildren(true);
            int i10 = this.HiB;
            int i11 = this.vS;
            canvas.drawCircle(i10, i11, Math.min(i10, i11) * 2 * iAnimation.getRipple(), this.Sj);
        } catch (Throwable th2) {
            new StringBuilder("ripple animation error ").append(th2.getMessage());
        }
    }

    public void Sj(int i10, int i11) {
        this.HiB = i10 / 2;
        this.vS = i11 / 2;
    }
}
