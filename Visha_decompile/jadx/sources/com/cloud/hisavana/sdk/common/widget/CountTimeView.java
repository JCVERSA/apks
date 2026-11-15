package com.cloud.hisavana.sdk.common.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.cloud.hisavana.sdk.R;
import defpackage.ikd;
import defpackage.qk1;

public class CountTimeView extends View implements View.OnClickListener {
    public Paint b;
    public Paint c;
    public long d;
    public long e;
    public qk1 f;
    public int g;
    public String h;
    public b i;
    public Bitmap j;
    public int k;
    public final Rect l;

    public class a extends qk1 {
        public a(long j, long j2) {
            super(j, j2);
        }

        @Override
        public void e() {
            if (CountTimeView.this.i != null) {
                CountTimeView.this.i.onFinish();
            }
        }

        @Override
        public void f(long j) {
            CountTimeView.this.h = "SKIP " + (j / 1000);
            CountTimeView.this.k = (int) j;
            CountTimeView.this.invalidate();
        }
    }

    public interface b {
        void onClick();

        void onFinish();

        void onStart();
    }

    public CountTimeView(Context context) {
        this(context, null);
    }

    private Bitmap getBg() {
        try {
            Drawable drawable = getResources().getDrawable(R.drawable.ad_skip_button);
            if (drawable instanceof BitmapDrawable) {
                this.j = ((BitmapDrawable) drawable).getBitmap();
            } else {
                this.j = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(this.j);
                drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                drawable.draw(canvas);
            }
            return this.j;
        } catch (Throwable th) {
            ikd.b().e(Log.getStackTraceString(th));
            return null;
        }
    }

    public void cancel() {
        qk1 qk1Var = this.f;
        if (qk1Var != null) {
            qk1Var.d();
        }
    }

    public void changeFinishMode() {
        this.h = "X";
        invalidate();
    }

    public final void d() {
        this.f = new a(this.d, 1000L);
    }

    public final void e() {
        Paint paint = new Paint();
        this.b = paint;
        paint.setAntiAlias(true);
        this.b.setDither(true);
        this.b.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.c = paint2;
        paint2.setAntiAlias(true);
        this.c.setColor(-1);
        this.c.setTextSize(this.g);
        this.c.setStrokeWidth(8.0f);
        this.c.setTextAlign(Paint.Align.CENTER);
    }

    public long getRemainder() {
        return this.k;
    }

    public long getSupposeFinishTime() {
        return this.e;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f.g();
        b bVar = this.i;
        if (bVar != null) {
            bVar.onStart();
        }
    }

    @Override
    public void onClick(View view) {
        b bVar = this.i;
        if (bVar != null) {
            bVar.onClick();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        qk1 qk1Var = this.f;
        if (qk1Var != null) {
            qk1Var.d();
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        try {
            if (TextUtils.isEmpty(this.h)) {
                return;
            }
            if (this.j == null) {
                this.j = getBg();
            }
            Rect rect = new Rect(0, 0, this.j.getWidth(), this.j.getHeight());
            canvas.drawBitmap(this.j, rect, rect, this.b);
            Paint.FontMetrics fontMetrics = this.c.getFontMetrics();
            Rect rect2 = this.l;
            canvas.drawText(this.h, rect2.centerX(), ((int) (((rect2.bottom + rect2.top) - fontMetrics.bottom) - fontMetrics.top)) / 2, this.c);
        } catch (Throwable th) {
            ikd.b().e(Log.getStackTraceString(th));
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.l.set(0, 0, getWidth(), getHeight());
        super.onSizeChanged(i, i2, i3, i4);
    }

    public void setCountDownTimerListener(b bVar) {
        this.i = bVar;
    }

    public void setStartTime(int i) {
        this.d = ((long) (i * 1000)) + 400;
        this.e = System.currentTimeMillis() + this.d + 1000;
        this.k = i;
        d();
    }

    public void start() {
        this.f.g();
        this.e = System.currentTimeMillis() + this.d + 1000;
        b bVar = this.i;
        if (bVar != null) {
            bVar.onStart();
        }
    }

    public CountTimeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CountTimeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = 6L;
        this.e = 0L;
        this.h = "5s";
        this.l = new Rect();
        setOnClickListener(this);
        try {
            this.g = context.getResources().getDimensionPixelSize(R.dimen.ad_skip_text_size);
        } catch (Throwable unused) {
            this.g = 13;
        }
        e();
    }
}
