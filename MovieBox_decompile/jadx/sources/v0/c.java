package v0;

import android.util.Log;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class c extends KeyCycleOscillator {

    static class a extends c {
        a() {
        }

        @Override
        public void j(View view, float f10) {
            view.setAlpha(a(f10));
        }
    }

    static class b extends c {

        float[] f73419h = new float[1];

        protected ConstraintAttribute f73420i;

        b() {
        }

        @Override
        protected void c(Object obj) {
            this.f73420i = (ConstraintAttribute) obj;
        }

        @Override
        public void j(View view, float f10) {
            this.f73419h[0] = a(f10);
            v0.a.b(this.f73420i, view, this.f73419h);
        }
    }

    static class C0906c extends c {
        C0906c() {
        }

        @Override
        public void j(View view, float f10) {
            view.setElevation(a(f10));
        }
    }

    static class e extends c {

        boolean f73421h = false;

        e() {
        }

        @Override
        public void j(View view, float f10) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(a(f10));
                return;
            }
            if (this.f73421h) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f73421h = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(f10)));
                } catch (IllegalAccessException e10) {
                    Log.e("ViewOscillator", "unable to setProgress", e10);
                } catch (InvocationTargetException e11) {
                    Log.e("ViewOscillator", "unable to setProgress", e11);
                }
            }
        }
    }

    static class f extends c {
        f() {
        }

        @Override
        public void j(View view, float f10) {
            view.setRotation(a(f10));
        }
    }

    static class g extends c {
        g() {
        }

        @Override
        public void j(View view, float f10) {
            view.setRotationX(a(f10));
        }
    }

    static class h extends c {
        h() {
        }

        @Override
        public void j(View view, float f10) {
            view.setRotationY(a(f10));
        }
    }

    static class i extends c {
        i() {
        }

        @Override
        public void j(View view, float f10) {
            view.setScaleX(a(f10));
        }
    }

    static class j extends c {
        j() {
        }

        @Override
        public void j(View view, float f10) {
            view.setScaleY(a(f10));
        }
    }

    static class k extends c {
        k() {
        }

        @Override
        public void j(View view, float f10) {
            view.setTranslationX(a(f10));
        }
    }

    static class l extends c {
        l() {
        }

        @Override
        public void j(View view, float f10) {
            view.setTranslationY(a(f10));
        }
    }

    static class m extends c {
        m() {
        }

        @Override
        public void j(View view, float f10) {
            view.setTranslationZ(a(f10));
        }
    }

    public static c i(String str) {
        if (str.startsWith("CUSTOM")) {
            return new b();
        }
        switch (str) {
            case "rotationX":
                return new g();
            case "rotationY":
                return new h();
            case "translationX":
                return new k();
            case "translationY":
                return new l();
            case "translationZ":
                return new m();
            case "progress":
                return new e();
            case "scaleX":
                return new i();
            case "scaleY":
                return new j();
            case "waveVariesBy":
                return new a();
            case "rotation":
                return new f();
            case "elevation":
                return new C0906c();
            case "transitionPathRotate":
                return new d();
            case "alpha":
                return new a();
            case "waveOffset":
                return new a();
            default:
                return null;
        }
    }

    public abstract void j(View view, float f10);

    public static class d extends c {
        public void k(View view, float f10, double d10, double d11) {
            view.setRotation(a(f10) + ((float) Math.toDegrees(Math.atan2(d11, d10))));
        }

        @Override
        public void j(View view, float f10) {
        }
    }
}
