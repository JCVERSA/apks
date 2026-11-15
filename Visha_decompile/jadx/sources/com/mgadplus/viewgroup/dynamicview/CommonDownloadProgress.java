package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import com.mgmi.R;

public class CommonDownloadProgress extends View {
    public PorterDuffXfermode b;
    public int c;
    public int d;
    public float e;
    public Paint f;
    public Paint g;
    public Paint h;
    public Rect i;
    public RectF j;
    public Bitmap k;
    public float l;
    public Bitmap m;
    public Canvas n;
    public float o;
    public boolean p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public String y;
    public BitmapShader z;

    public CommonDownloadProgress(Context context) {
        this(context, null, 0);
    }

    private String getProgressText() {
        if (!this.p) {
            return this.y;
        }
        return ((int) this.o) + "%";
    }

    public final int a(int i) {
        return (int) (i * getContext().getResources().getDisplayMetrics().density);
    }

    public final void b() {
        Paint paint = new Paint(5);
        this.g = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.g.setStrokeWidth(this.d);
        Paint paint2 = new Paint(1);
        this.h = paint2;
        paint2.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.f = paint3;
        paint3.setTextSize(this.w);
        this.i = new Rect();
        int i = this.d;
        this.j = new RectF(i, i, getMeasuredWidth() - this.d, getMeasuredHeight() - this.d);
        this.u = this.q;
        this.s = Color.parseColor("#ff888888");
        this.t = Color.parseColor("#0F000000");
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.flicker);
        this.k = bitmapDecodeResource;
        this.l = -bitmapDecodeResource.getWidth();
        e();
    }

    public final void c(Canvas canvas) {
        if (this.o != 0.0f) {
            this.g.setColor(this.r);
            this.g.setStyle(Paint.Style.FILL);
            RectF rectF = this.j;
            int i = this.x;
            canvas.drawRoundRect(rectF, i, i, this.g);
            return;
        }
        this.g.setColor(this.t);
        this.g.setStyle(Paint.Style.FILL);
        RectF rectF2 = this.j;
        int i2 = this.x;
        canvas.drawRoundRect(rectF2, i2, i2, this.g);
    }

    public final void d(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.DownloadProgressViewStyle);
        try {
            try {
                this.w = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.DownloadProgressViewStyle_dP_textSize, a(13));
                this.q = typedArrayObtainStyledAttributes.getColor(R.styleable.DownloadProgressViewStyle_dP_loadingColor, Color.parseColor("#F06000"));
                this.r = typedArrayObtainStyledAttributes.getColor(R.styleable.DownloadProgressViewStyle_dP_stopColor, Color.parseColor("#ffEEEFEF"));
                this.x = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.DownloadProgressViewStyle_dP_radius, a(this.c) / 2);
                this.d = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.DownloadProgressViewStyle_dP_borderWidth, 2.0f);
                this.v = typedArrayObtainStyledAttributes.getColor(R.styleable.DownloadProgressViewStyle_dP_textColor, Color.parseColor("#ff888888"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final void e() {
        this.m = Bitmap.createBitmap(getMeasuredWidth() - this.d, getMeasuredHeight() - this.d, Bitmap.Config.ARGB_8888);
        this.n = new Canvas(this.m);
    }

    public final void f(Canvas canvas) {
        this.h.setColor(this.u);
        float measuredWidth = (this.o / this.e) * getMeasuredWidth();
        this.n.save();
        this.n.clipRect(0.0f, 0.0f, measuredWidth, getMeasuredHeight());
        this.n.drawColor(this.u);
        this.n.restore();
        this.h.setXfermode(this.b);
        this.n.drawBitmap(this.k, this.l, 0.0f, this.h);
        this.h.setXfermode(null);
        Bitmap bitmap = this.m;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        this.z = bitmapShader;
        this.h.setShader(bitmapShader);
        RectF rectF = this.j;
        int i = this.x;
        canvas.drawRoundRect(rectF, i, i, this.h);
    }

    public void finishButton(float f, CharSequence charSequence) {
        this.o = f;
        this.p = false;
        if (charSequence != null) {
            this.y = charSequence.toString();
        }
        invalidate();
    }

    public final void g(Canvas canvas) {
        if (this.o != 0.0f) {
            this.f.setColor(this.v);
        } else {
            this.f.setColor(this.s);
        }
        String progressText = getProgressText();
        this.f.getTextBounds(progressText, 0, progressText.length(), this.i);
        int iWidth = this.i.width();
        this.i.height();
        canvas.drawText(progressText, (getMeasuredWidth() - iWidth) / 2, ((getMeasuredHeight() - (this.f.descent() - this.f.ascent())) / 2.0f) - this.f.ascent(), this.f);
    }

    public float getProgress() {
        return this.o;
    }

    public View getView() {
        return this;
    }

    public void isFileDownload(boolean z) {
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        c(canvas);
        if (this.o != 0.0f) {
            f(canvas);
        }
        g(canvas);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            size2 = a(this.c);
        } else if (mode != 0 && mode != 1073741824) {
            size2 = 0;
        }
        setMeasuredDimension(size, size2);
        if (this.m == null) {
            b();
        }
    }

    public void setProgress(float f) {
        this.p = true;
        float f2 = this.e;
        if (f < f2) {
            this.o = f;
        } else {
            this.o = f2;
        }
        invalidate();
    }

    public CommonDownloadProgress(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CommonDownloadProgress(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP);
        this.c = 28;
        this.e = 100.0f;
        this.p = false;
        d(attributeSet);
    }

    public void finishButton(CharSequence charSequence) {
        this.p = false;
        if (charSequence != null) {
            this.y = charSequence.toString();
        }
        invalidate();
    }
}
