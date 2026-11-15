package com.bytedance.adsdk.ugeno.uA.HiB;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import com.bytedance.adsdk.ugeno.EjP;
import com.bytedance.adsdk.ugeno.Jcg.Dq;

public class Sj extends FrameLayout {
    private EjP Dq;
    private float EjP;
    private LinearLayout HiB;
    private Context Jcg;
    private float Sj;
    private double TKC;
    private float sP;
    private LinearLayout vS;

    public Sj(Context context) {
        super(context);
        this.Jcg = context;
        this.HiB = new LinearLayout(context);
        this.vS = new LinearLayout(context);
        this.HiB.setOrientation(0);
        this.HiB.setGravity(GravityCompat.START);
        this.vS.setOrientation(0);
        this.vS.setGravity(GravityCompat.START);
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) this.Sj, (int) this.sP);
        float f10 = this.EjP;
        layoutParams.leftMargin = (int) f10;
        layoutParams.topMargin = 0;
        layoutParams.rightMargin = (int) f10;
        layoutParams.bottomMargin = 1;
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    public void Sj(double d10, int i10, int i11, float f10, int i12) {
        removeAllViews();
        this.HiB.removeAllViews();
        this.vS.removeAllViews();
        this.Sj = (int) Dq.Sj(this.Jcg, f10);
        this.sP = (int) Dq.Sj(this.Jcg, f10);
        this.TKC = d10;
        this.EjP = i12;
        for (int i13 = 0; i13 < 5; i13++) {
            ImageView starImageView = getStarImageView();
            starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView.setImageResource(com.bytedance.adsdk.ugeno.Jcg.EjP.Sj(this.Jcg, "tt_ugen_rating_star"));
            starImageView.setColorFilter(i10, PorterDuff.Mode.SRC_IN);
            this.vS.addView(starImageView);
        }
        for (int i14 = 0; i14 < 5; i14++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView2.setImageResource(com.bytedance.adsdk.ugeno.Jcg.EjP.Sj(this.Jcg, "tt_ugen_rating_star"));
            starImageView2.setColorFilter(i11);
            this.HiB.addView(starImageView2);
        }
        addView(this.HiB);
        addView(this.vS);
        requestLayout();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        EjP ejP = this.Dq;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        EjP ejP = this.Dq;
        if (ejP != null) {
            ejP.Dq();
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        EjP ejP = this.Dq;
        if (ejP != null) {
            ejP.Sj(i10, i11, i12, i13);
        }
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        EjP ejP = this.Dq;
        if (ejP != null) {
            ejP.Sj(i10, i11);
        }
        super.onMeasure(i10, i11);
        this.HiB.measure(i10, i11);
        double dFloor = Math.floor(this.TKC);
        float f10 = this.EjP;
        float f11 = this.Sj;
        this.vS.measure(View.MeasureSpec.makeMeasureSpec((int) ((((double) (f10 + f10 + f11)) * dFloor) + ((double) f10) + ((this.TKC - dFloor) * ((double) f11))), 1073741824), View.MeasureSpec.makeMeasureSpec(this.HiB.getMeasuredHeight(), 1073741824));
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        EjP ejP = this.Dq;
        if (ejP != null) {
            ejP.sP(i10, i11, i12, i13);
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    public void Sj(EjP ejP) {
        this.Dq = ejP;
    }
}
