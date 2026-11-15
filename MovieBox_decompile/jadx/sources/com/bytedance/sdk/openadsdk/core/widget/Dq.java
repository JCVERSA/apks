package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import java.util.ArrayList;

public class Dq extends View {
    private static final int[] Sj = {Color.parseColor("#1AFFFFFF"), Color.parseColor("#4DFFFFFF"), Color.parseColor("#99FFFFFF")};
    private int Dq;
    private final ArrayList<Sj> EjP;
    private final Paint HiB;
    private int Jcg;
    private final RectF TKC;
    private final RectF sP;
    private int uA;
    private final Paint vS;

    private static final class Sj {
        float EjP;
        public Paint Sj;
        float TKC;
        public float sP;

        public Sj(Paint paint, float f10, float f11, float f12) {
            this.Sj = paint;
            this.sP = f10;
            this.TKC = f11;
            this.EjP = f12;
        }
    }

    public Dq(Context context) {
        super(context);
        this.sP = new RectF();
        this.TKC = new RectF();
        this.EjP = new ArrayList<>();
        this.vS = new Paint();
        Paint paint = new Paint();
        this.HiB = paint;
        paint.setColor(Color.parseColor("#D9D9D9"));
    }

    private void Sj() {
        if (this.Jcg <= 0) {
            return;
        }
        this.TKC.right = Math.max(this.uA, (int) (((this.Dq * 1.0f) / 100.0f) * getWidth()));
        invalidate();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.sP;
        int i10 = this.Jcg;
        canvas.drawRoundRect(rectF, i10, i10, this.HiB);
        RectF rectF2 = this.TKC;
        int i11 = this.Jcg;
        canvas.drawRoundRect(rectF2, i11, i11, this.vS);
        int iSave = canvas.save();
        canvas.translate(this.TKC.right - this.uA, 0.0f);
        for (Sj sj2 : this.EjP) {
            canvas.drawCircle(sj2.TKC, sj2.EjP, sj2.sP, sj2.Sj);
        }
        canvas.restoreToCount(iSave);
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        int i14 = i11 / 2;
        this.Jcg = i14;
        this.uA = i14 * 5;
        float f10 = i10;
        float f11 = i11;
        this.sP.set(0.0f, 0.0f, f10, f11);
        this.TKC.set(0.0f, 0.0f, 0.0f, f11);
        this.vS.setShader(new LinearGradient(0.0f, 0.0f, f10, f11, new int[]{Color.parseColor("#90C0FF"), Color.parseColor("#196BE4")}, (float[]) null, Shader.TileMode.CLAMP));
        this.EjP.clear();
        float f12 = this.Jcg / 4.0f;
        for (int i15 : Sj) {
            Paint paint = new Paint();
            paint.setColor(i15);
            this.EjP.add(new Sj(paint, this.Jcg / 2.0f, f12, f11 / 2.0f));
            f12 += (this.Jcg / 2.0f) * 3.0f;
        }
        Sj();
    }

    public void setProgress(int i10) {
        int i11 = this.Dq;
        if (i11 == i10) {
            return;
        }
        if (i10 < 0) {
            i10 = 0;
        } else if (i10 > 100) {
            i10 = 100;
        }
        if (i11 == i10) {
            return;
        }
        this.Dq = i10;
        Sj();
    }
}
