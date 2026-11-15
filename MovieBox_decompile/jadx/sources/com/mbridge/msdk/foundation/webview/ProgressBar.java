package com.mbridge.msdk.foundation.webview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;

public class ProgressBar extends View {

    Runnable f35014a;

    private float f35015b;

    private float f35016c;

    private float f35017d;

    private Drawable f35018e;

    private float f35019f;

    private long f35020g;

    private Handler f35021h;

    private Drawable f35022i;

    private int f35023j;

    private boolean f35024k;

    private boolean f35025l;

    private long f35026m;

    private float f35027n;

    private boolean f35028o;

    private Drawable f35029p;

    private Rect f35030q;

    private Drawable f35031r;

    private float f35032s;

    private boolean f35033t;

    private int f35034u;

    private int f35035v;

    private int f35036w;

    private long f35037x;

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            ProgressBar.this.invalidate();
        }
    }

    public ProgressBar(Context context) {
        super(context);
        this.f35014a = new a();
        this.f35020g = 25L;
        this.f35021h = new Handler(Looper.getMainLooper());
        this.f35024k = false;
        this.f35027n = 0.95f;
        this.f35028o = false;
        this.f35030q = new Rect();
        a(context);
    }

    private void a(Context context) {
        setWillNotDraw(false);
    }

    private float getVelocity() {
        if (this.f35033t) {
            return this.f35025l ? 1.0f : 0.4f;
        }
        if (this.f35037x >= 2000) {
            return 0.05f;
        }
        if (this.f35035v == 1) {
            return this.f35025l ? 1.0f : 0.4f;
        }
        if (this.f35034u == 1) {
            return this.f35025l ? 0.4f : 0.2f;
        }
        return this.f35025l ? 0.2f : 0.05f;
    }

    @Override
    public void draw(Canvas canvas) {
        if (!this.f35024k) {
            this.f35024k = true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = this.f35028o ? 0L : jCurrentTimeMillis - this.f35026m;
        this.f35017d = Math.abs(j10 / 1000.0f);
        this.f35026m = jCurrentTimeMillis;
        this.f35037x += j10;
        float velocity = getVelocity();
        this.f35016c = velocity;
        float f10 = this.f35015b + (velocity * this.f35017d);
        this.f35015b = f10;
        if (!this.f35033t) {
            float f11 = this.f35027n;
            if (f10 > f11) {
                this.f35015b = f11;
            }
        }
        this.f35030q.right = (int) (this.f35015b * this.f35032s);
        this.f35021h.removeCallbacksAndMessages(null);
        this.f35021h.postDelayed(this.f35014a, this.f35020g);
        super.draw(canvas);
        a(canvas, this.f35017d);
    }

    @Override
    public Bitmap getDrawingCache(boolean z10) {
        return null;
    }

    public float getProgress() {
        return this.f35015b;
    }

    public void initResource(boolean z10) {
        if (z10 || (this.f35022i == null && this.f35029p == null && this.f35031r == null && this.f35018e == null)) {
            Drawable drawable = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_highlight", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            this.f35022i = drawable;
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.f35022i.getIntrinsicHeight());
            }
            Drawable drawable2 = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_head", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            this.f35029p = drawable2;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.f35029p.getIntrinsicHeight());
            }
            this.f35031r = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_tail", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            this.f35018e = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_end_animation", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f35032s = getMeasuredWidth();
    }

    public void onThemeChange() {
        if (this.f35024k) {
            initResource(true);
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        Drawable drawable = this.f35022i;
        if (drawable != null) {
            drawable.setBounds(0, 0, (int) (((double) drawable.getIntrinsicWidth()) * 1.5d), getHeight());
        }
        Drawable drawable2 = this.f35029p;
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, getWidth(), getHeight());
        }
    }

    public void setPaused(boolean z10) {
        this.f35028o = z10;
        if (z10) {
            return;
        }
        this.f35026m = System.currentTimeMillis();
    }

    public void setProgress(float f10, boolean z10) {
        if (!z10 || f10 < 1.0f) {
            return;
        }
        startEndAnimation();
    }

    public void setProgressBarListener(c cVar) {
    }

    public void setProgressState(int i10) {
        if (i10 == 5) {
            this.f35034u = 1;
            this.f35035v = 0;
            this.f35036w = 0;
            this.f35037x = 0L;
            return;
        }
        if (i10 == 6) {
            this.f35035v = 1;
            if (this.f35036w == 1) {
                startEndAnimation();
            }
            this.f35037x = 0L;
            return;
        }
        if (i10 == 7) {
            startEndAnimation();
        } else {
            if (i10 != 8) {
                return;
            }
            this.f35036w = 1;
            if (this.f35035v == 1) {
                startEndAnimation();
            }
        }
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    public void setVisible(boolean z10) {
        if (!z10) {
            setVisibility(4);
            return;
        }
        this.f35025l = true;
        this.f35026m = System.currentTimeMillis();
        this.f35017d = 0.0f;
        this.f35037x = 0L;
        this.f35033t = false;
        this.f35019f = 0.0f;
        this.f35015b = 0.0f;
        this.f35032s = getMeasuredWidth();
        this.f35028o = false;
        this.f35034u = 0;
        this.f35035v = 0;
        this.f35036w = 0;
        Drawable drawable = this.f35022i;
        if (drawable != null) {
            this.f35023j = -drawable.getIntrinsicWidth();
        } else {
            this.f35023j = 0;
        }
        Drawable drawable2 = this.f35031r;
        if (drawable2 != null) {
            drawable2.setAlpha(255);
        }
        Drawable drawable3 = this.f35018e;
        if (drawable3 != null) {
            drawable3.setAlpha(255);
        }
        Drawable drawable4 = this.f35029p;
        if (drawable4 != null) {
            drawable4.setAlpha(255);
        }
        setVisibility(0);
        invalidate();
    }

    public void startEndAnimation() {
        if (this.f35033t) {
            return;
        }
        this.f35033t = true;
        this.f35019f = 0.0f;
    }

    private void a(Canvas canvas, float f10) {
        Drawable drawable;
        Drawable drawable2;
        if (this.f35033t) {
            float f11 = this.f35019f;
            float f12 = this.f35032s * 0.5f;
            int i10 = (int) ((1.0f - (f11 / f12)) * 255.0f);
            if (i10 < 0) {
                i10 = 0;
            }
            if (f11 > f12) {
                setVisible(false);
            }
            Drawable drawable3 = this.f35031r;
            if (drawable3 != null) {
                drawable3.setAlpha(i10);
            }
            Drawable drawable4 = this.f35018e;
            if (drawable4 != null) {
                drawable4.setAlpha(i10);
            }
            Drawable drawable5 = this.f35029p;
            if (drawable5 != null) {
                drawable5.setAlpha(i10);
            }
            canvas.save();
            canvas.translate(this.f35019f, 0.0f);
        }
        if (this.f35031r != null && this.f35029p != null) {
            int iWidth = (int) (this.f35030q.width() - (this.f35029p.getIntrinsicWidth() * 0.05f));
            Drawable drawable6 = this.f35031r;
            drawable6.setBounds(0, 0, iWidth, drawable6.getIntrinsicHeight());
            this.f35031r.draw(canvas);
        }
        if (this.f35033t && (drawable2 = this.f35018e) != null && this.f35029p != null) {
            int intrinsicWidth = drawable2.getIntrinsicWidth();
            Drawable drawable7 = this.f35018e;
            drawable7.setBounds(0, 0, intrinsicWidth, drawable7.getIntrinsicHeight());
            canvas.save();
            canvas.translate(-intrinsicWidth, 0.0f);
            this.f35018e.draw(canvas);
            canvas.restore();
        }
        if (this.f35029p != null) {
            canvas.save();
            canvas.translate(this.f35030q.width() - getWidth(), 0.0f);
            this.f35029p.draw(canvas);
            canvas.restore();
        }
        if (!this.f35033t && Math.abs(this.f35015b - this.f35027n) < 1.0E-5f && (drawable = this.f35022i) != null) {
            int i11 = (int) (this.f35023j + (f10 * 0.2f * this.f35032s));
            this.f35023j = i11;
            if (i11 + drawable.getIntrinsicWidth() >= this.f35030q.width()) {
                this.f35023j = -this.f35022i.getIntrinsicWidth();
            }
            canvas.save();
            canvas.translate(this.f35023j, 0.0f);
            this.f35022i.draw(canvas);
            canvas.restore();
        }
        if (this.f35033t) {
            canvas.restore();
        }
    }

    public ProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35014a = new a();
        this.f35020g = 25L;
        this.f35021h = new Handler(Looper.getMainLooper());
        this.f35024k = false;
        this.f35027n = 0.95f;
        this.f35028o = false;
        this.f35030q = new Rect();
        a(context);
    }
}
