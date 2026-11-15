package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

public final class cha {
    public final op9 a;
    public final Rect b;
    public final Paint c;
    public String d;
    public float e;
    public float f;

    public cha(op9 op9Var) {
        y45.j(op9Var, "textStyle");
        this.a = op9Var;
        this.b = new Rect();
        Paint paint = new Paint(1);
        paint.setTextSize(op9Var.a());
        paint.setColor(op9Var.e());
        paint.setTypeface(op9Var.b());
        paint.setStyle(Paint.Style.FILL);
        this.c = paint;
    }

    public final void a(Canvas canvas, float f, float f2) {
        y45.j(canvas, "canvas");
        String str = this.d;
        if (str != null) {
            canvas.drawText(str, (f - this.e) + this.a.c(), f2 + this.f + this.a.d(), this.c);
        }
    }

    public final void b(String str) {
        this.d = str;
        this.c.getTextBounds(str, 0, str != null ? str.length() : 0, this.b);
        this.e = this.c.measureText(this.d) / 2.0f;
        this.f = this.b.height() / 2.0f;
    }
}
