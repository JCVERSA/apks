package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;

public class gc8 {
    public int a;
    public int b;
    public int c;
    public int d;
    public float e;

    public void a(Canvas canvas, Paint paint) {
        canvas.drawCircle(this.a, this.b, this.e, paint);
    }

    public void b(int i, int i2) {
        this.c = i;
        this.d = i2;
    }

    public void c(int i, int i2, float f) {
        this.a = i;
        this.b = i2;
        this.e = f;
    }

    public String toString() {
        return "Point::x=" + this.a + ", y=" + this.b + ", x1=" + this.c + ", y1=" + this.d + ", radius=" + this.e;
    }
}
