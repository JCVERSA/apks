package p4;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

public abstract class a {

    private final d f69003c;

    protected y4.c f69005e;

    final List f69001a = new ArrayList(1);

    private boolean f69002b = false;

    protected float f69004d = 0.0f;

    private Object f69006f = null;

    private float f69007g = -1.0f;

    private float f69008h = -1.0f;

    public interface b {
        void a();
    }

    private static final class c implements d {
        private c() {
        }

        @Override
        public boolean a(float f10) {
            throw new IllegalStateException("not implemented");
        }

        @Override
        public y4.a b() {
            throw new IllegalStateException("not implemented");
        }

        @Override
        public boolean c(float f10) {
            return false;
        }

        @Override
        public float d() {
            return 0.0f;
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

    private interface d {
        boolean a(float f10);

        y4.a b();

        boolean c(float f10);

        float d();

        float e();

        boolean isEmpty();
    }

    private static final class e implements d {

        private final List f69009a;

        private y4.a f69011c = null;

        private float f69012d = -1.0f;

        private y4.a f69010b = f(0.0f);

        e(List list) {
            this.f69009a = list;
        }

        private y4.a f(float f10) {
            List list = this.f69009a;
            y4.a aVar = (y4.a) list.get(list.size() - 1);
            if (f10 >= aVar.f()) {
                return aVar;
            }
            for (int size = this.f69009a.size() - 2; size >= 1; size--) {
                y4.a aVar2 = (y4.a) this.f69009a.get(size);
                if (this.f69010b != aVar2 && aVar2.a(f10)) {
                    return aVar2;
                }
            }
            return (y4.a) this.f69009a.get(0);
        }

        @Override
        public boolean a(float f10) {
            y4.a aVar = this.f69011c;
            y4.a aVar2 = this.f69010b;
            if (aVar == aVar2 && this.f69012d == f10) {
                return true;
            }
            this.f69011c = aVar2;
            this.f69012d = f10;
            return false;
        }

        @Override
        public y4.a b() {
            return this.f69010b;
        }

        @Override
        public boolean c(float f10) {
            if (this.f69010b.a(f10)) {
                return !this.f69010b.i();
            }
            this.f69010b = f(f10);
            return true;
        }

        @Override
        public float d() {
            return ((y4.a) this.f69009a.get(0)).f();
        }

        @Override
        public float e() {
            List list = this.f69009a;
            return ((y4.a) list.get(list.size() - 1)).c();
        }

        @Override
        public boolean isEmpty() {
            return false;
        }
    }

    private static final class f implements d {

        private final y4.a f69013a;

        private float f69014b = -1.0f;

        f(List list) {
            this.f69013a = (y4.a) list.get(0);
        }

        @Override
        public boolean a(float f10) {
            if (this.f69014b == f10) {
                return true;
            }
            this.f69014b = f10;
            return false;
        }

        @Override
        public y4.a b() {
            return this.f69013a;
        }

        @Override
        public boolean c(float f10) {
            return !this.f69013a.i();
        }

        @Override
        public float d() {
            return this.f69013a.f();
        }

        @Override
        public float e() {
            return this.f69013a.c();
        }

        @Override
        public boolean isEmpty() {
            return false;
        }
    }

    a(List list) {
        this.f69003c = p(list);
    }

    private float g() {
        if (this.f69007g == -1.0f) {
            this.f69007g = this.f69003c.d();
        }
        return this.f69007g;
    }

    private static d p(List list) {
        if (list.isEmpty()) {
            return new c();
        }
        return list.size() == 1 ? new f(list) : new e(list);
    }

    public void a(b bVar) {
        this.f69001a.add(bVar);
    }

    protected y4.a b() {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("BaseKeyframeAnimation#getCurrentKeyframe");
        }
        y4.a aVarB = this.f69003c.b();
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("BaseKeyframeAnimation#getCurrentKeyframe");
        }
        return aVarB;
    }

    float c() {
        if (this.f69008h == -1.0f) {
            this.f69008h = this.f69003c.e();
        }
        return this.f69008h;
    }

    protected float d() {
        Interpolator interpolator;
        y4.a aVarB = b();
        if (aVarB == null || aVarB.i() || (interpolator = aVarB.f76137d) == null) {
            return 0.0f;
        }
        return interpolator.getInterpolation(e());
    }

    float e() {
        if (this.f69002b) {
            return 0.0f;
        }
        y4.a aVarB = b();
        if (aVarB.i()) {
            return 0.0f;
        }
        return (this.f69004d - aVarB.f()) / (aVarB.c() - aVarB.f());
    }

    public float f() {
        return this.f69004d;
    }

    public Object h() {
        float fE = e();
        if (this.f69005e == null && this.f69003c.a(fE)) {
            return this.f69006f;
        }
        y4.a aVarB = b();
        Interpolator interpolator = aVarB.f76138e;
        Object objI = (interpolator == null || aVarB.f76139f == null) ? i(aVarB, d()) : j(aVarB, fE, interpolator.getInterpolation(fE), aVarB.f76139f.getInterpolation(fE));
        this.f69006f = objI;
        return objI;
    }

    abstract Object i(y4.a aVar, float f10);

    protected Object j(y4.a aVar, float f10, float f11, float f12) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public boolean k() {
        return this.f69005e != null;
    }

    public void l() {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("BaseKeyframeAnimation#notifyListeners");
        }
        for (int i10 = 0; i10 < this.f69001a.size(); i10++) {
            ((b) this.f69001a.get(i10)).a();
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("BaseKeyframeAnimation#notifyListeners");
        }
    }

    public void m() {
        this.f69002b = true;
    }

    public void n(float f10) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("BaseKeyframeAnimation#setProgress");
        }
        if (this.f69003c.isEmpty()) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("BaseKeyframeAnimation#setProgress");
                return;
            }
            return;
        }
        if (f10 < g()) {
            f10 = g();
        } else if (f10 > c()) {
            f10 = c();
        }
        if (f10 == this.f69004d) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("BaseKeyframeAnimation#setProgress");
            }
        } else {
            this.f69004d = f10;
            if (this.f69003c.c(f10)) {
                l();
            }
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("BaseKeyframeAnimation#setProgress");
            }
        }
    }

    public void o(y4.c cVar) {
        y4.c cVar2 = this.f69005e;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f69005e = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }
}
