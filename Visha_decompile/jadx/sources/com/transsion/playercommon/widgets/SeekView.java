package com.transsion.playercommon.widgets;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import com.transsion.playercommon.R;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

public class SeekView extends View {
    public Path A;
    public boolean B;
    public GestureDetector C;
    public float D;
    public b E;
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
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public Paint q;
    public Paint r;
    public Paint s;
    public Paint t;
    public Paint u;
    public DecimalFormat v;
    public DecimalFormat w;
    public boolean x;
    public int y;
    public String z;

    public class a extends GestureDetector.SimpleOnGestureListener {
        public a() {
        }

        @Override
        public boolean onDoubleTap(MotionEvent motionEvent) {
            SeekView.this.d(motionEvent.getX(), false);
            SeekView.this.invalidate();
            return true;
        }

        @Override
        public boolean onDown(MotionEvent motionEvent) {
            SeekView.this.d(motionEvent.getX(), false);
            SeekView.this.invalidate();
            return true;
        }

        @Override
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            SeekView.this.d(motionEvent2.getX(), true);
            SeekView.this.B = true;
            SeekView.this.invalidate();
            return true;
        }

        @Override
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return super.onSingleTapConfirmed(motionEvent);
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            SeekView.this.d(motionEvent.getX(), false);
            SeekView.this.B = false;
            SeekView.this.invalidate();
            return true;
        }
    }

    public interface b {
        void a(int i, String str);
    }

    public SeekView(Context context) {
        super(context);
        this.d = 25;
        this.e = 50;
        this.f = 400;
        this.g = 100;
        this.o = 100;
        this.p = 16;
        this.q = new Paint();
        this.r = new Paint();
        this.s = new Paint();
        this.t = new Paint();
        this.u = new Paint();
        Locale locale = Locale.US;
        this.v = new DecimalFormat("0.0", new DecimalFormatSymbols(locale));
        this.w = new DecimalFormat("0.00", new DecimalFormatSymbols(locale));
        this.A = new Path();
        this.C = new GestureDetector(getContext(), new a());
        e(context, null, 0);
    }

    public static void Vibrate(Activity activity, long j) {
        if (activity == null) {
            return;
        }
        ((Vibrator) activity.getSystemService("vibrator")).vibrate(j);
    }

    public final void c() {
        int i = this.o;
        float f = (i * 1.0f) / 100.0f;
        boolean z = i % 50 == 0;
        StringBuilder sb = new StringBuilder();
        sb.append((z ? this.v : this.w).format(f));
        sb.append("X");
        this.z = sb.toString();
    }

    public final void d(float f, boolean z) {
        this.D = f;
        int iRound = Math.round((f - this.h) / this.y);
        int i = this.x ? this.f - (iRound * this.d) : this.e + (iRound * this.d);
        int i2 = this.e;
        if (i < i2) {
            i = i2;
        }
        int i3 = this.f;
        if (i > i3) {
            i = i3;
        }
        f(i, false, z);
        c();
    }

    public final void e(Context context, AttributeSet attributeSet, int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        int i2 = typedValue.data;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SeekView, i, 0);
        this.q.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.SeekView_seek_small_tick_color, -9934744));
        this.q.setStrokeWidth(com.transsion.utils.a.d(context, 2.0f));
        Paint paint = this.q;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        Paint paint2 = this.q;
        Paint.Cap cap = Paint.Cap.ROUND;
        paint2.setStrokeCap(cap);
        this.r.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.SeekView_seek_integer_tick_color, -4210753));
        this.r.setStrokeWidth(com.transsion.utils.a.d(context, 2.0f));
        this.r.setStyle(style);
        this.r.setStrokeCap(cap);
        this.u.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.SeekView_seek_text_color, -4210753));
        this.u.setStyle(style);
        this.u.setTextSize(com.transsion.utils.a.d(context, 10.0f));
        this.s.setColor(i2);
        this.s.setStrokeWidth(com.transsion.utils.a.d(context, 3.0f));
        this.s.setStyle(style);
        this.s.setStrokeCap(cap);
        this.t.setColor(i2);
        this.t.setTextSize(com.transsion.utils.a.d(context, 14.0f));
        this.t.setFakeBoldText(true);
        this.h = com.transsion.utils.a.d(context, 23.0f);
        this.i = com.transsion.utils.a.d(context, 16.0f);
        this.j = com.transsion.utils.a.d(context, 16.0f);
        this.k = com.transsion.utils.a.d(context, 28.0f);
        this.l = com.transsion.utils.a.d(context, 40.0f);
        this.m = com.transsion.utils.a.d(context, 17.0f);
        this.n = com.transsion.utils.a.d(context, 77.0f);
        this.p = com.transsion.utils.a.d(context, 16.0f);
        c();
        setLayerType(2, null);
        this.x = getLayoutDirection() == 1;
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void f(int i, boolean z, boolean z2) {
        if (i == this.o) {
            return;
        }
        this.o = i;
        c();
        if (z) {
            invalidate();
        }
        if (z2 && i % 100 == 0) {
            Vibrate((Activity) getContext(), 100L);
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        int iSave = canvas.save();
        canvas.clipPath(this.A);
        canvas.drawColor(530686369);
        int i2 = this.f;
        int i3 = this.e;
        int i4 = this.d;
        int i5 = (i2 - i3) / i4;
        int i6 = i5 + 1;
        if (i5 == 0) {
            this.y = 100;
        } else {
            int i7 = this.b;
            int i8 = this.h;
            this.y = ((i7 - i8) - i8) / i5;
        }
        if (this.y == 0) {
            this.y = 100;
        }
        int i9 = this.c;
        int i10 = this.l;
        float f = i9 - i10;
        float f2 = (i9 - i10) - this.i;
        int i11 = (this.o - i3) / i4;
        for (int i12 = 0; i12 < i6; i12++) {
            float f3 = this.h + (this.y * i12);
            if ((this.e + (this.d * i12)) % this.g == 0) {
                String str = this.v.format((this.e + (this.d * i12)) / 100.0f) + "X";
                float fMeasureText = this.u.measureText(str);
                if (this.x) {
                    canvas.drawText(str, this.b - ((fMeasureText / 2.0f) + f3), this.c - this.m, this.u);
                } else {
                    canvas.drawText(str, f3 - (fMeasureText / 2.0f), this.c - this.m, this.u);
                }
            }
            if (i11 == i12 && (i = this.o) >= this.e && i <= this.f) {
                float f4 = this.h + (this.y * i11);
                float f5 = (this.c - this.l) - this.k;
                if (this.x) {
                    int i13 = this.b;
                    canvas.drawLine(i13 - f4, f, i13 - f4, f5, this.s);
                } else {
                    canvas.drawLine(f4, f, f4, f5, this.s);
                }
                int iSave2 = canvas.save();
                float fMeasureText2 = this.t.measureText(this.z);
                if (this.x) {
                    canvas.drawText(this.z, this.b - (f3 + (fMeasureText2 / 2.0f)), this.c - this.n, this.t);
                } else {
                    canvas.drawText(this.z, f3 - (fMeasureText2 / 2.0f), this.c - this.n, this.t);
                }
                canvas.restoreToCount(iSave2);
            } else if ((this.e + (this.d * i12)) % this.g == 0) {
                int i14 = (this.c - this.l) - this.j;
                if (this.x) {
                    int i15 = this.b;
                    canvas.drawLine(i15 - f3, f, i15 - f3, i14, this.r);
                } else {
                    canvas.drawLine(f3, f, f3, i14, this.r);
                }
            } else if (this.x) {
                int i16 = this.b;
                canvas.drawLine(i16 - f3, f, i16 - f3, f2, this.q);
            } else {
                canvas.drawLine(f3, f, f3, f2, this.q);
            }
        }
        canvas.restoreToCount(iSave);
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.x = getContext().getResources().getConfiguration().getLayoutDirection() == 1;
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.b = View.MeasureSpec.getSize(i);
        int size = View.MeasureSpec.getSize(i2);
        this.c = size;
        int i3 = this.p;
        this.A.addRoundRect(0.0f, 0.0f, this.b, size, i3, i3, Path.Direction.CCW);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        b bVar;
        this.C.onTouchEvent(motionEvent);
        if (motionEvent.getActionMasked() == 1 && (bVar = this.E) != null) {
            bVar.a(this.o, this.z);
        }
        return true;
    }

    public void setRange(int i, int i2, boolean z) {
        this.e = i;
        this.f = i2;
        if (z) {
            invalidate();
        }
    }

    public void setSelectValue(int i, boolean z) {
        f(i, z, false);
    }

    public void setStep(int i, boolean z) {
        this.d = i;
        if (z) {
            invalidate();
        }
    }

    public void setTextStep(int i, boolean z) {
        this.g = i;
        if (z) {
            invalidate();
        }
    }

    public void setValueChange(b bVar) {
        this.E = bVar;
    }

    public static void Vibrate(Activity activity, long[] jArr, boolean z) {
        if (activity == null) {
            return;
        }
        ((Vibrator) activity.getSystemService("vibrator")).vibrate(jArr, z ? 1 : -1);
    }

    public SeekView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = 25;
        this.e = 50;
        this.f = 400;
        this.g = 100;
        this.o = 100;
        this.p = 16;
        this.q = new Paint();
        this.r = new Paint();
        this.s = new Paint();
        this.t = new Paint();
        this.u = new Paint();
        Locale locale = Locale.US;
        this.v = new DecimalFormat("0.0", new DecimalFormatSymbols(locale));
        this.w = new DecimalFormat("0.00", new DecimalFormatSymbols(locale));
        this.A = new Path();
        this.C = new GestureDetector(getContext(), new a());
        e(context, attributeSet, 0);
    }

    public SeekView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = 25;
        this.e = 50;
        this.f = 400;
        this.g = 100;
        this.o = 100;
        this.p = 16;
        this.q = new Paint();
        this.r = new Paint();
        this.s = new Paint();
        this.t = new Paint();
        this.u = new Paint();
        Locale locale = Locale.US;
        this.v = new DecimalFormat("0.0", new DecimalFormatSymbols(locale));
        this.w = new DecimalFormat("0.00", new DecimalFormatSymbols(locale));
        this.A = new Path();
        this.C = new GestureDetector(getContext(), new a());
        e(context, attributeSet, i);
    }
}
