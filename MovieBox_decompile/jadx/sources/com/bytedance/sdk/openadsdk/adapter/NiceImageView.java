package com.bytedance.sdk.openadsdk.adapter;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.HiB.EjP;
import com.bytedance.sdk.openadsdk.utils.FPG;

public class NiceImageView extends EjP {
    private int Dq;
    private int EjP;
    private int Fmk;
    private int HiB;
    private int Jcg;
    private final float[] RiZ;
    private final Context Sj;
    private int TEQ;
    private boolean TKC;
    private final float[] TzV;
    private int Ym;
    private int Zq;

    private int f20365aa;
    private float dNu;

    private final RectF f20366dx;

    private final Path f20367ib;
    private Path kF;
    private boolean sP;
    private RectF sU;
    private final Xfermode sef;
    private int uA;
    private int uvD;
    private int vS;
    private final Paint zR;

    public NiceImageView(Context context) {
        this(context, null);
    }

    private void EjP() {
        if (this.sP) {
            return;
        }
        this.vS = 0;
    }

    private void Sj(Canvas canvas) {
        if (!this.sP) {
            int i10 = this.EjP;
            if (i10 > 0) {
                Sj(canvas, i10, this.HiB, this.f20366dx, this.TzV);
                return;
            }
            return;
        }
        int i11 = this.EjP;
        if (i11 > 0) {
            Sj(canvas, i11, this.HiB, this.dNu - (i11 / 2.0f));
        }
        int i12 = this.vS;
        if (i12 > 0) {
            Sj(canvas, i12, this.Jcg, (this.dNu - this.EjP) - (i12 / 2.0f));
        }
    }

    private void TKC() {
        if (this.sP) {
            return;
        }
        int i10 = 0;
        if (this.Dq <= 0) {
            float[] fArr = this.TzV;
            int i11 = this.uA;
            float f10 = i11;
            fArr[1] = f10;
            fArr[0] = f10;
            int i12 = this.TEQ;
            float f11 = i12;
            fArr[3] = f11;
            fArr[2] = f11;
            int i13 = this.f20365aa;
            float f12 = i13;
            fArr[5] = f12;
            fArr[4] = f12;
            int i14 = this.Ym;
            float f13 = i14;
            fArr[7] = f13;
            fArr[6] = f13;
            float[] fArr2 = this.RiZ;
            int i15 = this.EjP;
            float f14 = i11 - (i15 / 2.0f);
            fArr2[1] = f14;
            fArr2[0] = f14;
            float f15 = i12 - (i15 / 2.0f);
            fArr2[3] = f15;
            fArr2[2] = f15;
            float f16 = i13 - (i15 / 2.0f);
            fArr2[5] = f16;
            fArr2[4] = f16;
            float f17 = i14 - (i15 / 2.0f);
            fArr2[7] = f17;
            fArr2[6] = f17;
            return;
        }
        while (true) {
            float[] fArr3 = this.TzV;
            if (i10 >= fArr3.length) {
                return;
            }
            int i16 = this.Dq;
            fArr3[i10] = i16;
            this.RiZ[i10] = i16 - (this.EjP / 2.0f);
            i10++;
        }
    }

    private void sP() {
        if (!this.sP) {
            this.sU.set(0.0f, 0.0f, this.Zq, this.uvD);
            if (this.TKC) {
                this.sU = this.f20366dx;
                return;
            }
            return;
        }
        float fMin = Math.min(this.Zq, this.uvD) / 2.0f;
        this.dNu = fMin;
        RectF rectF = this.sU;
        int i10 = this.Zq;
        int i11 = this.uvD;
        rectF.set((i10 / 2.0f) - fMin, (i11 / 2.0f) - fMin, (i10 / 2.0f) + fMin, (i11 / 2.0f) + fMin);
    }

    public void isCircle(boolean z10) {
        this.sP = z10;
        EjP();
        sP();
        invalidate();
    }

    public void isCoverSrc(boolean z10) {
        this.TKC = z10;
        sP();
        invalidate();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        canvas.saveLayer(this.sU, null, 31);
        if (!this.TKC) {
            int i10 = this.Zq;
            int i11 = this.EjP;
            int i12 = this.vS;
            int i13 = this.uvD;
            canvas.scale((((i10 - (i11 * 2)) - (i12 * 2)) * 1.0f) / i10, (((i13 - (i11 * 2)) - (i12 * 2)) * 1.0f) / i13, i10 / 2.0f, i13 / 2.0f);
        }
        super.onDraw(canvas);
        this.zR.reset();
        this.f20367ib.reset();
        if (this.sP) {
            this.f20367ib.addCircle(this.Zq / 2.0f, this.uvD / 2.0f, this.dNu, Path.Direction.CCW);
        } else {
            this.f20367ib.addRoundRect(this.sU, this.RiZ, Path.Direction.CCW);
        }
        this.zR.setAntiAlias(true);
        this.zR.setStyle(Paint.Style.FILL);
        this.zR.setXfermode(this.sef);
        if (Build.VERSION.SDK_INT <= 27) {
            canvas.drawPath(this.f20367ib, this.zR);
        } else {
            this.kF.addRect(this.sU, Path.Direction.CCW);
            this.kF.op(this.f20367ib, Path.Op.DIFFERENCE);
            canvas.drawPath(this.kF, this.zR);
        }
        this.zR.setXfermode(null);
        int i14 = this.Fmk;
        if (i14 != 0) {
            this.zR.setColor(i14);
            canvas.drawPath(this.f20367ib, this.zR);
        }
        canvas.restore();
        Sj(canvas);
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.Zq = i10;
        this.uvD = i11;
        Sj();
        sP();
    }

    public void setBorderColor(int i10) {
        this.HiB = i10;
        invalidate();
    }

    public void setBorderWidth(int i10) {
        this.EjP = FPG.sP(this.Sj, i10);
        Sj(false);
    }

    public void setCornerBottomLeftRadius(int i10) {
        this.Ym = FPG.sP(this.Sj, i10);
        Sj(true);
    }

    public void setCornerBottomRightRadius(int i10) {
        this.f20365aa = FPG.sP(this.Sj, i10);
        Sj(true);
    }

    public void setCornerRadius(int i10) {
        this.Dq = FPG.sP(this.Sj, i10);
        Sj(false);
    }

    public void setCornerTopLeftRadius(int i10) {
        this.uA = FPG.sP(this.Sj, i10);
        Sj(true);
    }

    public void setCornerTopRightRadius(int i10) {
        this.TEQ = FPG.sP(this.Sj, i10);
        Sj(true);
    }

    public void setInnerBorderColor(int i10) {
        this.Jcg = i10;
        invalidate();
    }

    public void setInnerBorderWidth(int i10) {
        this.vS = FPG.sP(this.Sj, i10);
        EjP();
        invalidate();
    }

    public void setMaskColor(int i10) {
        this.Fmk = i10;
        invalidate();
    }

    public NiceImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NiceImageView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.HiB = -1;
        this.Jcg = -1;
        this.Sj = context;
        this.Dq = FPG.sP(context, 10.0f);
        this.TzV = new float[8];
        this.RiZ = new float[8];
        this.f20366dx = new RectF();
        this.sU = new RectF();
        this.zR = new Paint();
        this.f20367ib = new Path();
        if (Build.VERSION.SDK_INT <= 27) {
            this.sef = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        } else {
            this.sef = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
            this.kF = new Path();
        }
        TKC();
        EjP();
    }

    private void Sj(Canvas canvas, int i10, int i11, float f10) {
        Sj(i10, i11);
        this.f20367ib.addCircle(this.Zq / 2.0f, this.uvD / 2.0f, f10, Path.Direction.CCW);
        canvas.drawPath(this.f20367ib, this.zR);
    }

    private void Sj(Canvas canvas, int i10, int i11, RectF rectF, float[] fArr) {
        Sj(i10, i11);
        this.f20367ib.addRoundRect(rectF, fArr, Path.Direction.CCW);
        canvas.drawPath(this.f20367ib, this.zR);
    }

    private void Sj(int i10, int i11) {
        this.f20367ib.reset();
        this.zR.setStrokeWidth(i10);
        this.zR.setColor(i11);
        this.zR.setStyle(Paint.Style.STROKE);
    }

    private void Sj() {
        if (this.sP) {
            return;
        }
        RectF rectF = this.f20366dx;
        int i10 = this.EjP;
        rectF.set(i10 / 2.0f, i10 / 2.0f, this.Zq - (i10 / 2.0f), this.uvD - (i10 / 2.0f));
    }

    private void Sj(boolean z10) {
        if (z10) {
            this.Dq = 0;
        }
        TKC();
        Sj();
        invalidate();
    }
}
