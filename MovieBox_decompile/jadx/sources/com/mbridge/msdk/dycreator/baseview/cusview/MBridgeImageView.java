package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.tools.o0;

public class MBridgeImageView extends ImageView {

    private Xfermode f33779a;

    private int f33780b;

    private int f33781c;

    private int f33782d;

    private int f33783e;

    private int f33784f;

    private int f33785g;

    private int f33786h;

    private int f33787i;

    private int f33788j;

    private float[] f33789k;

    private float[] f33790l;

    private RectF f33791m;

    private RectF f33792n;

    private boolean f33793o;

    private boolean f33794p;

    private Path f33795q;

    private Paint f33796r;

    public MBridgeImageView(Context context) {
        this(context, null);
    }

    private void a(Canvas canvas) {
        a(canvas, this.f33787i, this.f33788j, this.f33792n, this.f33789k);
    }

    private void b() {
        int i10;
        int i11;
        int i12;
        try {
            if (this.f33789k == null || this.f33790l == null) {
                return;
            }
            int i13 = 0;
            while (true) {
                i10 = 2;
                if (i13 >= 2) {
                    break;
                }
                float[] fArr = this.f33789k;
                float f10 = this.f33783e;
                fArr[i13] = f10;
                this.f33790l[i13] = f10 - (this.f33787i / 2.0f);
                i13++;
            }
            while (true) {
                i11 = 4;
                if (i10 >= 4) {
                    break;
                }
                float[] fArr2 = this.f33789k;
                float f11 = this.f33784f;
                fArr2[i10] = f11;
                this.f33790l[i10] = f11 - (this.f33787i / 2.0f);
                i10++;
            }
            while (true) {
                if (i11 >= 6) {
                    break;
                }
                float[] fArr3 = this.f33789k;
                float f12 = this.f33785g;
                fArr3[i11] = f12;
                this.f33790l[i11] = f12 - (this.f33787i / 2.0f);
                i11++;
            }
            for (i12 = 6; i12 < 8; i12++) {
                float[] fArr4 = this.f33789k;
                float f13 = this.f33786h;
                fArr4[i12] = f13;
                this.f33790l[i12] = f13 - (this.f33787i / 2.0f);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void c() {
        RectF rectF = this.f33792n;
        if (rectF != null) {
            float f10 = this.f33787i / 2.0f;
            rectF.set(f10, f10, this.f33780b - f10, this.f33781c - f10);
        }
    }

    private void d() {
        RectF rectF = this.f33791m;
        if (rectF != null) {
            rectF.set(0.0f, 0.0f, this.f33780b, this.f33781c);
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        if (canvas == null) {
            return;
        }
        try {
            canvas.saveLayer(this.f33791m, null, 31);
            int i10 = this.f33780b;
            int i11 = this.f33787i * 2;
            float f10 = (i10 - i11) * 1.0f;
            float f11 = i10;
            int i12 = this.f33781c;
            float f12 = i12;
            canvas.scale(f10 / f11, ((i12 - i11) * 1.0f) / f12, f11 / 2.0f, f12 / 2.0f);
            super.onDraw(canvas);
            Paint paint = this.f33796r;
            if (paint != null) {
                paint.reset();
                this.f33796r.setAntiAlias(true);
                this.f33796r.setStyle(Paint.Style.FILL);
                this.f33796r.setXfermode(this.f33779a);
            }
            Path path = this.f33795q;
            if (path != null) {
                path.reset();
                this.f33795q.addRoundRect(this.f33791m, this.f33790l, Path.Direction.CCW);
            }
            canvas.drawPath(this.f33795q, this.f33796r);
            Paint paint2 = this.f33796r;
            if (paint2 != null) {
                paint2.setXfermode(null);
            }
            canvas.restore();
            if (this.f33793o) {
                a(canvas);
            }
        } catch (Exception e10) {
            o0.a("MBridgeImageView", e10.getMessage());
        }
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f33780b = i10;
        this.f33781c = i11;
        if (this.f33794p) {
            b();
        } else {
            a();
        }
        c();
        d();
    }

    public void setBorder(int i10, int i11, int i12) {
        this.f33793o = true;
        this.f33787i = i11;
        this.f33788j = i12;
        this.f33782d = i10;
    }

    public void setCornerRadius(int i10) {
        this.f33782d = i10;
    }

    public void setCustomBorder(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f33793o = true;
        this.f33794p = true;
        this.f33787i = i14;
        this.f33788j = i15;
        this.f33783e = i10;
        this.f33785g = i12;
        this.f33784f = i11;
        this.f33786h = i13;
    }

    public MBridgeImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a(Canvas canvas, int i10, int i11, RectF rectF, float[] fArr) {
        try {
            a(i10, i11);
            Path path = this.f33795q;
            if (path != null) {
                path.addRoundRect(rectF, fArr, Path.Direction.CCW);
            }
            if (canvas != null) {
                canvas.drawPath(this.f33795q, this.f33796r);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public MBridgeImageView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33795q = new Path();
        this.f33796r = new Paint();
        this.f33789k = new float[8];
        this.f33790l = new float[8];
        this.f33792n = new RectF();
        this.f33791m = new RectF();
        this.f33779a = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
    }

    private void a(int i10, int i11) {
        Path path = this.f33795q;
        if (path != null) {
            path.reset();
        }
        Paint paint = this.f33796r;
        if (paint != null) {
            paint.setStrokeWidth(i10);
            this.f33796r.setColor(i11);
            this.f33796r.setStyle(Paint.Style.STROKE);
        }
    }

    private void a() {
        if (this.f33789k == null || this.f33790l == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            try {
                float[] fArr = this.f33789k;
                if (i10 >= fArr.length) {
                    return;
                }
                float f10 = this.f33782d;
                fArr[i10] = f10;
                this.f33790l[i10] = f10 - (this.f33787i / 2.0f);
                i10++;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }
}
