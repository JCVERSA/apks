package com.bytedance.sdk.component.adexpress.vS;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.widget.ImageView;
import com.bumptech.glide.load.resource.drawable.b;
import com.bumptech.glide.load.resource.drawable.c;

@SuppressLint({"AppCompatCustomView"})
public class Fmk extends ImageView {
    private float Dq;
    private AnimatedImageDrawable EjP;
    private boolean Fmk;
    private boolean HiB;
    private float Jcg;
    private Movie Sj;
    private int TEQ;
    private int TKC;
    private int Ym;

    private volatile boolean f20289aa;
    private long sP;
    private boolean sef;
    private float uA;
    private boolean vS;

    public Fmk(Context context) {
        super(context);
        this.HiB = Build.VERSION.SDK_INT >= 28;
        this.vS = false;
        this.Fmk = true;
        this.sef = true;
        Sj();
    }

    private void TKC() {
        if (this.Sj == null) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.sP == 0) {
            this.sP = jUptimeMillis;
        }
        int iDuration = this.Sj.duration();
        if (iDuration == 0) {
            iDuration = 1000;
        }
        if (this.sef || Math.abs(iDuration - this.TKC) >= 60) {
            this.TKC = (int) ((jUptimeMillis - this.sP) % ((long) iDuration));
        } else {
            this.TKC = iDuration;
            this.f20289aa = true;
        }
    }

    private void sP() {
        if (this.Sj == null || this.HiB || !this.Fmk) {
            return;
        }
        postInvalidateOnAnimation();
    }

    private void setDrawable(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        setImageDrawable(drawable);
        if (Build.VERSION.SDK_INT >= 28 && b.a(drawable)) {
            AnimatedImageDrawable animatedImageDrawableA = c.a(drawable);
            this.EjP = animatedImageDrawableA;
            if (!this.f20289aa) {
                animatedImageDrawableA.start();
            }
            if (!this.sef) {
                animatedImageDrawableA.setRepeatCount(0);
            }
        }
        sP();
    }

    void Sj() {
        if (this.HiB) {
            return;
        }
        setLayerType(1, null);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        if (this.Sj == null || this.HiB) {
            super.onDraw(canvas);
            return;
        }
        try {
            if (this.f20289aa) {
                Sj(canvas);
                return;
            }
            TKC();
            Sj(canvas);
            sP();
        } catch (Throwable unused) {
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.Sj != null && !this.HiB) {
            this.Jcg = (getWidth() - this.TEQ) / 2.0f;
            this.Dq = (getHeight() - this.Ym) / 2.0f;
        }
        this.Fmk = getVisibility() == 0;
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        Movie movie;
        int size;
        int size2;
        super.onMeasure(i10, i11);
        if (this.HiB || (movie = this.Sj) == null) {
            return;
        }
        int iWidth = movie.width();
        int iHeight = this.Sj.height();
        float fMax = 1.0f / Math.max((View.MeasureSpec.getMode(i10) == 0 || iWidth <= (size2 = View.MeasureSpec.getSize(i10))) ? 1.0f : iWidth / size2, (View.MeasureSpec.getMode(i11) == 0 || iHeight <= (size = View.MeasureSpec.getSize(i11))) ? 1.0f : iHeight / size);
        this.uA = fMax;
        int i12 = (int) (iWidth * fMax);
        this.TEQ = i12;
        int i13 = (int) (iHeight * fMax);
        this.Ym = i13;
        setMeasuredDimension(i12, i13);
    }

    @Override
    @SuppressLint({"NewApi"})
    public void onScreenStateChanged(int i10) {
        super.onScreenStateChanged(i10);
        if (this.Sj != null) {
            this.Fmk = i10 == 1;
            sP();
        }
    }

    @Override
    @SuppressLint({"NewApi"})
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (this.Sj != null) {
            this.Fmk = i10 == 0;
            sP();
        }
    }

    @Override
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        if (this.Sj != null) {
            this.Fmk = i10 == 0;
            sP();
        }
    }

    public void setRepeatConfig(boolean z10) {
        AnimatedImageDrawable animatedImageDrawable;
        this.sef = z10;
        if (z10) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT < 28 || (animatedImageDrawable = this.EjP) == null) {
                return;
            }
            animatedImageDrawable.setRepeatCount(0);
        } catch (Exception unused) {
        }
    }

    private void Sj(Canvas canvas) {
        Movie movie = this.Sj;
        if (movie == null) {
            return;
        }
        movie.setTime(this.TKC);
        float f10 = this.uA;
        if (f10 == 0.0f) {
            canvas.scale(1.0f, 1.0f);
            this.Sj.draw(canvas, 0.0f, 0.0f);
        } else {
            canvas.scale(f10, f10);
            Movie movie2 = this.Sj;
            float f11 = this.Jcg;
            float f12 = this.uA;
            movie2.draw(canvas, f11 / f12, this.Dq / f12);
        }
        canvas.restore();
    }
}
