package defpackage;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

public abstract class ab0 {
    public final d c;
    public iu5 e;
    public final List a = new ArrayList(1);
    public boolean b = false;
    public float d = 0.0f;
    public Object f = null;
    public float g = -1.0f;
    public float h = -1.0f;

    public interface b {
        void e();
    }

    public static final class c implements d {
        public c() {
        }

        @Override
        public dg5 a() {
            throw new IllegalStateException("not implemented");
        }

        @Override
        public float b() {
            return 0.0f;
        }

        @Override
        public boolean c(float f) {
            throw new IllegalStateException("not implemented");
        }

        @Override
        public boolean d(float f) {
            return false;
        }

        @Override
        public float e() {
            return 1.0f;
        }

        @Override
        public boolean isEmpty() {
            return true;
        }
    }

    public interface d {
        dg5 a();

        float b();

        boolean c(float f);

        boolean d(float f);

        float e();

        boolean isEmpty();
    }

    public static final class e implements d {
        public final List a;
        public dg5 c = null;
        public float d = -1.0f;
        public dg5 b = f(0.0f);

        public e(List list) {
            this.a = list;
        }

        @Override
        public dg5 a() {
            return this.b;
        }

        @Override
        public float b() {
            return ((dg5) this.a.get(0)).f();
        }

        @Override
        public boolean c(float f) {
            dg5 dg5Var = this.c;
            dg5 dg5Var2 = this.b;
            if (dg5Var == dg5Var2 && this.d == f) {
                return true;
            }
            this.c = dg5Var2;
            this.d = f;
            return false;
        }

        @Override
        public boolean d(float f) {
            if (this.b.a(f)) {
                return !this.b.i();
            }
            this.b = f(f);
            return true;
        }

        @Override
        public float e() {
            List list = this.a;
            return ((dg5) list.get(list.size() - 1)).c();
        }

        public final dg5 f(float f) {
            List list = this.a;
            dg5 dg5Var = (dg5) list.get(list.size() - 1);
            if (f >= dg5Var.f()) {
                return dg5Var;
            }
            for (int size = this.a.size() - 2; size >= 1; size--) {
                dg5 dg5Var2 = (dg5) this.a.get(size);
                if (this.b != dg5Var2 && dg5Var2.a(f)) {
                    return dg5Var2;
                }
            }
            return (dg5) this.a.get(0);
        }

        @Override
        public boolean isEmpty() {
            return false;
        }
    }

    public static final class f implements d {
        public final dg5 a;
        public float b = -1.0f;

        public f(List list) {
            this.a = (dg5) list.get(0);
        }

        @Override
        public dg5 a() {
            return this.a;
        }

        @Override
        public float b() {
            return this.a.f();
        }

        @Override
        public boolean c(float f) {
            if (this.b == f) {
                return true;
            }
            this.b = f;
            return false;
        }

        @Override
        public boolean d(float f) {
            return !this.a.i();
        }

        @Override
        public float e() {
            return this.a.c();
        }

        @Override
        public boolean isEmpty() {
            return false;
        }
    }

    public ab0(List list) {
        this.c = p(list);
    }

    public static d p(List list) {
        if (list.isEmpty()) {
            return new c();
        }
        return list.size() == 1 ? new f(list) : new e(list);
    }

    public void a(b bVar) {
        this.a.add(bVar);
    }

    public dg5 b() {
        if (yh5.h()) {
            yh5.b("BaseKeyframeAnimation#getCurrentKeyframe");
        }
        dg5 dg5VarA = this.c.a();
        if (yh5.h()) {
            yh5.c("BaseKeyframeAnimation#getCurrentKeyframe");
        }
        return dg5VarA;
    }

    public float c() {
        if (this.h == -1.0f) {
            this.h = this.c.e();
        }
        return this.h;
    }

    public float d() {
        Interpolator interpolator;
        dg5 dg5VarB = b();
        if (dg5VarB == null || dg5VarB.i() || (interpolator = dg5VarB.d) == null) {
            return 0.0f;
        }
        return interpolator.getInterpolation(e());
    }

    public float e() {
        if (this.b) {
            return 0.0f;
        }
        dg5 dg5VarB = b();
        if (dg5VarB.i()) {
            return 0.0f;
        }
        return (this.d - dg5VarB.f()) / (dg5VarB.c() - dg5VarB.f());
    }

    public float f() {
        return this.d;
    }

    public final float g() {
        if (this.g == -1.0f) {
            this.g = this.c.b();
        }
        return this.g;
    }

    public Object h() {
        float fE = e();
        if (this.e == null && this.c.c(fE)) {
            return this.f;
        }
        dg5 dg5VarB = b();
        Interpolator interpolator = dg5VarB.e;
        Object objI = (interpolator == null || dg5VarB.f == null) ? i(dg5VarB, d()) : j(dg5VarB, fE, interpolator.getInterpolation(fE), dg5VarB.f.getInterpolation(fE));
        this.f = objI;
        return objI;
    }

    public abstract Object i(dg5 dg5Var, float f2);

    public Object j(dg5 dg5Var, float f2, float f3, float f4) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public boolean k() {
        return this.e != null;
    }

    public void l() {
        if (yh5.h()) {
            yh5.b("BaseKeyframeAnimation#notifyListeners");
        }
        for (int i = 0; i < this.a.size(); i++) {
            ((b) this.a.get(i)).e();
        }
        if (yh5.h()) {
            yh5.c("BaseKeyframeAnimation#notifyListeners");
        }
    }

    public void m() {
        this.b = true;
    }

    public void n(float f2) {
        if (yh5.h()) {
            yh5.b("BaseKeyframeAnimation#setProgress");
        }
        if (this.c.isEmpty()) {
            if (yh5.h()) {
                yh5.c("BaseKeyframeAnimation#setProgress");
                return;
            }
            return;
        }
        if (f2 < g()) {
            f2 = g();
        } else if (f2 > c()) {
            f2 = c();
        }
        if (f2 == this.d) {
            if (yh5.h()) {
                yh5.c("BaseKeyframeAnimation#setProgress");
            }
        } else {
            this.d = f2;
            if (this.c.d(f2)) {
                l();
            }
            if (yh5.h()) {
                yh5.c("BaseKeyframeAnimation#setProgress");
            }
        }
    }

    public void o(iu5 iu5Var) {
        iu5 iu5Var2 = this.e;
        if (iu5Var2 != null) {
            iu5Var2.c(null);
        }
        this.e = iu5Var;
        if (iu5Var != null) {
            iu5Var.c(this);
        }
    }
}
