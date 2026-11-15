package com.bytedance.sdk.component.adexpress.vS;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import com.tn.lib.view.FlowLayout;
import java.util.ArrayList;
import java.util.List;

public class EjP extends View {
    private List<Integer> Dq;
    private int EjP;
    private float Fmk;
    private float HiB;
    private boolean Jcg;
    private int Sj;
    private Paint TEQ;
    private float TKC;
    private Paint Ym;

    private float f20288aa;
    private int sP;
    private int sef;
    private List<Integer> uA;
    private int vS;

    public EjP(Context context) {
        this(context, null);
    }

    private void TKC() {
        Paint paint = new Paint();
        this.TEQ = paint;
        paint.setAntiAlias(true);
        this.TEQ.setStrokeWidth(this.sef);
        this.Dq.add(255);
        this.uA.add(0);
        Paint paint2 = new Paint();
        this.Ym = paint2;
        paint2.setAntiAlias(true);
        this.Ym.setColor(Color.parseColor("#0FFFFFFF"));
        this.Ym.setStyle(Paint.Style.FILL);
    }

    public void Sj() {
        this.Jcg = true;
        invalidate();
    }

    @Override
    public void invalidate() {
        if (hasWindowFocus()) {
            super.invalidate();
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        this.TEQ.setShader(new LinearGradient(this.f20288aa, 0.0f, this.Fmk, getMeasuredHeight(), -1, 16777215, Shader.TileMode.CLAMP));
        int i10 = 0;
        while (true) {
            if (i10 >= this.Dq.size()) {
                break;
            }
            Integer num = this.Dq.get(i10);
            this.TEQ.setAlpha(num.intValue());
            Integer num2 = this.uA.get(i10);
            if (this.TKC + num2.intValue() < this.HiB) {
                canvas.drawCircle(this.f20288aa, this.Fmk, this.TKC + num2.intValue(), this.TEQ);
            }
            if (num.intValue() > 0 && num2.intValue() < this.HiB) {
                this.Dq.set(i10, Integer.valueOf(num.intValue() - this.vS > 0 ? num.intValue() - (this.vS * 3) : 1));
                this.uA.set(i10, Integer.valueOf(num2.intValue() + this.vS));
            }
            i10++;
        }
        List<Integer> list = this.uA;
        if (list.get(list.size() - 1).intValue() >= this.HiB / this.EjP) {
            this.Dq.add(255);
            this.uA.add(0);
        }
        if (this.uA.size() >= 3) {
            this.uA.remove(0);
            this.Dq.remove(0);
        }
        this.TEQ.setAlpha(255);
        this.TEQ.setColor(this.sP);
        canvas.drawCircle(this.f20288aa, this.Fmk, this.TKC, this.Ym);
        if (this.Jcg) {
            invalidate();
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        float f10 = i10 / 2.0f;
        this.f20288aa = f10;
        this.Fmk = i11 / 2.0f;
        float f11 = f10 - (this.sef / 2.0f);
        this.HiB = f11;
        this.TKC = f11 / 4.0f;
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10) {
            invalidate();
        }
    }

    public void sP() {
        this.Jcg = false;
        this.uA.clear();
        this.Dq.clear();
        this.Dq.add(255);
        this.uA.add(0);
        invalidate();
    }

    public void setColor(int i10) {
        this.Sj = i10;
    }

    public void setCoreColor(int i10) {
        this.sP = i10;
    }

    public void setCoreRadius(int i10) {
        this.TKC = i10;
    }

    public void setDiffuseSpeed(int i10) {
        this.vS = i10;
    }

    public void setDiffuseWidth(int i10) {
        this.EjP = i10;
    }

    public void setMaxWidth(int i10) {
        this.HiB = i10;
    }

    public EjP(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public EjP(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.Sj = -1;
        this.sP = FlowLayout.SPACING_AUTO;
        this.TKC = 18.0f;
        this.EjP = 3;
        this.HiB = 50.0f;
        this.vS = 2;
        this.Jcg = false;
        this.Dq = new ArrayList();
        this.uA = new ArrayList();
        this.sef = 24;
        TKC();
    }
}
