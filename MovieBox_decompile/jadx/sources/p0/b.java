package p0;

import androidx.collection.y0;
import kotlin.Unit;
import o0.o;

public final class b {

    public static final b f68952a;

    private static final float[] f68953b;

    private static volatile y0 f68954c;

    private static final Object[] f68955d;

    public static final int f68956e;

    static {
        b bVar = new b();
        f68952a = bVar;
        f68953b = new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f};
        f68954c = new y0(0, 1, null);
        Object[] objArr = new Object[0];
        f68955d = objArr;
        synchronized (objArr) {
            bVar.h(f68954c, 1.15f, new c(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{9.2f, 11.5f, 13.8f, 16.4f, 19.8f, 21.8f, 25.2f, 30.0f, 100.0f}));
            bVar.h(f68954c, 1.3f, new c(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{10.4f, 13.0f, 15.6f, 18.8f, 21.6f, 23.6f, 26.4f, 30.0f, 100.0f}));
            bVar.h(f68954c, 1.5f, new c(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{12.0f, 15.0f, 18.0f, 22.0f, 24.0f, 26.0f, 28.0f, 30.0f, 100.0f}));
            bVar.h(f68954c, 1.8f, new c(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{14.4f, 18.0f, 21.6f, 24.4f, 27.6f, 30.8f, 32.8f, 34.8f, 100.0f}));
            bVar.h(f68954c, 2.0f, new c(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{16.0f, 20.0f, 24.0f, 26.0f, 30.0f, 34.0f, 36.0f, 38.0f, 100.0f}));
            Unit unit = Unit.f64096a;
        }
        if (!(bVar.e(f68954c.k(0)) - 0.01f > 1.03f)) {
            o.b("You should only apply non-linear scaling to font scales > 1");
        }
        f68956e = 8;
    }

    private b() {
    }

    private final a a(a aVar, a aVar2, float f10) {
        float[] fArr = f68953b;
        float[] fArr2 = new float[fArr.length];
        int length = fArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            float f11 = f68953b[i10];
            fArr2[i10] = d.f68961a.b(aVar.b(f11), aVar2.b(f11), f10);
        }
        return new c(f68953b, fArr2);
    }

    private final a c(float f10) {
        return (a) f68954c.g(d(f10));
    }

    private final int d(float f10) {
        return (int) (f10 * 100.0f);
    }

    private final float e(int i10) {
        return i10 / 100.0f;
    }

    private final void g(float f10, a aVar) {
        synchronized (f68955d) {
            y0 y0VarClone = f68954c.clone();
            f68952a.h(y0VarClone, f10, aVar);
            f68954c = y0VarClone;
            Unit unit = Unit.f64096a;
        }
    }

    private final void h(y0 y0Var, float f10, a aVar) {
        y0Var.l(d(f10), aVar);
    }

    public final a b(float f10) {
        a cVar;
        if (!f(f10)) {
            return null;
        }
        a aVarC = f68952a.c(f10);
        if (aVarC != null) {
            return aVarC;
        }
        int i10 = f68954c.i(d(f10));
        if (i10 >= 0) {
            return (a) f68954c.q(i10);
        }
        int i11 = -(i10 + 1);
        int i12 = i11 - 1;
        float fE = 1.0f;
        if (i11 >= f68954c.p()) {
            c cVar2 = new c(new float[]{1.0f}, new float[]{f10});
            g(f10, cVar2);
            return cVar2;
        }
        if (i12 < 0) {
            float[] fArr = f68953b;
            cVar = new c(fArr, fArr);
        } else {
            fE = e(f68954c.k(i12));
            cVar = (a) f68954c.q(i12);
        }
        a aVarA = a(cVar, (a) f68954c.q(i11), d.f68961a.a(0.0f, 1.0f, fE, e(f68954c.k(i11)), f10));
        g(f10, aVarA);
        return aVarA;
    }

    public final boolean f(float f10) {
        return f10 >= 1.03f;
    }
}
