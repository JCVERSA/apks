package v0;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class d extends androidx.constraintlayout.core.motion.utils.i {

    static class a extends d {
        a() {
        }

        @Override
        public void h(View view, float f10) {
            view.setAlpha(a(f10));
        }
    }

    public static class b extends d {

        String f73422f;

        SparseArray f73423g;

        float[] f73424h;

        public b(String str, SparseArray sparseArray) {
            this.f73422f = str.split(",")[1];
            this.f73423g = sparseArray;
        }

        @Override
        public void c(int i10, float f10) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override
        public void e(int i10) {
            int size = this.f73423g.size();
            int iH = ((ConstraintAttribute) this.f73423g.valueAt(0)).h();
            double[] dArr = new double[size];
            this.f73424h = new float[iH];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, iH);
            for (int i11 = 0; i11 < size; i11++) {
                int iKeyAt = this.f73423g.keyAt(i11);
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f73423g.valueAt(i11);
                dArr[i11] = ((double) iKeyAt) * 0.01d;
                constraintAttribute.f(this.f73424h);
                int i12 = 0;
                while (true) {
                    float[] fArr = this.f73424h;
                    if (i12 < fArr.length) {
                        dArr2[i11][i12] = fArr[i12];
                        i12++;
                    }
                }
            }
            this.f6488a = androidx.constraintlayout.core.motion.utils.b.a(i10, dArr, dArr2);
        }

        @Override
        public void h(View view, float f10) {
            this.f6488a.e(f10, this.f73424h);
            v0.a.b((ConstraintAttribute) this.f73423g.valueAt(0), view, this.f73424h);
        }

        public void i(int i10, ConstraintAttribute constraintAttribute) {
            this.f73423g.append(i10, constraintAttribute);
        }
    }

    static class c extends d {
        c() {
        }

        @Override
        public void h(View view, float f10) {
            view.setElevation(a(f10));
        }
    }

    static class e extends d {
        e() {
        }

        @Override
        public void h(View view, float f10) {
            view.setPivotX(a(f10));
        }
    }

    static class f extends d {
        f() {
        }

        @Override
        public void h(View view, float f10) {
            view.setPivotY(a(f10));
        }
    }

    static class g extends d {

        boolean f73425f = false;

        g() {
        }

        @Override
        public void h(View view, float f10) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(a(f10));
                return;
            }
            if (this.f73425f) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f73425f = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(f10)));
                } catch (IllegalAccessException e10) {
                    Log.e("ViewSpline", "unable to setProgress", e10);
                } catch (InvocationTargetException e11) {
                    Log.e("ViewSpline", "unable to setProgress", e11);
                }
            }
        }
    }

    static class h extends d {
        h() {
        }

        @Override
        public void h(View view, float f10) {
            view.setRotation(a(f10));
        }
    }

    static class i extends d {
        i() {
        }

        @Override
        public void h(View view, float f10) {
            view.setRotationX(a(f10));
        }
    }

    static class j extends d {
        j() {
        }

        @Override
        public void h(View view, float f10) {
            view.setRotationY(a(f10));
        }
    }

    static class k extends d {
        k() {
        }

        @Override
        public void h(View view, float f10) {
            view.setScaleX(a(f10));
        }
    }

    static class l extends d {
        l() {
        }

        @Override
        public void h(View view, float f10) {
            view.setScaleY(a(f10));
        }
    }

    static class m extends d {
        m() {
        }

        @Override
        public void h(View view, float f10) {
            view.setTranslationX(a(f10));
        }
    }

    static class n extends d {
        n() {
        }

        @Override
        public void h(View view, float f10) {
            view.setTranslationY(a(f10));
        }
    }

    static class o extends d {
        o() {
        }

        @Override
        public void h(View view, float f10) {
            view.setTranslationZ(a(f10));
        }
    }

    public static d f(String str, SparseArray sparseArray) {
        return new b(str, sparseArray);
    }

    public static d g(String str) {
        str.hashCode();
        switch (str) {
            case "rotationX":
                return new i();
            case "rotationY":
                return new j();
            case "translationX":
                return new m();
            case "translationY":
                return new n();
            case "translationZ":
                return new o();
            case "progress":
                return new g();
            case "scaleX":
                return new k();
            case "scaleY":
                return new l();
            case "waveVariesBy":
                return new a();
            case "transformPivotX":
                return new e();
            case "transformPivotY":
                return new f();
            case "rotation":
                return new h();
            case "elevation":
                return new c();
            case "transitionPathRotate":
                return new C0907d();
            case "alpha":
                return new a();
            case "waveOffset":
                return new a();
            default:
                return null;
        }
    }

    public abstract void h(View view, float f10);

    public static class C0907d extends d {
        public void i(View view, float f10, double d10, double d11) {
            view.setRotation(a(f10) + ((float) Math.toDegrees(Math.atan2(d11, d10))));
        }

        @Override
        public void h(View view, float f10) {
        }
    }
}
