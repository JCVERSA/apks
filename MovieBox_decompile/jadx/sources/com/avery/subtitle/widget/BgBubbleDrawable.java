package com.avery.subtitle.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

public class BgBubbleDrawable extends Drawable {

    private RectF f19267a;

    private Path f19268b;

    private Path f19269c;

    private BitmapShader f19270d;

    private Paint f19271e;

    private Paint f19272f;

    private float f19273g;

    private int f19274h;

    private float f19275i;

    private float f19276j;

    private float f19277k;

    private float f19278l;

    private float f19279m;

    private float f19280n;

    private int f19281o;

    private Bitmap f19282p;

    private ArrowLocation f19283q;

    private BubbleType f19284r;

    private boolean f19285s;

    private int f19286t;

    float f19287u;

    float f19288v;

    float f19289w;

    float f19290x;

    int[] f19291y;

    public enum ArrowLocation {
        LEFT(0),
        RIGHT(1),
        TOP(2),
        BOTTOM(3),
        NONE(4);

        private int mValue;

        ArrowLocation(int i10) {
            this.mValue = i10;
        }

        public static ArrowLocation getDefault() {
            return LEFT;
        }

        public static ArrowLocation mapIntToValue(int i10) {
            for (ArrowLocation arrowLocation : values()) {
                if (i10 == arrowLocation.getIntValue()) {
                    return arrowLocation;
                }
            }
            return getDefault();
        }

        public int getIntValue() {
            return this.mValue;
        }
    }

    public enum BubbleType {
        COLOR,
        BITMAP,
        SHADER
    }

    public enum GradientDirection {
        HORIZONTAL(1),
        VERTICAL(0);

        private int mValue;

        GradientDirection(int i10) {
            this.mValue = i10;
        }

        public static GradientDirection getDefault() {
            return VERTICAL;
        }

        public static GradientDirection mapIntToValue(int i10) {
            for (GradientDirection gradientDirection : values()) {
                if (i10 == gradientDirection.getIntValue()) {
                    return gradientDirection;
                }
            }
            return getDefault();
        }

        public int getIntValue() {
            return this.mValue;
        }
    }

    static class a {

        static final int[] f19292a;

        static final int[] f19293b;

        static {
            int[] iArr = new int[BubbleType.values().length];
            f19293b = iArr;
            try {
                iArr[BubbleType.SHADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19293b[BubbleType.COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19293b[BubbleType.BITMAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[ArrowLocation.values().length];
            f19292a = iArr2;
            try {
                iArr2[ArrowLocation.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19292a[ArrowLocation.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19292a[ArrowLocation.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19292a[ArrowLocation.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19292a[ArrowLocation.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static class b {
        public static float A = 0.0f;
        public static int B = -1291845632;
        public static float C = 0.0f;

        public static float f19294u = 25.0f;

        public static float f19295v = 25.0f;

        public static float f19296w = 20.0f;

        public static float f19297x = 50.0f;

        public static int f19298y = -65536;

        public static int f19299z = 255;

        private RectF f19300a;

        private float f19301b = A;

        private int f19302c = B;

        private float f19303d;

        private float f19304e;

        private float f19305f;

        private float f19306g;

        private float f19307h;

        private float f19308i;

        private int f19309j;

        private int f19310k;

        private Bitmap f19311l;

        private BubbleType f19312m;

        private ArrowLocation f19313n;

        private boolean f19314o;

        float f19315p;

        float f19316q;

        float f19317r;

        float f19318s;

        int[] f19319t;

        public b() {
            float f10 = C;
            this.f19303d = f10;
            this.f19304e = f10;
            this.f19305f = f19294u;
            this.f19306g = f19296w;
            this.f19307h = f19295v;
            this.f19308i = f19297x;
            this.f19309j = f19298y;
            this.f19310k = f19299z;
            this.f19312m = BubbleType.COLOR;
            this.f19313n = ArrowLocation.LEFT;
        }

        public b p(float f10) {
            this.f19306g = f10 * 2.0f;
            return this;
        }

        public b q(ArrowLocation arrowLocation) {
            this.f19313n = arrowLocation;
            return this;
        }

        public b r(int i10) {
            this.f19309j = i10;
            s(BubbleType.COLOR);
            return this;
        }

        public b s(BubbleType bubbleType) {
            this.f19312m = bubbleType;
            return this;
        }

        public BgBubbleDrawable t() {
            if (this.f19300a != null) {
                return new BgBubbleDrawable(this);
            }
            throw new IllegalArgumentException("BubbleDrawable Rect can not be null");
        }

        public b u(RectF rectF) {
            this.f19300a = rectF;
            return this;
        }
    }

    private void a(Canvas canvas) {
        int i10 = a.f19293b[this.f19284r.ordinal()];
        if (i10 == 1) {
            this.f19271e.setShader(new LinearGradient(this.f19287u, this.f19288v, this.f19289w, this.f19290x, this.f19291y, (float[]) null, Shader.TileMode.CLAMP));
        } else if (i10 == 2) {
            this.f19271e.setColor(this.f19281o);
        } else if (i10 == 3) {
            if (this.f19282p == null) {
                return;
            }
            if (this.f19270d == null) {
                Bitmap bitmap = this.f19282p;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.f19270d = new BitmapShader(bitmap, tileMode, tileMode);
            }
            this.f19271e.setShader(this.f19270d);
            g();
        }
        e(this.f19283q, this.f19268b);
        this.f19271e.setAlpha(Math.abs(this.f19286t));
        if (this.f19273g > 0.0f) {
            this.f19272f.setColor(0);
            this.f19272f.setAlpha(Math.abs(this.f19286t));
            this.f19272f.setAntiAlias(true);
            this.f19272f.setShadowLayer(this.f19273g, this.f19275i, this.f19276j, this.f19274h);
            this.f19272f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
            canvas.drawPath(this.f19268b, this.f19272f);
        }
        canvas.drawPath(this.f19268b, this.f19271e);
    }

    private void b(RectF rectF, Path path) {
        if (this.f19285s) {
            this.f19280n = ((rectF.right - rectF.left) / 2.0f) - (this.f19277k / 2.0f);
        }
        path.moveTo(rectF.left + this.f19278l, rectF.top);
        path.lineTo(rectF.width() - this.f19278l, rectF.top);
        float f10 = rectF.right;
        float f11 = this.f19278l;
        float f12 = rectF.top;
        path.arcTo(new RectF(f10 - f11, f12, f10, f11 + f12), 270.0f, 90.0f);
        path.lineTo(rectF.right, (rectF.bottom - this.f19279m) - this.f19278l);
        float f13 = rectF.right;
        float f14 = this.f19278l;
        float f15 = rectF.bottom;
        float f16 = this.f19279m;
        path.arcTo(new RectF(f13 - f14, (f15 - f14) - f16, f13, f15 - f16), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f19277k + this.f19280n, rectF.bottom - this.f19279m);
        path.lineTo(rectF.left + this.f19280n + (this.f19277k / 2.0f), rectF.bottom);
        path.lineTo(rectF.left + this.f19280n, rectF.bottom - this.f19279m);
        path.lineTo(rectF.left + Math.min(this.f19278l, this.f19280n), rectF.bottom - this.f19279m);
        float f17 = rectF.left;
        float f18 = rectF.bottom;
        float f19 = this.f19278l;
        float f20 = this.f19279m;
        path.arcTo(new RectF(f17, (f18 - f19) - f20, f19 + f17, f18 - f20), 90.0f, 90.0f);
        path.lineTo(rectF.left, rectF.top + this.f19278l);
        float f21 = rectF.left;
        float f22 = rectF.top;
        float f23 = this.f19278l;
        path.arcTo(new RectF(f21, f22, f23 + f21, f23 + f22), 180.0f, 90.0f);
        path.close();
    }

    private void c(RectF rectF, Path path) {
        if (this.f19285s) {
            this.f19280n = ((rectF.bottom - rectF.top) / 2.0f) - (this.f19277k / 2.0f);
        }
        path.moveTo(this.f19277k + rectF.left + this.f19278l, rectF.top);
        path.lineTo(rectF.width() - this.f19278l, rectF.top);
        float f10 = rectF.right;
        float f11 = this.f19278l;
        float f12 = rectF.top;
        path.arcTo(new RectF(f10 - f11, f12, f10, f11 + f12), 270.0f, 90.0f);
        path.lineTo(rectF.right, rectF.bottom - this.f19278l);
        float f13 = rectF.right;
        float f14 = this.f19278l;
        float f15 = rectF.bottom;
        path.arcTo(new RectF(f13 - f14, f15 - f14, f13, f15), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f19277k + this.f19278l, rectF.bottom);
        float f16 = rectF.left;
        float f17 = this.f19277k;
        float f18 = rectF.bottom;
        float f19 = this.f19278l;
        path.arcTo(new RectF(f16 + f17, f18 - f19, f19 + f16 + f17, f18), 90.0f, 90.0f);
        path.lineTo(rectF.left + this.f19277k, this.f19279m + this.f19280n);
        path.lineTo(rectF.left, this.f19280n + (this.f19279m / 2.0f));
        path.lineTo(rectF.left + this.f19277k, this.f19280n);
        path.lineTo(rectF.left + this.f19277k, rectF.top + this.f19278l);
        float f20 = rectF.left;
        float f21 = this.f19277k;
        float f22 = rectF.top;
        float f23 = this.f19278l;
        path.arcTo(new RectF(f20 + f21, f22, f20 + f23 + f21, f23 + f22), 180.0f, 90.0f);
        path.close();
    }

    private void d(RectF rectF, Path path) {
        if (this.f19285s) {
            this.f19280n = ((rectF.right - rectF.left) / 2.0f) - (this.f19277k / 2.0f);
        }
        path.moveTo(rectF.left + this.f19278l, rectF.top);
        path.lineTo(rectF.width() - this.f19278l, rectF.top);
        float f10 = rectF.right;
        float f11 = this.f19278l;
        float f12 = rectF.top;
        path.arcTo(new RectF(f10 - f11, f12, f10, f11 + f12), 270.0f, 90.0f);
        path.lineTo(rectF.right, rectF.bottom - this.f19278l);
        float f13 = rectF.right;
        float f14 = this.f19278l;
        float f15 = rectF.bottom;
        path.arcTo(new RectF(f13 - f14, f15 - f14, f13, f15), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f19278l, rectF.bottom);
        float f16 = rectF.left;
        float f17 = rectF.bottom;
        float f18 = this.f19278l;
        path.arcTo(new RectF(f16, f17 - f18, f18 + f16, f17), 90.0f, 90.0f);
        path.lineTo(rectF.left, rectF.top + this.f19278l);
        float f19 = rectF.left;
        float f20 = rectF.top;
        float f21 = this.f19278l;
        path.arcTo(new RectF(f19, f20, f21 + f19, f21 + f20), 180.0f, 90.0f);
        path.close();
    }

    private void e(ArrowLocation arrowLocation, Path path) {
        int i10 = a.f19292a[arrowLocation.ordinal()];
        if (i10 == 1) {
            c(this.f19267a, path);
            return;
        }
        if (i10 == 2) {
            f(this.f19267a, path);
            return;
        }
        if (i10 == 3) {
            h(this.f19267a, path);
        } else if (i10 == 4) {
            b(this.f19267a, path);
        } else {
            if (i10 != 5) {
                return;
            }
            d(this.f19267a, path);
        }
    }

    private void f(RectF rectF, Path path) {
        if (this.f19285s) {
            this.f19280n = ((rectF.bottom - rectF.top) / 2.0f) - (this.f19277k / 2.0f);
        }
        path.moveTo(rectF.left + this.f19278l, rectF.top);
        path.lineTo((rectF.width() - this.f19278l) - this.f19277k, rectF.top);
        float f10 = rectF.right;
        float f11 = this.f19278l;
        float f12 = this.f19277k;
        float f13 = rectF.top;
        path.arcTo(new RectF((f10 - f11) - f12, f13, f10 - f12, f11 + f13), 270.0f, 90.0f);
        path.lineTo(rectF.right - this.f19277k, this.f19280n);
        path.lineTo(rectF.right, this.f19280n + (this.f19279m / 2.0f));
        path.lineTo(rectF.right - this.f19277k, this.f19280n + this.f19279m);
        path.lineTo(rectF.right - this.f19277k, rectF.bottom - this.f19278l);
        float f14 = rectF.right;
        float f15 = this.f19278l;
        float f16 = this.f19277k;
        float f17 = rectF.bottom;
        path.arcTo(new RectF((f14 - f15) - f16, f17 - f15, f14 - f16, f17), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f19277k, rectF.bottom);
        float f18 = rectF.left;
        float f19 = rectF.bottom;
        float f20 = this.f19278l;
        path.arcTo(new RectF(f18, f19 - f20, f20 + f18, f19), 90.0f, 90.0f);
        float f21 = rectF.left;
        float f22 = rectF.top;
        float f23 = this.f19278l;
        path.arcTo(new RectF(f21, f22, f23 + f21, f23 + f22), 180.0f, 90.0f);
        path.close();
    }

    private void g() {
        Matrix matrix = new Matrix();
        matrix.set(null);
        matrix.postScale(getIntrinsicWidth() / this.f19282p.getWidth(), getIntrinsicHeight() / this.f19282p.getHeight());
        RectF rectF = this.f19267a;
        matrix.postTranslate(rectF.left, rectF.top);
        this.f19270d.setLocalMatrix(matrix);
    }

    private void h(RectF rectF, Path path) {
        if (this.f19285s) {
            this.f19280n = ((rectF.right - rectF.left) / 2.0f) - (this.f19277k / 2.0f);
        }
        path.moveTo(rectF.left + Math.min(this.f19280n, this.f19278l), rectF.top + this.f19279m);
        path.lineTo(rectF.left + this.f19280n, rectF.top + this.f19279m);
        path.lineTo(rectF.left + (this.f19277k / 2.0f) + this.f19280n, rectF.top);
        path.lineTo(rectF.left + this.f19277k + this.f19280n, rectF.top + this.f19279m);
        path.lineTo(rectF.right - this.f19278l, rectF.top + this.f19279m);
        float f10 = rectF.right;
        float f11 = this.f19278l;
        float f12 = rectF.top;
        float f13 = this.f19279m;
        path.arcTo(new RectF(f10 - f11, f12 + f13, f10, f11 + f12 + f13), 270.0f, 90.0f);
        path.lineTo(rectF.right, rectF.bottom - this.f19278l);
        float f14 = rectF.right;
        float f15 = this.f19278l;
        float f16 = rectF.bottom;
        path.arcTo(new RectF(f14 - f15, f16 - f15, f14, f16), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f19278l, rectF.bottom);
        float f17 = rectF.left;
        float f18 = rectF.bottom;
        float f19 = this.f19278l;
        path.arcTo(new RectF(f17, f18 - f19, f19 + f17, f18), 90.0f, 90.0f);
        path.lineTo(rectF.left, rectF.top + this.f19279m + this.f19278l);
        float f20 = rectF.left;
        float f21 = rectF.top;
        float f22 = this.f19279m;
        float f23 = this.f19278l;
        path.arcTo(new RectF(f20, f21 + f22, f23 + f20, f23 + f21 + f22), 180.0f, 90.0f);
        path.close();
    }

    @Override
    public void draw(Canvas canvas) {
        a(canvas);
    }

    @Override
    public int getIntrinsicHeight() {
        return (int) this.f19267a.height();
    }

    @Override
    public int getIntrinsicWidth() {
        return (int) this.f19267a.width();
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
    }

    @Override
    public void setAlpha(int i10) {
        this.f19286t = i10;
        this.f19271e.setAlpha(i10);
        this.f19272f.setAlpha(i10);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.f19271e.setColorFilter(colorFilter);
        this.f19272f.setColorFilter(colorFilter);
    }

    private BgBubbleDrawable(b bVar) {
        this.f19268b = new Path();
        this.f19269c = new Path();
        this.f19271e = new Paint(1);
        this.f19272f = new Paint();
        this.f19286t = 255;
        this.f19273g = bVar.f19301b;
        this.f19274h = bVar.f19302c;
        this.f19275i = bVar.f19303d;
        this.f19276j = bVar.f19304e;
        this.f19267a = bVar.f19300a;
        this.f19278l = bVar.f19306g;
        this.f19286t = bVar.f19310k;
        this.f19279m = bVar.f19307h;
        this.f19277k = bVar.f19305f;
        this.f19280n = bVar.f19308i;
        this.f19281o = bVar.f19309j;
        this.f19282p = bVar.f19311l;
        this.f19283q = bVar.f19313n;
        this.f19284r = bVar.f19312m;
        this.f19285s = bVar.f19314o;
        this.f19287u = bVar.f19315p;
        this.f19288v = bVar.f19316q;
        this.f19289w = bVar.f19317r;
        this.f19290x = bVar.f19318s;
        this.f19291y = bVar.f19319t;
    }
}
