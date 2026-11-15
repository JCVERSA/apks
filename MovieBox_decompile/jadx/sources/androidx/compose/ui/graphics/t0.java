package androidx.compose.ui.graphics;

import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.os.Build;

public abstract class t0 {

    public class a {

        public static final int[] f4335a;

        public static final int[] f4336b;

        public static final int[] f4337c;

        static {
            int[] iArr = new int[Paint.Style.values().length];
            try {
                iArr[Paint.Style.STROKE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f4335a = iArr;
            int[] iArr2 = new int[Paint.Cap.values().length];
            try {
                iArr2[Paint.Cap.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[Paint.Cap.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Paint.Cap.SQUARE.ordinal()] = 3;
            } catch (NoSuchFieldError unused4) {
            }
            f4336b = iArr2;
            int[] iArr3 = new int[Paint.Join.values().length];
            try {
                iArr3[Paint.Join.MITER.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr3[Paint.Join.BEVEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[Paint.Join.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            f4337c = iArr3;
        }
    }

    public static final m4 a() {
        return new s0();
    }

    public static final m4 b(Paint paint) {
        return new s0(paint);
    }

    public static final float c(Paint paint) {
        return paint.getAlpha() / 255.0f;
    }

    public static final long d(Paint paint) {
        return w1.b(paint.getColor());
    }

    public static final int e(Paint paint) {
        return !paint.isFilterBitmap() ? x3.f4570a.b() : x3.f4570a.a();
    }

    public static final int f(Paint paint) {
        Paint.Cap strokeCap = paint.getStrokeCap();
        int i10 = strokeCap == null ? -1 : a.f4336b[strokeCap.ordinal()];
        if (i10 == 1) {
            return c5.f4009a.a();
        }
        if (i10 != 2) {
            return i10 != 3 ? c5.f4009a.a() : c5.f4009a.c();
        }
        return c5.f4009a.b();
    }

    public static final int g(Paint paint) {
        Paint.Join strokeJoin = paint.getStrokeJoin();
        int i10 = strokeJoin == null ? -1 : a.f4337c[strokeJoin.ordinal()];
        if (i10 == 1) {
            return d5.f4121a.b();
        }
        if (i10 != 2) {
            return i10 != 3 ? d5.f4121a.b() : d5.f4121a.c();
        }
        return d5.f4121a.a();
    }

    public static final float h(Paint paint) {
        return paint.getStrokeMiter();
    }

    public static final float i(Paint paint) {
        return paint.getStrokeWidth();
    }

    public static final Paint j() {
        return new Paint(7);
    }

    public static final void k(Paint paint, float f10) {
        paint.setAlpha((int) Math.rint(f10 * 255.0f));
    }

    public static final void l(Paint paint, int i10) {
        if (Build.VERSION.SDK_INT >= 29) {
            h5.f4141a.a(paint, i10);
        } else {
            paint.setXfermode(new PorterDuffXfermode(f0.c(i10)));
        }
    }

    public static final void m(Paint paint, long j10) {
        paint.setColor(w1.j(j10));
    }

    public static final void n(Paint paint, v1 v1Var) {
        paint.setColorFilter(v1Var != null ? i0.b(v1Var) : null);
    }

    public static final void o(Paint paint, int i10) {
        paint.setFilterBitmap(!x3.d(i10, x3.f4570a.b()));
    }

    public static final void p(Paint paint, p4 p4Var) {
        android.support.v4.media.session.c.a(p4Var);
        paint.setPathEffect(null);
    }

    public static final void q(Paint paint, Shader shader) {
        paint.setShader(shader);
    }

    public static final void r(Paint paint, int i10) {
        Paint.Cap cap;
        c5.a aVar = c5.f4009a;
        if (c5.e(i10, aVar.c())) {
            cap = Paint.Cap.SQUARE;
        } else if (c5.e(i10, aVar.b())) {
            cap = Paint.Cap.ROUND;
        } else {
            cap = c5.e(i10, aVar.a()) ? Paint.Cap.BUTT : Paint.Cap.BUTT;
        }
        paint.setStrokeCap(cap);
    }

    public static final void s(Paint paint, int i10) {
        Paint.Join join;
        d5.a aVar = d5.f4121a;
        if (d5.e(i10, aVar.b())) {
            join = Paint.Join.MITER;
        } else if (d5.e(i10, aVar.a())) {
            join = Paint.Join.BEVEL;
        } else {
            join = d5.e(i10, aVar.c()) ? Paint.Join.ROUND : Paint.Join.MITER;
        }
        paint.setStrokeJoin(join);
    }

    public static final void t(Paint paint, float f10) {
        paint.setStrokeMiter(f10);
    }

    public static final void u(Paint paint, float f10) {
        paint.setStrokeWidth(f10);
    }

    public static final void v(Paint paint, int i10) {
        paint.setStyle(n4.d(i10, n4.f4299a.b()) ? Paint.Style.STROKE : Paint.Style.FILL);
    }
}
