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
import com.google.android.material.timepicker.TimeModel;
import com.transsion.widgetslib.R;
import defpackage.olb;
import java.util.Locale;
import org.slf4j.Marker;

public class BadgeView extends View {
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
    public int k;
    public String l;
    public String m;
    public float n;
    public float o;
    public Paint p;
    public Paint q;
    public RectF r;
    public RectF s;
    public boolean t;
    public Context u;
    public int v;

    public BadgeView(Context context) {
        this(context, null);
    }

    public static int a(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    public static String formatBadgeNum(Context context, int i) {
        return i > 99 ? context.getString(R.string.os_badge_num_overflow, 99) : String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i));
    }

    public static int getNotWidthByType(int i) {
        if (i != 1) {
            return i != 2 ? 6 : 12;
        }
        return 8;
    }

    public final void b(Context context, AttributeSet attributeSet) {
        this.u = context;
        this.r = new RectF();
        this.s = new RectF();
        Paint paint = new Paint();
        this.p = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.q = paint2;
        paint2.setAntiAlias(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSRedPointTextView);
        this.e = typedArrayObtainStyledAttributes.getInt(R.styleable.OSRedPointTextView_osRedPointTextViewType, 0);
        this.l = setNum(typedArrayObtainStyledAttributes.getInt(R.styleable.OSRedPointTextView_osRedPointTextViewNum, 0));
        this.t = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSRedPointTextView_osRedPointTextViewHaveOuterCircle, false);
        TypedArray typedArrayObtainStyledAttributes2 = this.u.obtainStyledAttributes(new int[]{R.attr.OsBgPrimary});
        this.b = typedArrayObtainStyledAttributes.getColor(R.styleable.OSRedPointTextView_osRedPointTextViewBg, olb.m(this.u, R.attr.os_warning_primary, R.color.os_warning_primary_hios));
        this.c = typedArrayObtainStyledAttributes.getColor(R.styleable.OSRedPointTextView_osRedPointTextViewOutCircleBg, typedArrayObtainStyledAttributes2.getColor(0, this.u.getColor(R.color.os_bg_primary_color)));
        typedArrayObtainStyledAttributes2.recycle();
        typedArrayObtainStyledAttributes.recycle();
        this.v = olb.h(this.u, 1);
        setRedPointType(this.e);
    }

    public int getBackgroundColor() {
        return this.b;
    }

    public int getRedPointType() {
        return this.e;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.t) {
            this.p.setColor(this.c);
            RectF rectF = this.s;
            int i = this.k;
            canvas.drawRoundRect(rectF, i, i, this.p);
            this.p.setColor(this.b);
            RectF rectF2 = this.r;
            int i2 = this.k;
            int i3 = this.v;
            canvas.drawRoundRect(rectF2, i2 - i3, i2 - i3, this.p);
        } else {
            this.p.setColor(this.b);
            RectF rectF3 = this.s;
            int i4 = this.k;
            canvas.drawRoundRect(rectF3, i4, i4, this.p);
        }
        if (TextUtils.isEmpty(this.l)) {
            return;
        }
        Paint.FontMetrics fontMetrics = this.q.getFontMetrics();
        float f = fontMetrics.bottom;
        int i5 = (int) ((this.f / 2) + (((f - fontMetrics.top) / 2.0f) - f));
        int i6 = (int) ((this.g - this.n) / 2.0f);
        if (!this.l.contains(Marker.ANY_NON_NULL_MARKER)) {
            canvas.drawText(this.l, i6, i5, this.q);
            return;
        }
        boolean zL0 = olb.l0();
        float f2 = this.n;
        float f3 = this.o;
        float f4 = f2 - f3;
        float f5 = i6;
        if (zL0) {
            f5 += f3;
        }
        float f6 = i6;
        if (!zL0) {
            f6 += f4;
        }
        canvas.drawText(this.m, f5, i5, this.q);
        this.q.setTextSize(this.j);
        Paint.FontMetrics fontMetrics2 = this.q.getFontMetrics();
        float f7 = fontMetrics2.bottom;
        canvas.drawText(Marker.ANY_NON_NULL_MARKER, f6, (int) ((this.f / 2) + (((f7 - fontMetrics2.top) / 2.0f) - f7)), this.q);
        this.q.setTextSize(this.i);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(this.g, this.f);
    }

    @Override
    public void setBackgroundColor(int i) {
        this.b = i;
        setRedPointType(this.e);
    }

    public String setNum(int i) {
        String badgeNum = formatBadgeNum(this.u, i);
        this.l = badgeNum;
        this.m = badgeNum.replace(Marker.ANY_NON_NULL_MARKER, "");
        setRedPointType(this.e);
        return this.l;
    }

    public void setRedPointType(int i) {
        this.p.setColor(this.b);
        this.q.setColor(this.d);
        this.e = i;
        if (i == 0) {
            this.f = a(6);
            this.h = a(0);
            this.i = a(0);
            this.g = this.f;
        } else if (i == 1) {
            this.f = a(8);
            this.h = a(0);
            this.i = a(0);
            this.g = this.f;
        } else if (i == 2) {
            this.f = a(12);
            this.h = a(0);
            this.i = a(0);
            this.g = this.f;
        } else if (i == 3) {
            this.f = a(14);
            int iA = a(4);
            this.h = iA;
            if (this.t) {
                this.h = iA - this.v;
            }
            this.i = a(9);
            this.j = a(6);
            this.q.setTextSize(this.i);
            if (TextUtils.isEmpty(this.l)) {
                this.g = this.f;
            } else {
                if (this.l.endsWith(Marker.ANY_NON_NULL_MARKER)) {
                    float fMeasureText = this.q.measureText(this.m);
                    this.q.setTextSize(this.j);
                    float fMeasureText2 = this.q.measureText(Marker.ANY_NON_NULL_MARKER);
                    this.o = fMeasureText2;
                    this.n = fMeasureText + fMeasureText2;
                } else {
                    this.n = this.q.measureText(this.l);
                }
                this.g = (int) (this.n + (this.h * 2));
            }
        } else if (i == 4) {
            this.f = a(16);
            int iA2 = a(4);
            int i2 = this.v;
            int i3 = iA2 - i2;
            this.h = i3;
            if (this.t) {
                this.h = i3 - i2;
            }
            this.i = a(10);
            this.j = a(8);
            this.q.setTextSize(this.i);
            if (TextUtils.isEmpty(this.l)) {
                this.g = this.f;
            } else {
                if (this.l.endsWith(Marker.ANY_NON_NULL_MARKER)) {
                    float fMeasureText3 = this.q.measureText(this.m);
                    this.q.setTextSize(this.j);
                    float fMeasureText4 = this.q.measureText(Marker.ANY_NON_NULL_MARKER);
                    this.o = fMeasureText4;
                    this.n = fMeasureText3 + fMeasureText4;
                } else {
                    this.n = this.q.measureText(this.l);
                }
                this.g = (int) (this.n + (this.h * 2));
            }
        } else if (i == 5) {
            this.f = a(20);
            int iA3 = a(4);
            this.h = iA3;
            if (this.t) {
                this.h = iA3 - this.v;
            }
            this.i = a(12);
            this.j = a(8);
            this.q.setTextSize(this.i);
            if (TextUtils.isEmpty(this.l)) {
                this.g = this.f;
            } else {
                if (this.l.endsWith(Marker.ANY_NON_NULL_MARKER)) {
                    float fMeasureText5 = this.q.measureText(this.m);
                    this.q.setTextSize(this.j);
                    float fMeasureText6 = this.q.measureText(Marker.ANY_NON_NULL_MARKER);
                    this.o = fMeasureText6;
                    this.n = fMeasureText5 + fMeasureText6;
                } else {
                    this.n = this.q.measureText(this.l);
                }
                this.g = (int) (this.n + (this.h * 2));
            }
        }
        this.q.setTextSize(this.i);
        if (this.t) {
            int i4 = this.g;
            int i5 = this.v;
            this.g = i4 + (i5 * 2);
            this.f += i5 * 2;
        }
        int i6 = this.f;
        this.k = i6 / 2;
        int iMax = Math.max(this.g, i6);
        this.g = iMax;
        this.s.set(0.0f, 0.0f, iMax, this.f);
        if (this.t) {
            RectF rectF = this.r;
            int i7 = this.v;
            rectF.set(i7, i7, this.g - i7, this.f - i7);
        }
        invalidate();
        requestLayout();
    }

    public BadgeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = Color.parseColor("#FFFFFF");
        this.e = 0;
        b(context, attributeSet);
    }
}
