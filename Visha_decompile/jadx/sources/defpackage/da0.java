package defpackage;

import android.animation.ArgbEvaluator;
import android.graphics.Paint;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class da0 implements yu4 {
    public static final a g = new a(null);
    public final b a;
    public float b;
    public float c;
    public Paint d;
    public ArgbEvaluator e;
    public rz4 f;

    public static final class a {
        public a() {
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final class b {
        public int a;
        public int b;

        public b() {
        }

        public final int a() {
            return this.b;
        }

        public final int b() {
            return this.a;
        }

        public final void c(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public da0(rz4 rz4Var) {
        y45.k(rz4Var, "mIndicatorOptions");
        this.f = rz4Var;
        Paint paint = new Paint();
        this.d = paint;
        paint.setAntiAlias(true);
        this.a = new b();
        if (this.f.j() == 4 || this.f.j() == 5) {
            this.e = new ArgbEvaluator();
        }
    }

    public final ArgbEvaluator b() {
        return this.e;
    }

    public final rz4 c() {
        return this.f;
    }

    public final Paint d() {
        return this.d;
    }

    public final float e() {
        return this.b;
    }

    public final float f() {
        return this.c;
    }

    public final boolean g() {
        return this.f.f() == this.f.b();
    }

    public int h() {
        return ((int) this.f.m()) + 3;
    }

    public final int i() {
        float fH = this.f.h() - 1;
        return ((int) ((this.f.l() * fH) + this.b + (fH * this.c))) + 6;
    }

    public final void j(ArgbEvaluator argbEvaluator) {
        this.e = argbEvaluator;
    }

    @Override
    public b onMeasure(int i, int i2) {
        this.b = wn8.c(this.f.f(), this.f.b());
        this.c = wn8.f(this.f.f(), this.f.b());
        if (this.f.g() == 1) {
            this.a.c(h(), i());
        } else {
            this.a.c(i(), h());
        }
        return this.a;
    }
}
