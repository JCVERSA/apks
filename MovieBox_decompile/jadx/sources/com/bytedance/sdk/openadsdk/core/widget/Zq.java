package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.utils.FPG;

public class Zq extends View {
    private Drawable EjP;
    private Drawable HiB;
    private final Path Sj;
    private int TKC;
    private final boolean sP;
    private float vS;

    public Zq(Context context) {
        this(context, false);
    }

    private void Sj() {
        Context context = getContext();
        this.EjP = ib.TKC(context, this.sP ? "tt_star_thick_dark" : "tt_star_thick");
        this.HiB = ib.TKC(context, "tt_star");
    }

    private void sP() {
        int width = getWidth();
        int height = getHeight();
        if (this.vS <= 0.0f || width <= 0 || height <= 0) {
            return;
        }
        this.Sj.reset();
        this.Sj.addRect(new RectF(0.0f, 0.0f, width * this.vS, height), Path.Direction.CCW);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.TKC <= 0) {
            return;
        }
        int iSave = canvas.save();
        for (int i10 = 0; i10 < 5; i10++) {
            this.EjP.draw(canvas);
            canvas.translate(this.TKC, 0.0f);
        }
        canvas.restoreToCount(iSave);
        canvas.clipPath(this.Sj);
        for (int i11 = 0; i11 < 5; i11++) {
            this.HiB.draw(canvas);
            canvas.translate(this.TKC, 0.0f);
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.TKC * 5, 1073741824), View.MeasureSpec.makeMeasureSpec(this.TKC, 1073741824));
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        sP();
    }

    public Zq(Context context, boolean z10) {
        super(context);
        this.Sj = new Path();
        this.sP = z10;
        Sj();
    }

    public void Sj(double d10, int i10) {
        int iSj = (int) FPG.Sj(getContext(), i10, false);
        this.TKC = iSj;
        this.EjP.setBounds(0, 0, iSj, iSj);
        Drawable drawable = this.HiB;
        int i11 = this.TKC;
        drawable.setBounds(0, 0, i11, i11);
        this.vS = ((float) d10) / 5.0f;
        sP();
        requestLayout();
    }
}
