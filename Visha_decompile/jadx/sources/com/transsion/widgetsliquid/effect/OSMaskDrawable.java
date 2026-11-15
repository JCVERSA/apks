package com.transsion.widgetsliquid.effect;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import com.transsion.widgetsliquid.R;
import defpackage.c74;
import defpackage.olb;
import defpackage.wn8;
import defpackage.y45;
import defpackage.yi5;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class OSMaskDrawable extends Drawable {
    public static final a q = new a(null);
    public final Context a;
    public int b;
    public float c;
    public int d;
    public int e;
    public int f;
    public int g;
    public boolean h;
    public boolean i;
    public final yi5 j;
    public final Matrix k;
    public LinearGradient l;
    public LinearGradient m;
    public LinearGradient n;
    public LinearGradient o;
    public LinearGradient p;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public OSMaskDrawable(Context context) {
        y45.j(context, "context");
        this.a = context;
        this.b = 112;
        this.c = 1.0f;
        this.e = 1;
        this.j = b.a(new c74() {
            @Override
            public final Paint invoke() {
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                return paint;
            }
        });
        this.k = new Matrix();
        this.b = context.getResources().getDimensionPixelSize(R.dimen.os_liquid_mask_length);
        this.d = olb.m(context, R.attr.os_bg_primary, R.color.os_bg_primary_hios);
        o();
    }

    public final boolean a() {
        return !p(this.a) && this.h;
    }

    public final void b() {
        int iAlpha = Color.alpha(this.d);
        int iRed = Color.red(this.d);
        int iGreen = Color.green(this.d);
        int iBlue = Color.blue(this.d);
        if (a()) {
            this.l = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, new int[]{Color.argb(0, iRed, iGreen, iBlue), Color.argb((int) (((double) iAlpha) * 0.5d), iRed, iGreen, iBlue), Color.argb(iAlpha, iRed, iGreen, iBlue)}, new float[]{0.0f, 0.4f, 0.75f}, Shader.TileMode.CLAMP);
            return;
        }
        int i = this.g;
        if (i == 0) {
            float f = iAlpha;
            this.l = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, new int[]{Color.argb(0, iRed, iGreen, iBlue), Color.argb((int) (0.5f * f), iRed, iGreen, iBlue), Color.argb((int) (f * 1.0f), iRed, iGreen, iBlue)}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
        } else if (i == 1) {
            float f2 = iAlpha;
            this.l = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, new int[]{Color.argb(0, iRed, iGreen, iBlue), Color.argb((int) (0.8f * f2), iRed, iGreen, iBlue), Color.argb((int) (0.9f * f2), iRed, iGreen, iBlue), Color.argb((int) (f2 * 1.0f), iRed, iGreen, iBlue)}, new float[]{0.0f, 0.35f, 0.45f, 1.0f}, Shader.TileMode.CLAMP);
        }
    }

    public final void c() {
        int iAlpha = Color.alpha(this.d);
        int iRed = Color.red(this.d);
        int iGreen = Color.green(this.d);
        int iBlue = Color.blue(this.d);
        float f = iAlpha;
        this.o = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, new int[]{Color.argb((int) (0.8f * f), iRed, iGreen, iBlue), Color.argb((int) (0.5f * f), iRed, iGreen, iBlue), Color.argb((int) (f * 0.0f), iRed, iGreen, iBlue)}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
    }

    public final void d() {
        int iAlpha = Color.alpha(this.d);
        int iRed = Color.red(this.d);
        int iGreen = Color.green(this.d);
        int iBlue = Color.blue(this.d);
        float f = iAlpha;
        this.n = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, new int[]{Color.argb((int) (1.0f * f), iRed, iGreen, iBlue), Color.argb((int) (0.95f * f), iRed, iGreen, iBlue), Color.argb((int) (0.9f * f), iRed, iGreen, iBlue), Color.argb((int) (f * 0.8f), iRed, iGreen, iBlue), Color.argb(0, iRed, iGreen, iBlue)}, new float[]{0.0f, 0.25f, 0.55f, 0.65f, 1.0f}, Shader.TileMode.CLAMP);
    }

    @Override
    public void draw(Canvas canvas) {
        y45.j(canvas, "canvas");
        if (this.f == 8) {
            return;
        }
        int i = this.e;
        if (i == 0) {
            h(canvas);
            return;
        }
        if (i == 1) {
            g(canvas);
        } else {
            if (i != 2) {
                return;
            }
            g(canvas);
            h(canvas);
        }
    }

    public final void e() {
        int iAlpha = Color.alpha(this.d);
        int iRed = Color.red(this.d);
        int iGreen = Color.green(this.d);
        int iBlue = Color.blue(this.d);
        float f = iAlpha;
        this.p = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, new int[]{Color.argb((int) (0.6f * f), iRed, iGreen, iBlue), Color.argb((int) (f * 0.3f), iRed, iGreen, iBlue), Color.argb((int) (((double) iAlpha) * 0.0d), iRed, iGreen, iBlue)}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
    }

    public final void f() {
        int iAlpha = Color.alpha(this.d);
        int iRed = Color.red(this.d);
        int iGreen = Color.green(this.d);
        int iBlue = Color.blue(this.d);
        float f = iAlpha;
        this.m = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, new int[]{Color.argb((int) (0.85f * f), iRed, iGreen, iBlue), Color.argb((int) (0.8f * f), iRed, iGreen, iBlue), Color.argb((int) (0.75f * f), iRed, iGreen, iBlue), Color.argb((int) (f * 0.65f), iRed, iGreen, iBlue), Color.argb(0, iRed, iGreen, iBlue)}, new float[]{0.0f, 0.35f, 0.55f, 0.65f, 1.0f}, Shader.TileMode.CLAMP);
    }

    public final void g(Canvas canvas) {
        float fHeight = getBounds().height();
        float fWidth = getBounds().width();
        if (fHeight <= 0.0f || fWidth <= 0.0f || this.b <= 0) {
            return;
        }
        j().setShader(i());
        float f = this.b;
        this.k.reset();
        this.k.setScale(1.0f, this.c * f);
        float f2 = fHeight - f;
        this.k.postTranslate(0.0f, f2);
        i().setLocalMatrix(this.k);
        if (this.g != 1 || !olb.g0(this.a)) {
            canvas.drawRect(0.0f, f2, fWidth, fHeight, j());
        } else {
            float dimension = this.a.getResources().getDimension(com.transsion.widgetslib.R.dimen.os_radius_xxxl);
            canvas.drawRoundRect(0.0f, f2, fWidth, fHeight, dimension, dimension, j());
        }
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    public final void h(Canvas canvas) {
        int i;
        float fHeight = getBounds().height();
        float fWidth = getBounds().width();
        if (fHeight <= 0.0f || fWidth <= 0.0f || (i = this.b) <= 0) {
            return;
        }
        float f = i;
        this.k.reset();
        this.k.setScale(1.0f, this.c * f);
        this.k.postTranslate(0.0f, 0.0f);
        if (olb.e0(this.a)) {
            if (this.i && olb.o) {
                j().setShader(m());
                m().setLocalMatrix(this.k);
            } else {
                j().setShader(n());
                n().setLocalMatrix(this.k);
            }
        } else if (this.i && olb.o) {
            j().setShader(k());
            k().setLocalMatrix(this.k);
        } else {
            j().setShader(l());
            l().setLocalMatrix(this.k);
        }
        canvas.drawRect(0.0f, 0.0f, fWidth, f, j());
    }

    public final LinearGradient i() {
        if (this.l == null) {
            b();
        }
        LinearGradient linearGradient = this.l;
        y45.g(linearGradient);
        return linearGradient;
    }

    public final Paint j() {
        return (Paint) this.j.getValue();
    }

    public final LinearGradient k() {
        if (this.o == null) {
            c();
        }
        LinearGradient linearGradient = this.o;
        y45.g(linearGradient);
        return linearGradient;
    }

    public final LinearGradient l() {
        if (this.n == null) {
            d();
        }
        LinearGradient linearGradient = this.n;
        y45.g(linearGradient);
        return linearGradient;
    }

    public final LinearGradient m() {
        if (this.p == null) {
            e();
        }
        LinearGradient linearGradient = this.p;
        y45.g(linearGradient);
        return linearGradient;
    }

    public final LinearGradient n() {
        if (this.m == null) {
            f();
        }
        LinearGradient linearGradient = this.m;
        y45.g(linearGradient);
        return linearGradient;
    }

    public final void o() {
        this.l = null;
        this.m = null;
        this.n = null;
    }

    public final boolean p(Context context) {
        y45.j(context, "context");
        return Settings.Secure.getInt(context.getContentResolver(), "navigation_mode", 0) == 2;
    }

    public final void q(boolean z) {
        if (z == this.h) {
            return;
        }
        this.h = z;
        o();
        invalidateSelf();
    }

    public final void r(int i, float f) {
        this.b = i;
        this.c = wn8.j(f, 0.0f, 1.0f);
        invalidateSelf();
    }

    public final void s(int i) {
        if (i != this.d) {
            this.d = i;
            o();
            invalidateSelf();
        }
    }

    @Override
    public void setAlpha(int i) {
        j().setAlpha(i);
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        j().setColorFilter(colorFilter);
        invalidateSelf();
    }

    public final void t(int i) {
        if (i != this.b) {
            this.b = i;
            o();
            invalidateSelf();
        }
    }

    public final void u(int i) {
        if (i != this.e) {
            this.e = i;
            invalidateSelf();
        }
    }

    public final void v(int i) {
        if (i != this.g) {
            this.g = i;
            o();
            invalidateSelf();
        }
    }

    public final void w(int i) {
        if (i != this.f) {
            this.f = i;
            invalidateSelf();
        }
    }

    public final void x(boolean z) {
        if (z == this.i) {
            return;
        }
        this.i = z;
        o();
        invalidateSelf();
    }
}
