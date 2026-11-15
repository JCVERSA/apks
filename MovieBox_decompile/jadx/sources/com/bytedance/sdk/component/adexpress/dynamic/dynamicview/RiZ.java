package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;

public class RiZ extends Drawable {
    private RectF EjP;
    private Paint Sj;
    private int TKC;
    private int sP;

    public RiZ(int i10, int i11) {
        this.TKC = i10;
        this.sP = i11;
        Paint paint = new Paint();
        this.Sj = paint;
        paint.setColor(0);
        this.Sj.setAntiAlias(true);
        this.Sj.setShadowLayer(i11, 0.0f, 0.0f, ViewCompat.MEASURED_STATE_MASK);
        this.Sj.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        RectF rectF = this.EjP;
        int i10 = this.TKC;
        canvas.drawRoundRect(rectF, i10, i10, this.Sj);
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public void setAlpha(int i10) {
        this.Sj.setAlpha(i10);
    }

    @Override
    public void setBounds(int i10, int i11, int i12, int i13) {
        super.setBounds(i10, i11, i12, i13);
        int i14 = this.sP;
        this.EjP = new RectF(i10 + i14, i11 + i14, i12 - i14, i13 - i14);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.Sj.setColorFilter(colorFilter);
    }
}
