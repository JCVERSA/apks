package com.bytedance.sdk.openadsdk.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;

@SuppressLint({"ViewConstructor"})
public class sef extends View {
    private final Sj Sj;
    private View sP;

    public interface Sj {
        View Sj(Context context);
    }

    public sef(Context context, Sj sj2) {
        super(context);
        this.Sj = sj2;
        Sj();
    }

    private void Sj() {
        setVisibility(8);
        setWillNotDraw(true);
    }

    private View sP() {
        Sj sj2;
        if (this.sP == null && (sj2 = this.Sj) != null) {
            this.sP = sj2.Sj(getContext());
            Sj(this.sP, (ViewGroup) getParent());
        }
        return this.sP;
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    @Override
    public void setVisibility(int i10) {
        View view = this.sP;
        if (view != null) {
            view.setVisibility(i10);
            return;
        }
        super.setVisibility(i10);
        if (i10 == 0 || i10 == 4) {
            sP();
        }
    }

    private void Sj(View view, ViewGroup viewGroup) {
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, iIndexOfChild);
        }
    }

    @Override
    @SuppressLint({"MissingSuperCall"})
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }
}
