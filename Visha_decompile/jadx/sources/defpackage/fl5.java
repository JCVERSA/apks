package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class fl5 extends Drawable {
    public static final a e = new a(null);
    public final float a;
    public final y91 b;
    public final Paint c;
    public RectF d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final LinearGradient a(float f, int[] iArr, float[] fArr, int i, int i2) {
            y45.j(iArr, "colors");
            float f2 = i;
            float f3 = f2 / 2.0f;
            float f4 = i2;
            float f5 = f4 / 2.0f;
            double dB = b(f);
            float fAbs = Math.abs(f2 * ((float) Math.cos(dB))) + Math.abs(f4 * ((float) Math.sin(dB)));
            float fB = gl5.b((((float) Math.cos(dB)) * fAbs) / 2.0f, 0.0f, 0.0f, 2, null);
            float fB2 = gl5.b((((float) Math.sin(dB)) * fAbs) / 2.0f, 0.0f, 0.0f, 2, null);
            return new LinearGradient(f3 - fB, f5 + fB2, f3 + fB, f5 - fB2, iArr, fArr, Shader.TileMode.CLAMP);
        }

        public final float b(float f) {
            return (float) ((((double) f) * 3.141592653589793d) / ((double) 180.0f));
        }

        public a() {
        }
    }

    public fl5(float f, y91 y91Var) {
        y45.j(y91Var, "colormap");
        this.a = f;
        this.b = y91Var;
        this.c = new Paint();
        this.d = new RectF();
    }

    @Override
    public void draw(Canvas canvas) {
        y45.j(canvas, "canvas");
        canvas.drawRect(this.d, this.c);
    }

    @Override
    public int getOpacity() {
        return this.c.getAlpha();
    }

    @Override
    public void onBoundsChange(Rect rect) {
        y45.j(rect, "bounds");
        super.onBoundsChange(rect);
        this.c.setShader(e.a(this.a, this.b.a(), this.b.b(), rect.width(), rect.height()));
        this.d.set(rect);
    }

    @Override
    public void setAlpha(int i) {
        this.c.setAlpha(i);
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
