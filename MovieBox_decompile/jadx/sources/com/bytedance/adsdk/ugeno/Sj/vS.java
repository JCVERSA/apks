package com.bytedance.adsdk.ugeno.Sj;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;

public class vS implements HiB {
    private float EjP;
    private float HiB;
    private View Sj;
    private float TKC;
    private float sP;
    private float vS;

    public vS(View view) {
        this.Sj = view;
    }

    public void EjP(float f10) {
        this.HiB = f10;
        this.Sj.postInvalidate();
    }

    public void HiB(float f10) {
        this.vS = f10;
        this.Sj.postInvalidate();
    }

    public void Sj(float f10) {
        View view = this.Sj;
        if (view == null) {
            return;
        }
        this.sP = f10;
        Drawable background = view.getBackground();
        if (background instanceof GradientDrawable) {
            ((GradientDrawable) background).setCornerRadius(f10);
        }
    }

    public void TKC(float f10) {
        View view = this.Sj;
        if (view == null) {
            return;
        }
        this.EjP = f10;
        view.postInvalidate();
    }

    @Override
    public float getRipple() {
        return this.TKC;
    }

    @Override
    public float getRubIn() {
        return this.vS;
    }

    @Override
    public float getShine() {
        return this.EjP;
    }

    @Override
    public float getStretch() {
        return this.HiB;
    }

    public void sP(float f10) {
        View view = this.Sj;
        if (view == null) {
            return;
        }
        this.TKC = f10;
        view.postInvalidate();
    }

    public float Sj() {
        return this.sP;
    }

    public void Sj(int i10) {
        View view = this.Sj;
        if (view == null) {
            return;
        }
        Drawable background = view.getBackground();
        if (background instanceof GradientDrawable) {
            ((GradientDrawable) background).setColor(i10);
        } else if (background instanceof ColorDrawable) {
            ((ColorDrawable) background.mutate()).setColor(i10);
        }
    }
}
