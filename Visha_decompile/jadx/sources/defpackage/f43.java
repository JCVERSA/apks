package defpackage;

import android.view.View;
import androidx.constraintlayout.motion.widget.Key;
import java.util.ArrayList;

public abstract class f43 implements xc.b {
    public float a;
    public float b;
    public boolean c;
    public final Object d;
    public final az3 e;
    public boolean f;
    public float g;
    public float h;
    public long i;
    public float j;
    public final ArrayList k;
    public final ArrayList l;
    public xc m;
    public static final s n = new g("translationX");
    public static final s o = new h("translationY");
    public static final s p = new i("translationZ");
    public static final s q = new j("scaleX");
    public static final s r = new k("scaleY");
    public static final s s = new l(Key.ROTATION);
    public static final s t = new m("rotationX");
    public static final s u = new n("rotationY");
    public static final s v = new o("x");
    public static final s w = new a("y");
    public static final s x = new b("z");
    public static final s y = new c("alpha");
    public static final s z = new d("scrollX");
    public static final s A = new e("scrollY");

    public class a extends s {
        public a(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getY();
        }

        @Override
        public void b(View view, float f) {
            view.setY(f);
        }
    }

    public class b extends s {
        public b(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getZ();
        }

        @Override
        public void b(View view, float f) {
            view.setZ(f);
        }
    }

    public class c extends s {
        public c(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getAlpha();
        }

        @Override
        public void b(View view, float f) {
            view.setAlpha(f);
        }
    }

    public class d extends s {
        public d(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getScrollX();
        }

        @Override
        public void b(View view, float f) {
            view.setScrollX((int) f);
        }
    }

    public class e extends s {
        public e(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getScrollY();
        }

        @Override
        public void b(View view, float f) {
            view.setScrollY((int) f);
        }
    }

    public class f extends az3 {
        public final fz3 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, fz3 fz3Var) {
            super(str);
            this.b = fz3Var;
        }

        @Override
        public float a(Object obj) {
            return this.b.a();
        }

        @Override
        public void b(Object obj, float f) {
            this.b.b(f);
        }
    }

    public class g extends s {
        public g(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getTranslationX();
        }

        @Override
        public void b(View view, float f) {
            view.setTranslationX(f);
        }
    }

    public class h extends s {
        public h(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getTranslationY();
        }

        @Override
        public void b(View view, float f) {
            view.setTranslationY(f);
        }
    }

    public class i extends s {
        public i(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getTranslationZ();
        }

        @Override
        public void b(View view, float f) {
            view.setTranslationZ(f);
        }
    }

    public class j extends s {
        public j(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getScaleX();
        }

        @Override
        public void b(View view, float f) {
            view.setScaleX(f);
        }
    }

    public class k extends s {
        public k(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getScaleY();
        }

        @Override
        public void b(View view, float f) {
            view.setScaleY(f);
        }
    }

    public class l extends s {
        public l(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getRotation();
        }

        @Override
        public void b(View view, float f) {
            view.setRotation(f);
        }
    }

    public class m extends s {
        public m(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getRotationX();
        }

        @Override
        public void b(View view, float f) {
            view.setRotationX(f);
        }
    }

    public class n extends s {
        public n(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getRotationY();
        }

        @Override
        public void b(View view, float f) {
            view.setRotationY(f);
        }
    }

    public class o extends s {
        public o(String str) {
            super(str);
        }

        @Override
        public float a(View view) {
            return view.getX();
        }

        @Override
        public void b(View view, float f) {
            view.setX(f);
        }
    }

    public static class p {
        public float a;
        public float b;
    }

    public interface q {
        void a(f43 f43Var, boolean z, float f, float f2);
    }

    public interface r {
        void a(f43 f43Var, float f, float f2);
    }

    public static abstract class s extends az3 {
        public s(String str) {
            super(str);
        }
    }

    public f43(fz3 fz3Var) {
        this.a = 0.0f;
        this.b = Float.MAX_VALUE;
        this.c = false;
        this.f = false;
        this.g = Float.MAX_VALUE;
        this.h = -Float.MAX_VALUE;
        this.i = 0L;
        this.k = new ArrayList();
        this.l = new ArrayList();
        this.d = null;
        this.e = new f("FloatValueHolder", fz3Var);
        this.j = 1.0f;
    }

    public static void i(ArrayList arrayList, Object obj) {
        int iIndexOf = arrayList.indexOf(obj);
        if (iIndexOf >= 0) {
            arrayList.set(iIndexOf, null);
        }
    }

    public static void j(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    public f43 a(q qVar) {
        if (!this.k.contains(qVar)) {
            this.k.add(qVar);
        }
        return this;
    }

    public f43 b(r rVar) {
        if (h()) {
            throw new UnsupportedOperationException("Error: Update listeners must be added beforethe animation.");
        }
        if (!this.l.contains(rVar)) {
            this.l.add(rVar);
        }
        return this;
    }

    public void c() {
        if (this.f) {
            d(true);
        }
    }

    public final void d(boolean z2) {
        this.f = false;
        e().l(this);
        this.i = 0L;
        this.c = false;
        for (int i2 = 0; i2 < this.k.size(); i2++) {
            if (this.k.get(i2) != null) {
                ((q) this.k.get(i2)).a(this, z2, this.b, this.a);
            }
        }
        j(this.k);
    }

    @Override
    public boolean doAnimationFrame(long j2) {
        long j3 = this.i;
        if (j3 == 0) {
            this.i = j2;
            l(this.b);
            return false;
        }
        this.i = j2;
        boolean zR = r(j2 - j3);
        float fMin = Math.min(this.b, this.g);
        this.b = fMin;
        float fMax = Math.max(fMin, this.h);
        this.b = fMax;
        l(fMax);
        if (zR) {
            d(false);
        }
        return zR;
    }

    public xc e() {
        if (this.m == null) {
            this.m = xc.h();
        }
        return this.m;
    }

    public final float f() {
        return this.e.a(this.d);
    }

    public float g() {
        return this.j * 0.75f;
    }

    public boolean h() {
        return this.f;
    }

    public f43 k(float f2) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("Minimum visible change must be positive.");
        }
        this.j = f2;
        o(f2 * 0.75f);
        return this;
    }

    public void l(float f2) {
        this.e.b(this.d, f2);
        for (int i2 = 0; i2 < this.l.size(); i2++) {
            if (this.l.get(i2) != null) {
                ((r) this.l.get(i2)).a(this, this.b, this.a);
            }
        }
        j(this.l);
    }

    public f43 m(float f2) {
        this.b = f2;
        this.c = true;
        return this;
    }

    public f43 n(float f2) {
        this.a = f2;
        return this;
    }

    public abstract void o(float f2);

    public void p() {
        if (this.f) {
            return;
        }
        q();
    }

    public final void q() {
        if (this.f) {
            return;
        }
        this.f = true;
        if (!this.c) {
            this.b = f();
        }
        float f2 = this.b;
        if (f2 > this.g || f2 < this.h) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        e().e(this, 0L);
    }

    public abstract boolean r(long j2);

    public void removeEndListener(q qVar) {
        i(this.k, qVar);
    }

    public void removeUpdateListener(r rVar) {
        i(this.l, rVar);
    }

    public f43(Object obj, az3 az3Var) {
        this.a = 0.0f;
        this.b = Float.MAX_VALUE;
        this.c = false;
        this.f = false;
        this.g = Float.MAX_VALUE;
        this.h = -Float.MAX_VALUE;
        this.i = 0L;
        this.k = new ArrayList();
        this.l = new ArrayList();
        this.d = obj;
        this.e = az3Var;
        if (az3Var != s && az3Var != t && az3Var != u) {
            if (az3Var == y) {
                this.j = 0.00390625f;
                return;
            } else if (az3Var != q && az3Var != r) {
                this.j = 1.0f;
                return;
            } else {
                this.j = 0.002f;
                return;
            }
        }
        this.j = 0.1f;
    }
}
