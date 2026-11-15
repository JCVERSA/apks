package com.transsion.widgetslib.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import com.transsion.widgetslib.R;
import org.slf4j.Marker;

@Deprecated
public class RedPointView extends View {
    public static final int OSRedPointTypeBig = 2;
    public static final int OSRedPointTypeMedium = 1;
    public static final int OSRedPointTypeNumBig = 5;
    public static final int OSRedPointTypeNumMedium = 4;
    public static final int OSRedPointTypeNumSmall = 3;
    public static final int OSRedPointTypeSmall = 0;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public String k;
    public float l;
    public float m;
    public Paint n;
    public Paint o;
    public RectF p;

    public RedPointView(Context context) {
        this(context, null);
    }

    public static int a(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    public final void b(Context context, AttributeSet attributeSet) {
        this.p = new RectF(0.0f, 0.0f, this.f, this.e);
        Paint paint = new Paint();
        this.n = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.o = paint2;
        paint2.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSRedPointTextView);
        this.d = typedArrayObtainStyledAttributes.getInt(R.styleable.OSRedPointTextView_osRedPointTextViewType, 0);
        this.k = setNum(typedArrayObtainStyledAttributes.getInt(R.styleable.OSRedPointTextView_osRedPointTextViewNum, 0));
        typedArrayObtainStyledAttributes.recycle();
        setRedPointType(this.d);
    }

    public int getBackgroundColor() {
        return this.b;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.p;
        int i = this.j;
        canvas.drawRoundRect(rectF, i, i, this.n);
        if (TextUtils.isEmpty(this.k)) {
            return;
        }
        Paint.FontMetrics fontMetrics = this.o.getFontMetrics();
        float f = fontMetrics.bottom;
        int i2 = (int) ((this.e / 2) + (((f - fontMetrics.top) / 2.0f) - f));
        int i3 = (int) ((this.f - this.l) / 2.0f);
        if (this.d != 5 || !this.k.contains(Marker.ANY_NON_NULL_MARKER)) {
            canvas.drawText(this.k, i3, i2, this.o);
            return;
        }
        String str = this.k;
        float f2 = i3;
        canvas.drawText(str.substring(0, str.length() - 1), f2, i2, this.o);
        this.o.setTextSize(this.i);
        Paint.FontMetrics fontMetrics2 = this.o.getFontMetrics();
        float f3 = fontMetrics2.bottom;
        canvas.drawText(Marker.ANY_NON_NULL_MARKER, f2 + (this.l - this.m), (int) ((this.e / 2) + (((f3 - fontMetrics2.top) / 2.0f) - f3)), this.o);
        this.o.setTextSize(this.h);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(this.f, this.e);
    }

    @Override
    public void setBackgroundColor(int i) {
        this.b = i;
        setRedPointType(this.d);
    }

    public String setNum(int i) {
        this.k = i + "";
        int i2 = this.d;
        if ((i2 == 5 || i2 == 3) && i > 99) {
            this.k = "99+";
        }
        setRedPointType(i2);
        return this.k;
    }

    public void setRedPointType(int i) {
        this.n.setColor(this.b);
        this.o.setColor(this.c);
        this.d = i;
        if (i == 0) {
            this.e = a(6);
            this.g = a(0);
            this.h = a(0);
            this.f = this.e;
        } else if (i == 1) {
            this.e = a(8);
            this.g = a(0);
            this.h = a(0);
            this.f = this.e;
        } else if (i == 2) {
            this.e = a(12);
            this.g = a(0);
            this.h = a(0);
            this.f = this.e;
        } else if (i == 3) {
            this.e = a(14);
            this.g = a(3);
            this.h = a(9);
            this.i = a(6);
            this.o.setTextSize(this.h);
            if (TextUtils.isEmpty(this.k)) {
                this.f = this.e;
            } else {
                float fMeasureText = this.o.measureText(this.k);
                this.l = fMeasureText;
                this.f = (int) (fMeasureText + (this.g * 2));
            }
        } else if (i == 4) {
            this.e = a(19);
            this.g = a(4);
            int iA = a(12);
            this.h = iA;
            this.o.setTextSize(iA);
            if (TextUtils.isEmpty(this.k)) {
                this.f = this.e;
            } else {
                float fMeasureText2 = this.o.measureText(this.k);
                this.l = fMeasureText2;
                this.f = (int) (fMeasureText2 + (this.g * 2));
            }
        } else if (i == 5) {
            this.e = a(20);
            this.g = a(3);
            this.h = a(12);
            this.i = a(9);
            this.o.setTextSize(this.h);
            if (TextUtils.isEmpty(this.k)) {
                this.f = this.e;
            } else {
                if (this.k.endsWith(Marker.ANY_NON_NULL_MARKER)) {
                    String str = this.k;
                    float fMeasureText3 = this.o.measureText(str.substring(0, str.length() - 1));
                    this.o.setTextSize(a(9));
                    float fMeasureText4 = this.o.measureText(Marker.ANY_NON_NULL_MARKER);
                    this.m = fMeasureText4;
                    this.l = fMeasureText3 + fMeasureText4;
                } else {
                    this.l = this.o.measureText(this.k);
                }
                this.f = (int) (this.l + (this.g * 2));
            }
        }
        this.j = this.e / 2;
        this.o.setTextSize(this.h);
        int iMax = Math.max(this.f, this.e);
        this.f = iMax;
        RectF rectF = this.p;
        rectF.left = 0.0f;
        rectF.top = 0.0f;
        rectF.right = iMax;
        rectF.bottom = this.e;
        invalidate();
    }

    public RedPointView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = Color.parseColor("#FB2C2F");
        this.c = Color.parseColor("#FFFFFF");
        this.d = 0;
        b(context, attributeSet);
    }
}
