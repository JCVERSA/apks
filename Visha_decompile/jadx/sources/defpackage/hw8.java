package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

public final class hw8 extends Drawable {
    public final a a;
    public final Paint b;
    public final Paint c;
    public final float d;
    public final float e;
    public final float f;
    public final float g;
    public final RectF h;

    public static final class a {
        public final float a;
        public final float b;
        public final int c;
        public final float d;
        public final Integer e;
        public final Float f;

        public a(float f, float f2, int i, float f3, Integer num, Float f4) {
            this.a = f;
            this.b = f2;
            this.c = i;
            this.d = f3;
            this.e = num;
            this.f = f4;
        }

        public final int a() {
            return this.c;
        }

        public final float b() {
            return this.b;
        }

        public final float c() {
            return this.d;
        }

        public final Integer d() {
            return this.e;
        }

        public final Float e() {
            return this.f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Float.compare(this.a, aVar.a) == 0 && Float.compare(this.b, aVar.b) == 0 && this.c == aVar.c && Float.compare(this.d, aVar.d) == 0 && y45.e(this.e, aVar.e) && y45.e(this.f, aVar.f);
        }

        public final float f() {
            return this.a;
        }

        public int hashCode() {
            int iHashCode = ((((((Float.hashCode(this.a) * 31) + Float.hashCode(this.b)) * 31) + Integer.hashCode(this.c)) * 31) + Float.hashCode(this.d)) * 31;
            Integer num = this.e;
            int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
            Float f = this.f;
            return iHashCode2 + (f != null ? f.hashCode() : 0);
        }

        public String toString() {
            return "Params(width=" + this.a + ", height=" + this.b + ", color=" + this.c + ", radius=" + this.d + ", strokeColor=" + this.e + ", strokeWidth=" + this.f + ')';
        }
    }

    public hw8(a aVar) {
        y45.j(aVar, "params");
        this.a = aVar;
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(aVar.a());
        this.b = paint;
        this.f = a(aVar.c(), aVar.b());
        this.g = a(aVar.c(), aVar.f());
        RectF rectF = new RectF(0.0f, 0.0f, aVar.f(), aVar.b());
        this.h = rectF;
        if (aVar.d() == null || aVar.e() == null) {
            this.c = null;
            this.d = 0.0f;
            this.e = 0.0f;
        } else {
            Paint paint2 = new Paint(1);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setColor(aVar.d().intValue());
            paint2.setStrokeWidth(aVar.e().floatValue());
            this.c = paint2;
            this.d = aVar.e().floatValue() / 2;
            this.e = 1.0f;
        }
        Rect rect = new Rect();
        rectF.roundOut(rect);
        setBounds(rect);
    }

    public final float a(float f, float f2) {
        return f - (f >= f2 / ((float) 2) ? this.d : 0.0f);
    }

    public final void b(float f) {
        Rect bounds = getBounds();
        this.h.set(bounds.left + f, bounds.top + f, bounds.right - f, bounds.bottom - f);
    }

    @Override
    public void draw(Canvas canvas) {
        y45.j(canvas, "canvas");
        b(this.e);
        canvas.drawRoundRect(this.h, this.f, this.g, this.b);
        Paint paint = this.c;
        if (paint != null) {
            b(this.d);
            canvas.drawRoundRect(this.h, this.a.c(), this.a.c(), paint);
        }
    }

    @Override
    public int getIntrinsicHeight() {
        return (int) this.a.b();
    }

    @Override
    public int getIntrinsicWidth() {
        return (int) this.a.f();
    }

    @Override
    public int getOpacity() {
        return -1;
    }

    @Override
    public void setAlpha(int i) {
        xi.i("Setting alpha is not implemented");
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        xi.i("Setting color filter is not implemented");
    }
}
