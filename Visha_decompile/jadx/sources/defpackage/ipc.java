package defpackage;

import android.graphics.RectF;
import com.yandex.div.internal.widget.indicator.b;
import com.yandex.div.internal.widget.indicator.c;
import kotlin.NoWhenBranchMatchedException;

public final class ipc implements pz4 {
    public final sz4 a;
    public float b;
    public final RectF c;
    public float d;
    public float e;
    public final b f;

    public ipc(sz4 sz4Var) {
        b bVarD;
        y45.j(sz4Var, "styleParams");
        this.a = sz4Var;
        this.c = new RectF();
        c cVarC = sz4Var.c();
        if (cVarC instanceof c.a) {
            bVarD = ((c.a) cVarC).d();
        } else {
            if (!(cVarC instanceof c.b)) {
                throw new NoWhenBranchMatchedException();
            }
            c.b bVar = (c.b) cVarC;
            bVarD = b.C0303b.d(bVar.d(), bVar.d().g() + bVar.g(), bVar.d().f() + bVar.g(), 0.0f, 4, null);
        }
        this.f = bVarD;
    }

    @Override
    public void a(float f) {
        this.d = f;
    }

    @Override
    public RectF c(float f, float f2, float f3, boolean z) {
        float fB = this.e;
        if (fB == 0.0f) {
            fB = this.a.a().d().b();
        }
        this.c.top = f2 - (this.a.a().d().a() / 2.0f);
        if (z) {
            float f4 = fB / 2.0f;
            this.c.right = (f - wn8.c((this.d * (this.b - 0.5f)) * 2.0f, 0.0f)) + f4;
            RectF rectF = this.c;
            float f5 = this.d;
            rectF.left = (f - wn8.f((this.b * f5) * 2.0f, f5)) - f4;
        } else {
            RectF rectF2 = this.c;
            float f6 = this.d;
            float f7 = fB / 2.0f;
            rectF2.right = wn8.f(this.b * f6 * 2.0f, f6) + f + f7;
            this.c.left = (f + wn8.c((this.d * (this.b - 0.5f)) * 2.0f, 0.0f)) - f7;
        }
        this.c.bottom = f2 + (this.a.a().d().a() / 2.0f);
        RectF rectF3 = this.c;
        float f8 = rectF3.left;
        if (f8 < 0.0f) {
            rectF3.offset(-f8, 0.0f);
        }
        RectF rectF4 = this.c;
        float f9 = rectF4.right;
        if (f9 > f3) {
            rectF4.offset(-(f9 - f3), 0.0f);
        }
        return this.c;
    }

    @Override
    public void d(float f) {
        this.e = f;
    }

    @Override
    public float e(int i) {
        return this.a.c().b();
    }

    @Override
    public b f(int i) {
        return this.f;
    }

    @Override
    public int g(int i) {
        return this.a.c().a();
    }

    @Override
    public void h(int i, float f) {
        this.b = f;
    }

    @Override
    public int i(int i) {
        return this.a.c().c();
    }
}
