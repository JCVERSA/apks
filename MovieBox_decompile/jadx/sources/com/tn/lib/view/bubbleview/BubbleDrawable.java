package com.tn.lib.view.bubbleview;

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

public class BubbleDrawable extends Drawable {

    private RectF f40124a;

    private Path f40125b;

    private Path f40126c;

    private BitmapShader f40127d;

    private Paint f40128e;

    private Paint f40129f;

    private float f40130g;

    private int f40131h;

    private float f40132i;

    private float f40133j;

    private float f40134k;

    private float f40135l;

    private float f40136m;

    private float f40137n;

    private int f40138o;

    private Bitmap f40139p;

    private ArrowLocation f40140q;

    private BubbleType f40141r;

    private boolean f40142s;

    private int f40143t;

    float f40144u;

    float f40145v;

    float f40146w;

    float f40147x;

    int[] f40148y;

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
        VERTICAL(0),
        HORIZONTAL(1),
        TOP_LEFT_BOTTOM_RIGHT(2),
        TOP_RIGHT_BOTTOM_LEFT(3),
        BOTTOM_LEFT_TOP_RIGHT(4),
        BOTTOM_RIGHT_TOP_LEFT(5);

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

        static final int[] f40149a;

        static final int[] f40150b;

        static {
            int[] iArr = new int[BubbleType.values().length];
            f40150b = iArr;
            try {
                iArr[BubbleType.SHADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f40150b[BubbleType.COLOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f40150b[BubbleType.BITMAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[ArrowLocation.values().length];
            f40149a = iArr2;
            try {
                iArr2[ArrowLocation.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f40149a[ArrowLocation.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f40149a[ArrowLocation.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f40149a[ArrowLocation.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f40149a[ArrowLocation.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static class b {
        public static float A = 0.0f;
        public static int B = -1291845632;
        public static float C = 0.0f;

        public static float f40151u = 25.0f;

        public static float f40152v = 25.0f;

        public static float f40153w = 20.0f;

        public static float f40154x = 50.0f;

        public static int f40155y = -65536;

        public static int f40156z = 255;

        private RectF f40157a;

        private float f40158b = A;

        private int f40159c = B;

        private float f40160d;

        private float f40161e;

        private float f40162f;

        private float f40163g;

        private float f40164h;

        private float f40165i;

        private int f40166j;

        private int f40167k;

        private Bitmap f40168l;

        private BubbleType f40169m;

        private ArrowLocation f40170n;

        private boolean f40171o;

        float f40172p;

        float f40173q;

        float f40174r;

        float f40175s;

        int[] f40176t;

        public b() {
            float f10 = C;
            this.f40160d = f10;
            this.f40161e = f10;
            this.f40162f = f40151u;
            this.f40163g = f40153w;
            this.f40164h = f40152v;
            this.f40165i = f40154x;
            this.f40166j = f40155y;
            this.f40167k = f40156z;
            this.f40169m = BubbleType.COLOR;
            this.f40170n = ArrowLocation.LEFT;
        }

        public BubbleDrawable A() {
            if (this.f40157a != null) {
                return new BubbleDrawable(this);
            }
            throw new IllegalArgumentException("BubbleDrawable Rect can not be null");
        }

        public b B(RectF rectF) {
            this.f40157a = rectF;
            return this;
        }

        public b C(int i10) {
            this.f40159c = i10;
            return this;
        }

        public b D(float f10) {
            this.f40160d = f10;
            return this;
        }

        public b E(float f10) {
            this.f40161e = f10;
            return this;
        }

        public b F(float f10) {
            this.f40158b = f10;
            return this;
        }

        public b p(int i10) {
            this.f40167k = i10;
            return this;
        }

        public b q(float f10) {
            this.f40163g = f10 * 2.0f;
            return this;
        }

        public b r(boolean z10) {
            this.f40171o = z10;
            return this;
        }

        public b s(float f10) {
            this.f40164h = f10;
            return this;
        }

        public b t(ArrowLocation arrowLocation) {
            this.f40170n = arrowLocation;
            return this;
        }

        public b u(float f10) {
            this.f40165i = f10;
            return this;
        }

        public b v(float f10) {
            this.f40162f = f10;
            return this;
        }

        public b w(Bitmap bitmap) {
            this.f40168l = bitmap;
            z(BubbleType.BITMAP);
            return this;
        }

        public b x(int i10) {
            this.f40166j = i10;
            z(BubbleType.COLOR);
            return this;
        }

        public b y(float f10, float f11, float f12, float f13, int[] iArr) {
            this.f40172p = f10;
            this.f40173q = f11;
            this.f40174r = f12;
            this.f40175s = f13;
            this.f40176t = iArr;
            z(BubbleType.SHADER);
            return this;
        }

        public b z(BubbleType bubbleType) {
            this.f40169m = bubbleType;
            return this;
        }
    }

    private void a(Canvas canvas) {
        int i10 = a.f40150b[this.f40141r.ordinal()];
        if (i10 == 1) {
            this.f40128e.setShader(new LinearGradient(this.f40144u, this.f40145v, this.f40146w, this.f40147x, this.f40148y, (float[]) null, Shader.TileMode.CLAMP));
        } else if (i10 == 2) {
            this.f40128e.setColor(this.f40138o);
        } else if (i10 == 3) {
            if (this.f40139p == null) {
                return;
            }
            if (this.f40127d == null) {
                Bitmap bitmap = this.f40139p;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.f40127d = new BitmapShader(bitmap, tileMode, tileMode);
            }
            this.f40128e.setShader(this.f40127d);
            g();
        }
        e(this.f40140q, this.f40125b);
        if (this.f40130g > 0.0f) {
            this.f40129f.setColor(0);
            this.f40129f.setAlpha(Math.abs(this.f40143t));
            this.f40129f.setAntiAlias(true);
            this.f40129f.setShadowLayer(this.f40130g, this.f40132i, this.f40133j, this.f40131h);
            this.f40129f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
            canvas.drawPath(this.f40125b, this.f40129f);
        }
        canvas.drawPath(this.f40125b, this.f40128e);
    }

    private void b(RectF rectF, Path path) {
        if (this.f40142s) {
            this.f40137n = ((rectF.right - rectF.left) / 2.0f) - (this.f40134k / 2.0f);
        }
        path.moveTo(rectF.left + this.f40135l, rectF.top);
        path.lineTo(rectF.width() - this.f40135l, rectF.top);
        float f10 = rectF.right;
        float f11 = this.f40135l;
        float f12 = rectF.top;
        path.arcTo(new RectF(f10 - f11, f12, f10, f11 + f12), 270.0f, 90.0f);
        path.lineTo(rectF.right, (rectF.bottom - this.f40136m) - this.f40135l);
        float f13 = rectF.right;
        float f14 = this.f40135l;
        float f15 = rectF.bottom;
        float f16 = this.f40136m;
        path.arcTo(new RectF(f13 - f14, (f15 - f14) - f16, f13, f15 - f16), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f40134k + this.f40137n, rectF.bottom - this.f40136m);
        path.lineTo(rectF.left + this.f40137n + (this.f40134k / 2.0f), rectF.bottom);
        path.lineTo(rectF.left + this.f40137n, rectF.bottom - this.f40136m);
        path.lineTo(rectF.left + Math.min(this.f40135l, this.f40137n), rectF.bottom - this.f40136m);
        float f17 = rectF.left;
        float f18 = rectF.bottom;
        float f19 = this.f40135l;
        float f20 = this.f40136m;
        path.arcTo(new RectF(f17, (f18 - f19) - f20, f19 + f17, f18 - f20), 90.0f, 90.0f);
        path.lineTo(rectF.left, rectF.top + this.f40135l);
        float f21 = rectF.left;
        float f22 = rectF.top;
        float f23 = this.f40135l;
        path.arcTo(new RectF(f21, f22, f23 + f21, f23 + f22), 180.0f, 90.0f);
        path.close();
    }

    private void c(RectF rectF, Path path) {
        if (this.f40142s) {
            this.f40137n = ((rectF.bottom - rectF.top) / 2.0f) - (this.f40134k / 2.0f);
        }
        path.moveTo(this.f40134k + rectF.left + this.f40135l, rectF.top);
        path.lineTo(rectF.width() - this.f40135l, rectF.top);
        float f10 = rectF.right;
        float f11 = this.f40135l;
        float f12 = rectF.top;
        path.arcTo(new RectF(f10 - f11, f12, f10, f11 + f12), 270.0f, 90.0f);
        path.lineTo(rectF.right, rectF.bottom - this.f40135l);
        float f13 = rectF.right;
        float f14 = this.f40135l;
        float f15 = rectF.bottom;
        path.arcTo(new RectF(f13 - f14, f15 - f14, f13, f15), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f40134k + this.f40135l, rectF.bottom);
        float f16 = rectF.left;
        float f17 = this.f40134k;
        float f18 = rectF.bottom;
        float f19 = this.f40135l;
        path.arcTo(new RectF(f16 + f17, f18 - f19, f19 + f16 + f17, f18), 90.0f, 90.0f);
        path.lineTo(rectF.left + this.f40134k, this.f40136m + this.f40137n);
        path.lineTo(rectF.left, this.f40137n + (this.f40136m / 2.0f));
        path.lineTo(rectF.left + this.f40134k, this.f40137n);
        path.lineTo(rectF.left + this.f40134k, rectF.top + this.f40135l);
        float f20 = rectF.left;
        float f21 = this.f40134k;
        float f22 = rectF.top;
        float f23 = this.f40135l;
        path.arcTo(new RectF(f20 + f21, f22, f20 + f23 + f21, f23 + f22), 180.0f, 90.0f);
        path.close();
    }

    private void d(RectF rectF, Path path) {
        if (this.f40142s) {
            this.f40137n = ((rectF.right - rectF.left) / 2.0f) - (this.f40134k / 2.0f);
        }
        path.moveTo(rectF.left + this.f40135l, rectF.top);
        path.lineTo(rectF.width() - this.f40135l, rectF.top);
        float f10 = rectF.right;
        float f11 = this.f40135l;
        float f12 = rectF.top;
        path.arcTo(new RectF(f10 - f11, f12, f10, f11 + f12), 270.0f, 90.0f);
        path.lineTo(rectF.right, rectF.bottom - this.f40135l);
        float f13 = rectF.right;
        float f14 = this.f40135l;
        float f15 = rectF.bottom;
        path.arcTo(new RectF(f13 - f14, f15 - f14, f13, f15), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f40135l, rectF.bottom);
        float f16 = rectF.left;
        float f17 = rectF.bottom;
        float f18 = this.f40135l;
        path.arcTo(new RectF(f16, f17 - f18, f18 + f16, f17), 90.0f, 90.0f);
        path.lineTo(rectF.left, rectF.top + this.f40135l);
        float f19 = rectF.left;
        float f20 = rectF.top;
        float f21 = this.f40135l;
        path.arcTo(new RectF(f19, f20, f21 + f19, f21 + f20), 180.0f, 90.0f);
        path.close();
    }

    private void e(ArrowLocation arrowLocation, Path path) {
        int i10 = a.f40149a[arrowLocation.ordinal()];
        if (i10 == 1) {
            c(this.f40124a, path);
            return;
        }
        if (i10 == 2) {
            f(this.f40124a, path);
            return;
        }
        if (i10 == 3) {
            h(this.f40124a, path);
        } else if (i10 == 4) {
            b(this.f40124a, path);
        } else {
            if (i10 != 5) {
                return;
            }
            d(this.f40124a, path);
        }
    }

    private void f(RectF rectF, Path path) {
        if (this.f40142s) {
            this.f40137n = ((rectF.bottom - rectF.top) / 2.0f) - (this.f40134k / 2.0f);
        }
        path.moveTo(rectF.left + this.f40135l, rectF.top);
        path.lineTo((rectF.width() - this.f40135l) - this.f40134k, rectF.top);
        float f10 = rectF.right;
        float f11 = this.f40135l;
        float f12 = this.f40134k;
        float f13 = rectF.top;
        path.arcTo(new RectF((f10 - f11) - f12, f13, f10 - f12, f11 + f13), 270.0f, 90.0f);
        path.lineTo(rectF.right - this.f40134k, this.f40137n);
        path.lineTo(rectF.right, this.f40137n + (this.f40136m / 2.0f));
        path.lineTo(rectF.right - this.f40134k, this.f40137n + this.f40136m);
        path.lineTo(rectF.right - this.f40134k, rectF.bottom - this.f40135l);
        float f14 = rectF.right;
        float f15 = this.f40135l;
        float f16 = this.f40134k;
        float f17 = rectF.bottom;
        path.arcTo(new RectF((f14 - f15) - f16, f17 - f15, f14 - f16, f17), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f40134k, rectF.bottom);
        float f18 = rectF.left;
        float f19 = rectF.bottom;
        float f20 = this.f40135l;
        path.arcTo(new RectF(f18, f19 - f20, f20 + f18, f19), 90.0f, 90.0f);
        float f21 = rectF.left;
        float f22 = rectF.top;
        float f23 = this.f40135l;
        path.arcTo(new RectF(f21, f22, f23 + f21, f23 + f22), 180.0f, 90.0f);
        path.close();
    }

    private void g() {
        Matrix matrix = new Matrix();
        matrix.set(null);
        matrix.postScale(getIntrinsicWidth() / this.f40139p.getWidth(), getIntrinsicHeight() / this.f40139p.getHeight());
        RectF rectF = this.f40124a;
        matrix.postTranslate(rectF.left, rectF.top);
        this.f40127d.setLocalMatrix(matrix);
    }

    private void h(RectF rectF, Path path) {
        if (this.f40142s) {
            this.f40137n = ((rectF.right - rectF.left) / 2.0f) - (this.f40134k / 2.0f);
        }
        path.moveTo(rectF.left + Math.min(this.f40137n, this.f40135l), rectF.top + this.f40136m);
        path.lineTo(rectF.left + this.f40137n, rectF.top + this.f40136m);
        path.lineTo(rectF.left + (this.f40134k / 2.0f) + this.f40137n, rectF.top);
        path.lineTo(rectF.left + this.f40134k + this.f40137n, rectF.top + this.f40136m);
        path.lineTo(rectF.right - this.f40135l, rectF.top + this.f40136m);
        float f10 = rectF.right;
        float f11 = this.f40135l;
        float f12 = rectF.top;
        float f13 = this.f40136m;
        path.arcTo(new RectF(f10 - f11, f12 + f13, f10, f11 + f12 + f13), 270.0f, 90.0f);
        path.lineTo(rectF.right, rectF.bottom - this.f40135l);
        float f14 = rectF.right;
        float f15 = this.f40135l;
        float f16 = rectF.bottom;
        path.arcTo(new RectF(f14 - f15, f16 - f15, f14, f16), 0.0f, 90.0f);
        path.lineTo(rectF.left + this.f40135l, rectF.bottom);
        float f17 = rectF.left;
        float f18 = rectF.bottom;
        float f19 = this.f40135l;
        path.arcTo(new RectF(f17, f18 - f19, f19 + f17, f18), 90.0f, 90.0f);
        path.lineTo(rectF.left, rectF.top + this.f40136m + this.f40135l);
        float f20 = rectF.left;
        float f21 = rectF.top;
        float f22 = this.f40136m;
        float f23 = this.f40135l;
        path.arcTo(new RectF(f20, f21 + f22, f23 + f20, f23 + f21 + f22), 180.0f, 90.0f);
        path.close();
    }

    @Override
    public void draw(Canvas canvas) {
        a(canvas);
    }

    @Override
    public int getIntrinsicHeight() {
        return (int) this.f40124a.height();
    }

    @Override
    public int getIntrinsicWidth() {
        return (int) this.f40124a.width();
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
        this.f40143t = i10;
        this.f40128e.setAlpha(i10);
        this.f40129f.setAlpha(i10);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.f40128e.setColorFilter(colorFilter);
        this.f40129f.setColorFilter(colorFilter);
    }

    private BubbleDrawable(b bVar) {
        this.f40125b = new Path();
        this.f40126c = new Path();
        this.f40128e = new Paint(1);
        this.f40129f = new Paint();
        this.f40143t = 255;
        this.f40130g = bVar.f40158b;
        this.f40131h = bVar.f40159c;
        this.f40132i = bVar.f40160d;
        this.f40133j = bVar.f40161e;
        this.f40124a = bVar.f40157a;
        this.f40135l = bVar.f40163g;
        this.f40143t = bVar.f40167k;
        this.f40136m = bVar.f40164h;
        this.f40134k = bVar.f40162f;
        this.f40137n = bVar.f40165i;
        this.f40138o = bVar.f40166j;
        this.f40139p = bVar.f40168l;
        this.f40140q = bVar.f40170n;
        this.f40141r = bVar.f40169m;
        this.f40142s = bVar.f40171o;
        this.f40144u = bVar.f40172p;
        this.f40145v = bVar.f40173q;
        this.f40146w = bVar.f40174r;
        this.f40147x = bVar.f40175s;
        this.f40148y = bVar.f40176t;
    }
}
