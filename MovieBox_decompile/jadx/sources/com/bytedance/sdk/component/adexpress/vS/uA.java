package com.bytedance.sdk.component.adexpress.vS;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;

public class uA extends View {
    private int Dq;
    private Paint EjP;
    private Paint HiB;
    private Paint Jcg;
    private int Sj;
    private final RectF TKC;
    private int sP;
    private int vS;

    public uA(Context context) {
        super(context);
        this.TKC = new RectF();
        Sj();
    }

    private void Sj() {
        Paint paint = new Paint();
        this.EjP = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.Jcg = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.HiB = paint3;
        paint3.setAntiAlias(true);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.TKC;
        int i10 = this.vS;
        canvas.drawRoundRect(rectF, i10, i10, this.HiB);
        RectF rectF2 = this.TKC;
        int i11 = this.vS;
        canvas.drawRoundRect(rectF2, i11, i11, this.EjP);
        int i12 = this.Sj;
        int i13 = this.sP;
        canvas.drawLine(i12 * 0.3f, i13 * 0.3f, i12 * 0.7f, i13 * 0.7f, this.Jcg);
        int i14 = this.Sj;
        int i15 = this.sP;
        canvas.drawLine(i14 * 0.7f, i15 * 0.3f, i14 * 0.3f, i15 * 0.7f, this.Jcg);
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.Sj = i10;
        this.sP = i11;
        RectF rectF = this.TKC;
        int i14 = this.Dq;
        rectF.set(i14, i14, i10 - i14, i11 - i14);
    }

    public void setBgColor(int i10) {
        this.HiB.setStyle(Paint.Style.FILL);
        this.HiB.setColor(i10);
    }

    public void setDislikeColor(int i10) {
        this.Jcg.setColor(i10);
    }

    public void setDislikeWidth(int i10) {
        this.Jcg.setStrokeWidth(i10);
    }

    public void setRadius(int i10) {
        this.vS = i10;
    }

    public void setStrokeColor(int i10) {
        this.EjP.setStyle(Paint.Style.STROKE);
        this.EjP.setColor(i10);
    }

    public void setStrokeWidth(int i10) {
        this.EjP.setStrokeWidth(i10);
        this.Dq = i10;
    }
}
