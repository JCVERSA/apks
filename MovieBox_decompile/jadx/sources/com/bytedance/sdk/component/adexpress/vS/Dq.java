package com.bytedance.sdk.component.adexpress.vS;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;

public class Dq extends zR {
    private ImageView EjP;
    private int HiB;
    private TextView Sj;
    private ImageView TKC;
    private ImageView sP;
    private AnimatorSet vS;

    public Dq(Context context) {
        super(context);
        this.vS = new AnimatorSet();
        sP(context);
    }

    private void EjP() {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, "alphaColor", 0, 60);
        objectAnimatorOfInt.setInterpolator(new LinearInterpolator());
        objectAnimatorOfInt.setDuration(2000L);
        objectAnimatorOfInt.setRepeatCount(-1);
        objectAnimatorOfInt.start();
    }

    private void sP(Context context) {
        addView(com.bytedance.sdk.component.adexpress.TKC.Sj.sP(context));
        this.sP = (ImageView) findViewById(2097610751);
        this.TKC = (ImageView) findViewById(2097610750);
        this.EjP = (ImageView) findViewById(2097610749);
        this.Sj = (TextView) findViewById(2097610748);
    }

    @Override
    protected void Sj(Context context) {
    }

    public float getAlphaColor() {
        return this.HiB;
    }

    public void setAlphaColor(int i10) {
        if (i10 < 0 || i10 > 60) {
            return;
        }
        int i11 = i10 + 195;
        ImageView imageView = this.EjP;
        int iRgb = Color.rgb(i11, i11, i11);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(iRgb, mode);
        int i12 = ((i10 + 20) % 60) + 195;
        this.TKC.setColorFilter(Color.rgb(i12, i12, i12), mode);
        int i13 = ((i10 + 40) % 60) + 195;
        this.sP.setColorFilter(Color.rgb(i13, i13, i13), mode);
    }

    public void setButtonText(String str) {
        if (this.Sj == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.Sj.setText(str);
    }

    @Override
    public void Sj() {
        EjP();
    }

    @Override
    public void sP() {
        this.vS.cancel();
    }
}
