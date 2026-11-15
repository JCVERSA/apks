package com.mgmi.platform.view.ViewGroup.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import com.mgmi.R;

public class ProgressWheel extends View {
    private int a;
    private int b;
    private int c;
    private boolean d;
    private double e;
    private double f;
    private float g;
    private boolean h;
    private long i;
    private int j;
    private int k;
    private Paint l;
    private Paint m;
    private RectF n;
    private float o;
    private long p;
    private boolean q;
    private float r;
    private float s;
    private boolean t;
    private a u;

    public static class WheelSavedState implements Parcelable {
        public static final Parcelable.Creator<WheelSavedState> CREATOR = new Parcelable.Creator<WheelSavedState>() {
            @Override
            public WheelSavedState createFromParcel(Parcel parcel) {
                return new WheelSavedState(parcel);
            }

            @Override
            public WheelSavedState[] newArray(int i) {
                return new WheelSavedState[i];
            }
        };
        int barColor;
        int barWidth;
        int circleRadius;
        boolean fillRadius;
        boolean isSpinning;
        boolean linearProgress;
        float mProgress;
        private final Parcelable mSuperState;
        float mTargetProgress;
        int rimColor;
        int rimWidth;
        float spinSpeed;

        @Override
        public int describeContents() {
            return 0;
        }

        public final Parcelable getSuperState() {
            return this.mSuperState;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.mSuperState, i);
            parcel.writeFloat(this.mProgress);
            parcel.writeFloat(this.mTargetProgress);
            parcel.writeByte(this.isSpinning ? (byte) 1 : (byte) 0);
            parcel.writeFloat(this.spinSpeed);
            parcel.writeInt(this.barWidth);
            parcel.writeInt(this.barColor);
            parcel.writeInt(this.rimWidth);
            parcel.writeInt(this.rimColor);
            parcel.writeInt(this.circleRadius);
            parcel.writeByte(this.linearProgress ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.fillRadius ? (byte) 1 : (byte) 0);
        }

        public WheelSavedState(Parcelable parcelable) {
            if (parcelable == null) {
                throw new IllegalArgumentException("superState must not be null");
            }
            this.mSuperState = parcelable == View.BaseSavedState.EMPTY_STATE ? null : parcelable;
        }

        private WheelSavedState(Parcel parcel) {
            Parcelable parcelable = parcel.readParcelable(getClass().getClassLoader());
            this.mSuperState = parcelable == null ? View.BaseSavedState.EMPTY_STATE : parcelable;
            this.mProgress = parcel.readFloat();
            this.mTargetProgress = parcel.readFloat();
            this.isSpinning = parcel.readByte() != 0;
            this.spinSpeed = parcel.readFloat();
            this.barWidth = parcel.readInt();
            this.barColor = parcel.readInt();
            this.rimWidth = parcel.readInt();
            this.rimColor = parcel.readInt();
            this.circleRadius = parcel.readInt();
            this.linearProgress = parcel.readByte() != 0;
            this.fillRadius = parcel.readByte() != 0;
        }
    }

    public interface a {
        void a(float f);
    }

    public ProgressWheel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 28;
        this.b = 4;
        this.c = 4;
        this.d = false;
        this.e = 0.0d;
        this.f = 460.0d;
        this.g = 0.0f;
        this.h = true;
        this.i = 0L;
        this.j = -1442840576;
        this.k = 16777215;
        this.l = new Paint();
        this.m = new Paint();
        this.n = new RectF();
        this.o = 230.0f;
        this.p = 0L;
        this.r = 0.0f;
        this.s = 0.0f;
        this.t = false;
        a(context.obtainStyledAttributes(attributeSet, R.styleable.ProgressWheel));
    }

    private void a(int i, int i2) {
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        if (this.d) {
            int i3 = this.b;
            this.n = new RectF(paddingLeft + i3, paddingTop + i3, (i - paddingRight) - i3, (i2 - paddingBottom) - i3);
            return;
        }
        int i4 = (i - paddingLeft) - paddingRight;
        int iMin = Math.min(Math.min(i4, (i2 - paddingBottom) - paddingTop), (this.a * 2) - (this.b * 2));
        int i5 = ((i4 - iMin) / 2) + paddingLeft;
        int i6 = ((((i2 - paddingTop) - paddingBottom) - iMin) / 2) + paddingTop;
        int i7 = this.b;
        this.n = new RectF(i5 + i7, i6 + i7, (i5 + iMin) - i7, (i6 + iMin) - i7);
    }

    private void b() {
        this.l.setColor(this.j);
        this.l.setAntiAlias(true);
        Paint paint = this.l;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.l.setStrokeWidth(this.b);
        this.m.setColor(this.k);
        this.m.setAntiAlias(true);
        this.m.setStyle(style);
        this.m.setStrokeWidth(this.c);
    }

    private void c() {
        if (this.u != null) {
            this.u.a(Math.round((this.r * 100.0f) / 360.0f) / 100.0f);
        }
    }

    public int getBarColor() {
        return this.j;
    }

    public int getBarWidth() {
        return this.b;
    }

    public int getCircleRadius() {
        return this.a;
    }

    public float getProgress() {
        if (this.t) {
            return -1.0f;
        }
        return this.r / 360.0f;
    }

    public int getRimColor() {
        return this.k;
    }

    public int getRimWidth() {
        return this.c;
    }

    public float getSpinSpeed() {
        return this.o / 360.0f;
    }

    @Override
    public void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        canvas.drawArc(this.n, 360.0f, 360.0f, false, this.m);
        float fPow = 0.0f;
        boolean z = true;
        if (this.t) {
            long jUptimeMillis = SystemClock.uptimeMillis() - this.p;
            float f2 = (jUptimeMillis * this.o) / 1000.0f;
            a(jUptimeMillis);
            float f3 = this.r + f2;
            this.r = f3;
            if (Float.compare(f3, 360.0f) > 0) {
                this.r -= 360.0f;
            }
            this.p = SystemClock.uptimeMillis();
            float f4 = this.r - 90.0f;
            float f5 = this.g + 16.0f;
            if (isInEditMode()) {
                f5 = 135.0f;
                f = 0.0f;
            } else {
                f = f4;
            }
            canvas.drawArc(this.n, f, f5, false, this.l);
        } else {
            float f6 = this.r;
            if (Float.compare(f6, this.s) != 0) {
                this.r = Math.min(this.r + (((SystemClock.uptimeMillis() - this.p) / 1000.0f) * this.o), this.s);
                this.p = SystemClock.uptimeMillis();
            } else {
                z = false;
            }
            if (Float.compare(f6, this.r) != 0) {
                c();
            }
            float fPow2 = this.r;
            if (!this.q) {
                fPow = ((float) (1.0d - Math.pow(1.0f - (fPow2 / 360.0f), 4.0f))) * 360.0f;
                fPow2 = ((float) (1.0d - Math.pow(1.0f - (this.r / 360.0f), 2.0f))) * 360.0f;
            }
            canvas.drawArc(this.n, fPow - 90.0f, isInEditMode() ? 360.0f : fPow2, false, this.l);
        }
        if (z) {
            invalidate();
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int paddingLeft = this.a + getPaddingLeft() + getPaddingRight();
        int paddingTop = this.a + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            paddingLeft = size;
        } else if (mode == Integer.MIN_VALUE) {
            paddingLeft = Math.min(paddingLeft, size);
        }
        if (mode2 == 1073741824 || mode == 1073741824) {
            paddingTop = size2;
        } else if (mode2 == Integer.MIN_VALUE) {
            paddingTop = Math.min(paddingTop, size2);
        }
        setMeasuredDimension(paddingLeft, paddingTop);
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(i, i2);
        b();
        invalidate();
    }

    @Override
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            this.p = SystemClock.uptimeMillis();
        }
    }

    public void setBarColor(int i) {
        this.j = i;
        b();
        if (this.t) {
            return;
        }
        invalidate();
    }

    public void setBarWidth(int i) {
        this.b = i;
        if (this.t) {
            return;
        }
        invalidate();
    }

    public void setCallback(a aVar) {
        this.u = aVar;
        if (this.t) {
            return;
        }
        c();
    }

    public void setCircleRadius(int i) {
        this.a = i;
        if (this.t) {
            return;
        }
        invalidate();
    }

    public void setInstantProgress(float f) {
        if (this.t) {
            this.r = 0.0f;
            this.t = false;
        }
        if (Float.compare(f, 1.0f) > 0) {
            f -= 1.0f;
        } else if (Float.compare(f, 0.0f) < 0) {
            f = 0.0f;
        }
        if (Float.compare(f, this.s) == 0) {
            return;
        }
        float fMin = Math.min(f * 360.0f, 360.0f);
        this.s = fMin;
        this.r = fMin;
        this.p = SystemClock.uptimeMillis();
        invalidate();
    }

    public void setLinearProgress(boolean z) {
        this.q = z;
        if (this.t) {
            return;
        }
        invalidate();
    }

    public void setProgress(float f) {
        if (this.t) {
            this.r = 0.0f;
            this.t = false;
            c();
        }
        if (f > 1.0f) {
            f -= 1.0f;
        } else if (f < 0.0f) {
            f = 0.0f;
        }
        if (Float.compare(f, this.s) == 0) {
            return;
        }
        if (Float.compare(this.r, this.s) == 0) {
            this.p = SystemClock.uptimeMillis();
        }
        this.s = Math.min(f * 360.0f, 360.0f);
        invalidate();
    }

    public void setRimColor(int i) {
        this.k = i;
        b();
        if (this.t) {
            return;
        }
        invalidate();
    }

    public void setRimWidth(int i) {
        this.c = i;
        if (this.t) {
            return;
        }
        invalidate();
    }

    public void setSpinSpeed(float f) {
        this.o = f * 360.0f;
    }

    private void a(TypedArray typedArray) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.b = (int) TypedValue.applyDimension(1, this.b, displayMetrics);
        this.c = (int) TypedValue.applyDimension(1, this.c, displayMetrics);
        int iApplyDimension = (int) TypedValue.applyDimension(1, this.a, displayMetrics);
        this.a = iApplyDimension;
        this.a = (int) typedArray.getDimension(R.styleable.ProgressWheel_matProg_circleRadius, iApplyDimension);
        this.d = typedArray.getBoolean(R.styleable.ProgressWheel_matProg_fillRadius, false);
        this.b = (int) typedArray.getDimension(R.styleable.ProgressWheel_matProg_barWidth, this.b);
        this.c = (int) typedArray.getDimension(R.styleable.ProgressWheel_matProg_rimWidth, this.c);
        this.o = typedArray.getFloat(R.styleable.ProgressWheel_matProg_spinSpeed, this.o / 360.0f) * 360.0f;
        this.f = typedArray.getInt(R.styleable.ProgressWheel_matProg_barSpinCycleTime, (int) this.f);
        this.j = typedArray.getColor(R.styleable.ProgressWheel_matProg_barColor, this.j);
        this.k = typedArray.getColor(R.styleable.ProgressWheel_matProg_rimColor, this.k);
        this.q = typedArray.getBoolean(R.styleable.ProgressWheel_matProg_linearProgress, false);
        if (typedArray.getBoolean(R.styleable.ProgressWheel_matProg_progressIndeterminate, false)) {
            a();
        }
        typedArray.recycle();
    }

    public ProgressWheel(Context context) {
        super(context);
        this.a = 28;
        this.b = 4;
        this.c = 4;
        this.d = false;
        this.e = 0.0d;
        this.f = 460.0d;
        this.g = 0.0f;
        this.h = true;
        this.i = 0L;
        this.j = -1442840576;
        this.k = 16777215;
        this.l = new Paint();
        this.m = new Paint();
        this.n = new RectF();
        this.o = 230.0f;
        this.p = 0L;
        this.r = 0.0f;
        this.s = 0.0f;
        this.t = false;
    }

    private void a(long j) {
        long j2 = this.i;
        if (j2 >= 200) {
            double d = this.e + j;
            this.e = d;
            double d2 = this.f;
            if (d > d2) {
                this.e = d - d2;
                this.i = 0L;
                this.h = !this.h;
            }
            float fCos = (((float) Math.cos(((this.e / d2) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
            if (this.h) {
                this.g = fCos * 254.0f;
                return;
            }
            float f = (1.0f - fCos) * 254.0f;
            this.r += this.g - f;
            this.g = f;
            return;
        }
        this.i = j2 + j;
    }

    public void a() {
        this.p = SystemClock.uptimeMillis();
        this.t = true;
        invalidate();
    }
}
