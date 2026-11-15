package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

public final class ew0 extends Drawable {
    public final a a;
    public final Paint b;
    public final Paint c;
    public final RectF d;

    public static final class a {
        public final float a;
        public final int b;
        public final Integer c;
        public final Float d;

        public a(float f, int i, Integer num, Float f2) {
            this.a = f;
            this.b = i;
            this.c = num;
            this.d = f2;
        }

        public final int a() {
            return this.b;
        }

        public final float b() {
            return this.a;
        }

        public final Integer c() {
            return this.c;
        }

        public final Float d() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Float.compare(this.a, aVar.a) == 0 && this.b == aVar.b && y45.e(this.c, aVar.c) && y45.e(this.d, aVar.d);
        }

        public int hashCode() {
            int iHashCode = ((Float.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31;
            Integer num = this.c;
            int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
            Float f = this.d;
            return iHashCode2 + (f != null ? f.hashCode() : 0);
        }

        public String toString() {
            return "Params(radius=" + this.a + ", color=" + this.b + ", strokeColor=" + this.c + ", strokeWidth=" + this.d + ')';
        }
    }

    public ew0(a aVar) {
        Paint paint;
        y45.j(aVar, "params");
        this.a = aVar;
        Paint paint2 = new Paint(1);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setColor(aVar.a());
        this.b = paint2;
        if (aVar.c() == null || aVar.d() == null) {
            paint = null;
        } else {
            paint = new Paint(1);
            paint.setStyle(Paint.Style.STROKE);
            paint.setColor(aVar.c().intValue());
            paint.setStrokeWidth(aVar.d().floatValue());
        }
        this.c = paint;
        float f = 2;
        RectF rectF = new RectF(0.0f, 0.0f, aVar.b() * f, aVar.b() * f);
        this.d = rectF;
        Rect rect = new Rect();
        rectF.roundOut(rect);
        setBounds(rect);
    }

    @Override
    public void draw(Canvas canvas) {
        y45.j(canvas, "canvas");
        this.b.setColor(this.a.a());
        this.d.set(getBounds());
        canvas.drawCircle(this.d.centerX(), this.d.centerY(), this.a.b(), this.b);
        if (this.c != null) {
            canvas.drawCircle(this.d.centerX(), this.d.centerY(), this.a.b(), this.c);
        }
    }

    @Override
    public int getIntrinsicHeight() {
        return ((int) this.a.b()) * 2;
    }

    @Override
    public int getIntrinsicWidth() {
        return ((int) this.a.b()) * 2;
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
