package com.transsion.publish.view.clip;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.b;
import com.transsion.publish.R$color;

public class ClipView extends View {
    public static final int BORDERDISTANCE = 0;
    public static final int CIRCLE_ZOOM = 3;
    public static final int CIRCULAR = 0;
    public static final int RECTANGULAR = 1;
    public static int TYPE_START = 0;
    public static int mHorizontalPadding = 16;

    private Paint f48635a;

    private Context f48636b;

    private int f48637c;

    private int f48638d;

    private int f48639e;

    private int f48640f;

    private int f48641g;

    private int f48642h;

    private boolean f48643i;
    public int innerCircle;

    private boolean f48644j;

    private boolean f48645k;

    public ClipView(Context context) {
        this(context, null);
        this.f48636b = context;
    }

    public static int dip2px(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public int cropHeight() {
        return this.f48638d;
    }

    public int cropWidth() {
        return this.f48637c;
    }

    public int getInnerCircle() {
        return this.innerCircle;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        int i10;
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        int i11 = this.f48637c;
        if (i11 <= 0 || (i10 = this.f48638d) <= 0 || width <= 0 || height <= 0) {
            if (TYPE_START == 0) {
                this.innerCircle = width / 3;
                this.f48635a.setColor(0);
                this.f48635a.setDither(true);
                this.f48635a.setAntiAlias(true);
                this.f48635a.setStyle(Paint.Style.STROKE);
                int i12 = width / 2;
                float f10 = i12;
                int i13 = height / 2;
                float f11 = i13;
                canvas.drawCircle(f10, f11, i12 - mHorizontalPadding, this.f48635a);
                this.f48635a.setColor(b.getColor(getContext(), R$color.cl31_50_p));
                this.f48635a.setStrokeWidth(height);
                canvas.drawCircle(f10, f11, (i12 - mHorizontalPadding) + i13, this.f48635a);
                return;
            }
            this.f48635a.setColor(b.getColor(getContext(), R$color.cl31_50_p));
            float f12 = width;
            float f13 = (height - width) / 2;
            canvas.drawRect(0.0f, 0.0f, f12, f13, this.f48635a);
            float f14 = (height + width) / 2;
            canvas.drawRect(0.0f, f14, f12, height, this.f48635a);
            canvas.drawRect(0.0f, f13, 0.0f, f14, this.f48635a);
            canvas.drawRect(width, f13, f12, f14, this.f48635a);
            this.f48635a.setColor(-1);
            this.f48635a.setStrokeWidth(2.0f);
            float f15 = width;
            canvas.drawLine(0.0f, f13, f15, f13, this.f48635a);
            canvas.drawLine(0.0f, f14, f15, f14, this.f48635a);
            canvas.drawLine(0.0f, f13, 0.0f, f14, this.f48635a);
            canvas.drawLine(f15, f13, f15, f14, this.f48635a);
            return;
        }
        if (this.f48643i) {
            int[] iArrA = this.f48645k ? qo.b.a(this.f48636b, i11, i10, width, height) : qo.b.b(this.f48636b, i11, i10, width, height, 1.0f);
            this.f48637c = iArrA[0];
            this.f48638d = iArrA[1];
        }
        int i14 = (width - this.f48637c) / 2;
        int i15 = (height - this.f48638d) / 2;
        this.f48635a.setColor(b.getColor(getContext(), R$color.cl31_50_p));
        float f16 = width;
        float f17 = i15;
        canvas.drawRect(0.0f, 0.0f, f16, f17, this.f48635a);
        canvas.drawRect(0.0f, this.f48638d + i15, f16, height, this.f48635a);
        canvas.drawRect(0.0f, f17, i14, this.f48638d + i15, this.f48635a);
        canvas.drawRect(this.f48637c + i14, f17, f16, this.f48638d + i15, this.f48635a);
        this.f48635a.setColor(b.getColor(getContext(), com.tn.lib.widget.R$color.white));
        this.f48635a.setStrokeWidth(1);
        this.f48639e = i14;
        this.f48640f = i15;
        int i16 = this.f48637c + i14;
        this.f48641g = i16;
        if (this.f48645k) {
            this.f48642h = this.f48638d + i15;
        } else {
            this.f48642h = this.f48638d - (i15 != 0 ? i15 : 1);
        }
        if (this.f48644j) {
            canvas.drawLine(i14, i15, i16, i15, this.f48635a);
            float f18 = this.f48639e;
            int i17 = this.f48642h;
            canvas.drawLine(f18, i17, this.f48641g, i17, this.f48635a);
            int i18 = this.f48639e;
            canvas.drawLine(i18, this.f48640f, i18, this.f48642h, this.f48635a);
            int i19 = this.f48641g;
            canvas.drawLine(i19, this.f48640f, i19, this.f48642h, this.f48635a);
        }
    }

    public Rect rect() {
        return new Rect(this.f48639e, this.f48640f, this.f48641g, this.f48642h);
    }

    public void setFullScreen(boolean z10) {
        this.f48645k = z10;
    }

    public void setNeedDivider(boolean z10) {
        this.f48644j = z10;
    }

    public void setSizeNeedChange(boolean z10) {
        this.f48643i = z10;
        invalidate();
    }

    public void setStart(int i10) {
        TYPE_START = i10;
    }

    public void setStartWH(int i10, int i11) {
        this.f48637c = i10;
        this.f48638d = i11;
    }

    public ClipView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        this.f48636b = context;
    }

    public ClipView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.innerCircle = getWidth() / 3;
        this.f48643i = true;
        this.f48644j = true;
        this.f48645k = true;
        this.f48635a = new Paint();
        this.f48636b = context;
    }
}
