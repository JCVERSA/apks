package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.view.ViewCompat;

public class ro1 extends Drawable {
    public Paint a;
    public Paint b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int[] h;
    public RectF i;

    public static class a {
        public int a = 1;
        public int b = 12;
        public int c = Color.parseColor("#4d000000");
        public int d = 18;
        public int e = 0;
        public int f = 0;
        public int[] g = {0};

        public ro1 a() {
            return new ro1(this.a, this.g, this.b, this.c, this.d, this.e, this.f);
        }

        public a b(int i) {
            this.g[0] = i;
            return this;
        }

        public a c(int i) {
            this.e = i;
            return this;
        }

        public a d(int i) {
            this.f = i;
            return this;
        }

        public a e(int i) {
            this.c = i;
            return this;
        }

        public a f(int i) {
            this.d = i;
            return this;
        }

        public a g(int i) {
            this.b = i;
            return this;
        }
    }

    public static void a(View view, int i, int i2, int i3, int i4, int i5, int i6) {
        ro1 ro1VarA = new a().b(i).g(i2).e(i3).f(i4).c(i5).d(i6).a();
        view.setLayerType(1, null);
        ViewCompat.setBackground(view, ro1VarA);
    }

    @Override
    public void draw(Canvas canvas) {
        int[] iArr = this.h;
        if (iArr != null) {
            if (iArr.length == 1) {
                this.b.setColor(iArr[0]);
            } else {
                Paint paint = this.b;
                RectF rectF = this.i;
                float f = rectF.left;
                float fHeight = rectF.height() / 2.0f;
                RectF rectF2 = this.i;
                paint.setShader(new LinearGradient(f, fHeight, rectF2.right, rectF2.height() / 2.0f, this.h, (float[]) null, Shader.TileMode.CLAMP));
            }
        }
        if (this.d != 1) {
            canvas.drawCircle(this.i.centerX(), this.i.centerY(), Math.min(this.i.width(), this.i.height()) / 2.0f, this.a);
            canvas.drawCircle(this.i.centerX(), this.i.centerY(), Math.min(this.i.width(), this.i.height()) / 2.0f, this.b);
            return;
        }
        RectF rectF3 = this.i;
        int i = this.e;
        canvas.drawRoundRect(rectF3, i, i, this.a);
        RectF rectF4 = this.i;
        int i2 = this.e;
        canvas.drawRoundRect(rectF4, i2, i2, this.b);
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public void setAlpha(int i) {
        this.a.setAlpha(i);
    }

    @Override
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        int i5 = this.c;
        int i6 = this.f;
        int i7 = this.g;
        this.i = new RectF((i + i5) - i6, (i2 + i5) - i7, (i3 - i5) - i6, (i4 - i5) - i7);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.a.setColorFilter(colorFilter);
    }

    public ro1(int i, int[] iArr, int i2, int i3, int i4, int i5, int i6) {
        this.d = i;
        this.h = iArr;
        this.e = i2;
        this.c = i4;
        this.f = i5;
        this.g = i6;
        Paint paint = new Paint();
        this.a = paint;
        paint.setColor(0);
        this.a.setAntiAlias(true);
        this.a.setShadowLayer(i4, i5, i6, i3);
        this.a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
        Paint paint2 = new Paint();
        this.b = paint2;
        paint2.setAntiAlias(true);
    }
}
