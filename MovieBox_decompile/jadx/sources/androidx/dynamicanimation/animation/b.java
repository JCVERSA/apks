package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;

public abstract class b implements androidx.dynamicanimation.animation.a.b {

    public static final p f8681m = new f("translationX");

    public static final p f8682n = new g("translationY");

    public static final p f8683o = new h("translationZ");

    public static final p f8684p = new i("scaleX");

    public static final p f8685q = new j("scaleY");

    public static final p f8686r = new k("rotation");

    public static final p f8687s = new l("rotationX");

    public static final p f8688t = new m("rotationY");

    public static final p f8689u = new n("x");

    public static final p f8690v = new a("y");

    public static final p f8691w = new C0071b("z");

    public static final p f8692x = new c("alpha");

    public static final p f8693y = new d("scrollX");

    public static final p f8694z = new e("scrollY");

    final Object f8698d;

    final androidx.dynamicanimation.animation.c f8699e;

    private float f8704j;

    float f8695a = 0.0f;

    float f8696b = Float.MAX_VALUE;

    boolean f8697c = false;

    boolean f8700f = false;

    float f8701g = Float.MAX_VALUE;

    float f8702h = -Float.MAX_VALUE;

    private long f8703i = 0;

    private final ArrayList f8705k = new ArrayList();

    private final ArrayList f8706l = new ArrayList();

    static class a extends p {
        a(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return view.getY();
        }

        @Override
        public void b(View view, float f10) {
            view.setY(f10);
        }
    }

    static class C0071b extends p {
        C0071b(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return ViewCompat.getZ(view);
        }

        @Override
        public void b(View view, float f10) {
            ViewCompat.setZ(view, f10);
        }
    }

    static class c extends p {
        c(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return view.getAlpha();
        }

        @Override
        public void b(View view, float f10) {
            view.setAlpha(f10);
        }
    }

    static class d extends p {
        d(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return view.getScrollX();
        }

        @Override
        public void b(View view, float f10) {
            view.setScrollX((int) f10);
        }
    }

    static class e extends p {
        e(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return view.getScrollY();
        }

        @Override
        public void b(View view, float f10) {
            view.setScrollY((int) f10);
        }
    }

    static class f extends p {
        f(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return view.getTranslationX();
        }

        @Override
        public void b(View view, float f10) {
            view.setTranslationX(f10);
        }
    }

    static class g extends p {
        g(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return view.getTranslationY();
        }

        @Override
        public void b(View view, float f10) {
            view.setTranslationY(f10);
        }
    }

    static class h extends p {
        h(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return ViewCompat.getTranslationZ(view);
        }

        @Override
        public void b(View view, float f10) {
            ViewCompat.setTranslationZ(view, f10);
        }
    }

    static class i extends p {
        i(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return view.getScaleX();
        }

        @Override
        public void b(View view, float f10) {
            view.setScaleX(f10);
        }
    }

    static class j extends p {
        j(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return view.getScaleY();
        }

        @Override
        public void b(View view, float f10) {
            view.setScaleY(f10);
        }
    }

    static class k extends p {
        k(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return view.getRotation();
        }

        @Override
        public void b(View view, float f10) {
            view.setRotation(f10);
        }
    }

    static class l extends p {
        l(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return view.getRotationX();
        }

        @Override
        public void b(View view, float f10) {
            view.setRotationX(f10);
        }
    }

    static class m extends p {
        m(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return view.getRotationY();
        }

        @Override
        public void b(View view, float f10) {
            view.setRotationY(f10);
        }
    }

    static class n extends p {
        n(String str) {
            super(str, null);
        }

        @Override
        public float a(View view) {
            return view.getX();
        }

        @Override
        public void b(View view, float f10) {
            view.setX(f10);
        }
    }

    static class o {

        float f8707a;

        float f8708b;

        o() {
        }
    }

    public static abstract class p extends androidx.dynamicanimation.animation.c {
        p(String str, f fVar) {
            this(str);
        }

        private p(String str) {
            super(str);
        }
    }

    b(Object obj, androidx.dynamicanimation.animation.c cVar) {
        this.f8698d = obj;
        this.f8699e = cVar;
        if (cVar == f8686r || cVar == f8687s || cVar == f8688t) {
            this.f8704j = 0.1f;
            return;
        }
        if (cVar == f8692x) {
            this.f8704j = 0.00390625f;
        } else if (cVar == f8684p || cVar == f8685q) {
            this.f8704j = 0.00390625f;
        } else {
            this.f8704j = 1.0f;
        }
    }

    private void b(boolean z10) {
        this.f8700f = false;
        androidx.dynamicanimation.animation.a.d().g(this);
        this.f8703i = 0L;
        this.f8697c = false;
        for (int i10 = 0; i10 < this.f8705k.size(); i10++) {
            if (this.f8705k.get(i10) != null) {
                android.support.v4.media.session.c.a(this.f8705k.get(i10));
                throw null;
            }
        }
        f(this.f8705k);
    }

    private float c() {
        return this.f8699e.a(this.f8698d);
    }

    private static void f(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    private void j() {
        if (this.f8700f) {
            return;
        }
        this.f8700f = true;
        if (!this.f8697c) {
            this.f8696b = c();
        }
        float f10 = this.f8696b;
        if (f10 > this.f8701g || f10 < this.f8702h) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        androidx.dynamicanimation.animation.a.d().a(this, 0L);
    }

    @Override
    public boolean a(long j10) {
        long j11 = this.f8703i;
        if (j11 == 0) {
            this.f8703i = j10;
            g(this.f8696b);
            return false;
        }
        this.f8703i = j10;
        boolean zK = k(j10 - j11);
        float fMin = Math.min(this.f8696b, this.f8701g);
        this.f8696b = fMin;
        float fMax = Math.max(fMin, this.f8702h);
        this.f8696b = fMax;
        g(fMax);
        if (zK) {
            b(false);
        }
        return zK;
    }

    float d() {
        return this.f8704j * 0.75f;
    }

    public boolean e() {
        return this.f8700f;
    }

    void g(float f10) {
        this.f8699e.b(this.f8698d, f10);
        for (int i10 = 0; i10 < this.f8706l.size(); i10++) {
            if (this.f8706l.get(i10) != null) {
                android.support.v4.media.session.c.a(this.f8706l.get(i10));
                throw null;
            }
        }
        f(this.f8706l);
    }

    public b h(float f10) {
        this.f8696b = f10;
        this.f8697c = true;
        return this;
    }

    public void i() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        if (this.f8700f) {
            return;
        }
        j();
    }

    abstract boolean k(long j10);
}
