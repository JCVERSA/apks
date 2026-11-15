package com.bytedance.sdk.openadsdk.TKC;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.utils.FPG;

public class Sj extends com.bytedance.sdk.openadsdk.core.HiB.Dq {
    private int EjP;
    private Paint Sj;
    private boolean TKC;
    private float sP;

    public Sj(Context context) {
        super(context);
        Sj();
    }

    private void Sj() {
        this.sP = FPG.Sj(getContext(), 8.0f);
        this.Sj = new Paint();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Sj(getText().toString(), getWidth());
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.EjP = getMeasuredHeight();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-2, this.EjP);
        } else {
            layoutParams.height = this.EjP;
        }
        setLayoutParams(layoutParams);
    }

    @Override
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        int i10 = this.EjP;
        if (i10 == 0 || layoutParams == null) {
            return;
        }
        layoutParams.height = i10;
    }

    public void setMinTextSize(float f10) {
        if (f10 <= 0.0f) {
            return;
        }
        this.sP = f10;
    }

    private void Sj(String str, int i10) {
        if (!this.TKC && i10 > 0) {
            float textSize = getTextSize();
            this.Sj.set(getPaint());
            int paddingLeft = (i10 - getPaddingLeft()) - getPaddingRight();
            float fSj = Sj(textSize, str);
            while (fSj > paddingLeft) {
                textSize -= 1.0f;
                this.Sj.setTextSize(textSize);
                if (textSize <= this.sP) {
                    break;
                } else {
                    fSj = Sj(textSize, str);
                }
            }
            setTextSize(0, textSize);
            this.TKC = true;
        }
    }

    private float Sj(float f10, String str) {
        this.Sj.setTextSize(f10);
        return this.Sj.measureText(str);
    }
}
