package com.bytedance.sdk.component.adexpress.vS;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;

public class kF extends FrameLayout {
    private float Dq;
    private float EjP;
    private Drawable HiB;
    private double Jcg;
    LinearLayout Sj;
    private float TKC;
    LinearLayout sP;
    private Drawable vS;
    private static final int uA = (com.bytedance.sdk.component.adexpress.dynamic.HiB.Ym.sP("", 0.0f, true)[1] / 2) + 1;
    private static final int TEQ = (com.bytedance.sdk.component.adexpress.dynamic.HiB.Ym.sP("", 0.0f, true)[1] / 2) + 3;

    public kF(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.Sj = new LinearLayout(getContext());
        this.sP = new LinearLayout(getContext());
        this.Sj.setOrientation(0);
        this.Sj.setGravity(GravityCompat.START);
        this.sP.setOrientation(0);
        this.sP.setGravity(GravityCompat.START);
        this.HiB = com.bytedance.sdk.component.utils.ib.TKC(context, "tt_star_thick");
        this.vS = com.bytedance.sdk.component.utils.ib.TKC(context, "tt_star");
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new ViewGroup.LayoutParams((int) this.TKC, (int) this.EjP));
        imageView.setPadding(1, uA, 1, TEQ);
        return imageView;
    }

    public void Sj(double d10, int i10, int i11, int i12) {
        float f10 = i11;
        this.TKC = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.TKC(getContext(), f10);
        this.EjP = (int) com.bytedance.sdk.component.adexpress.EjP.Jcg.TKC(getContext(), f10);
        this.Jcg = d10;
        this.Dq = i12;
        removeAllViews();
        for (int i13 = 0; i13 < 5; i13++) {
            ImageView starImageView = getStarImageView();
            starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView.setColorFilter(i10, PorterDuff.Mode.SRC_IN);
            starImageView.setImageDrawable(getStarFillDrawable());
            this.sP.addView(starImageView);
        }
        for (int i14 = 0; i14 < 5; i14++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView2.setImageDrawable(getStarEmptyDrawable());
            this.Sj.addView(starImageView2);
        }
        addView(this.Sj);
        addView(this.sP);
        requestLayout();
    }

    public Drawable getStarEmptyDrawable() {
        return this.HiB;
    }

    public Drawable getStarFillDrawable() {
        return this.vS;
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.Sj.measure(i10, i11);
        double d10 = this.Jcg;
        float f10 = this.TKC;
        this.sP.measure(View.MeasureSpec.makeMeasureSpec((int) (((double) ((((int) d10) * f10) + 1.0f)) + (((double) (f10 - 2.0f)) * (d10 - ((double) ((int) d10))))), 1073741824), View.MeasureSpec.makeMeasureSpec(this.Sj.getMeasuredHeight(), 1073741824));
        if (this.Dq > 0.0f) {
            LinearLayout linearLayout = this.Sj;
            linearLayout.setPadding(0, ((int) (linearLayout.getMeasuredHeight() - this.Dq)) / 2, 0, 0);
            this.sP.setPadding(0, ((int) (this.Sj.getMeasuredHeight() - this.Dq)) / 2, 0, 0);
        }
    }
}
