package v0;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.n;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class f extends n {

    static class a extends f {
        a() {
        }

        @Override
        public boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setAlpha(f(f10, j10, view, dVar));
            return this.f6528h;
        }
    }

    public static class b extends f {

        String f73431l;

        SparseArray f73432m;

        SparseArray f73433n = new SparseArray();

        float[] f73434o;

        float[] f73435p;

        public b(String str, SparseArray sparseArray) {
            this.f73431l = str.split(",")[1];
            this.f73432m = sparseArray;
        }

        @Override
        public void b(int i10, float f10, float f11, int i11, float f12) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        @Override
        public void e(int i10) {
            int size = this.f73432m.size();
            int iH = ((ConstraintAttribute) this.f73432m.valueAt(0)).h();
            double[] dArr = new double[size];
            int i11 = iH + 2;
            this.f73434o = new float[i11];
            this.f73435p = new float[iH];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, i11);
            for (int i12 = 0; i12 < size; i12++) {
                int iKeyAt = this.f73432m.keyAt(i12);
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f73432m.valueAt(i12);
                float[] fArr = (float[]) this.f73433n.valueAt(i12);
                dArr[i12] = ((double) iKeyAt) * 0.01d;
                constraintAttribute.f(this.f73434o);
                int i13 = 0;
                while (true) {
                    float[] fArr2 = this.f73434o;
                    if (i13 < fArr2.length) {
                        dArr2[i12][i13] = fArr2[i13];
                        i13++;
                    }
                }
                double[] dArr3 = dArr2[i12];
                dArr3[iH] = fArr[0];
                dArr3[iH + 1] = fArr[1];
            }
            this.f6521a = androidx.constraintlayout.core.motion.utils.b.a(i10, dArr, dArr2);
        }

        @Override
        public boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
            this.f6521a.e(f10, this.f73434o);
            float[] fArr = this.f73434o;
            float f11 = fArr[fArr.length - 2];
            float f12 = fArr[fArr.length - 1];
            long j11 = j10 - this.f6529i;
            if (Float.isNaN(this.f6530j)) {
                float fA = dVar.a(view, this.f73431l, 0);
                this.f6530j = fA;
                if (Float.isNaN(fA)) {
                    this.f6530j = 0.0f;
                }
            }
            float f13 = (float) ((((double) this.f6530j) + ((j11 * 1.0E-9d) * ((double) f11))) % 1.0d);
            this.f6530j = f13;
            this.f6529i = j10;
            float fA2 = a(f13);
            this.f6528h = false;
            int i10 = 0;
            while (true) {
                float[] fArr2 = this.f73435p;
                if (i10 >= fArr2.length) {
                    break;
                }
                boolean z10 = this.f6528h;
                float f14 = this.f73434o[i10];
                this.f6528h = z10 | (((double) f14) != 0.0d);
                fArr2[i10] = (f14 * fA2) + f12;
                i10++;
            }
            v0.a.b((ConstraintAttribute) this.f73432m.valueAt(0), view, this.f73435p);
            if (f11 != 0.0f) {
                this.f6528h = true;
            }
            return this.f6528h;
        }

        public void j(int i10, ConstraintAttribute constraintAttribute, float f10, int i11, float f11) {
            this.f73432m.append(i10, constraintAttribute);
            this.f73433n.append(i10, new float[]{f10, f11});
            this.f6522b = Math.max(this.f6522b, i11);
        }
    }

    static class c extends f {
        c() {
        }

        @Override
        public boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setElevation(f(f10, j10, view, dVar));
            return this.f6528h;
        }
    }

    public static class d extends f {
        @Override
        public boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
            return this.f6528h;
        }

        public boolean j(View view, androidx.constraintlayout.core.motion.utils.d dVar, float f10, long j10, double d10, double d11) {
            view.setRotation(f(f10, j10, view, dVar) + ((float) Math.toDegrees(Math.atan2(d11, d10))));
            return this.f6528h;
        }
    }

    static class e extends f {

        boolean f73436l = false;

        e() {
        }

        @Override
        public boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(f(f10, j10, view, dVar));
            } else {
                if (this.f73436l) {
                    return false;
                }
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.f73436l = true;
                    method = null;
                }
                Method method2 = method;
                if (method2 != null) {
                    try {
                        method2.invoke(view, Float.valueOf(f(f10, j10, view, dVar)));
                    } catch (IllegalAccessException e10) {
                        Log.e("ViewTimeCycle", "unable to setProgress", e10);
                    } catch (InvocationTargetException e11) {
                        Log.e("ViewTimeCycle", "unable to setProgress", e11);
                    }
                }
            }
            return this.f6528h;
        }
    }

    static class C0908f extends f {
        C0908f() {
        }

        @Override
        public boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setRotation(f(f10, j10, view, dVar));
            return this.f6528h;
        }
    }

    static class g extends f {
        g() {
        }

        @Override
        public boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setRotationX(f(f10, j10, view, dVar));
            return this.f6528h;
        }
    }

    static class h extends f {
        h() {
        }

        @Override
        public boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setRotationY(f(f10, j10, view, dVar));
            return this.f6528h;
        }
    }

    static class i extends f {
        i() {
        }

        @Override
        public boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setScaleX(f(f10, j10, view, dVar));
            return this.f6528h;
        }
    }

    static class j extends f {
        j() {
        }

        @Override
        public boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setScaleY(f(f10, j10, view, dVar));
            return this.f6528h;
        }
    }

    static class k extends f {
        k() {
        }

        @Override
        public boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setTranslationX(f(f10, j10, view, dVar));
            return this.f6528h;
        }
    }

    static class l extends f {
        l() {
        }

        @Override
        public boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setTranslationY(f(f10, j10, view, dVar));
            return this.f6528h;
        }
    }

    static class m extends f {
        m() {
        }

        @Override
        public boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar) {
            view.setTranslationZ(f(f10, j10, view, dVar));
            return this.f6528h;
        }
    }

    public static f g(String str, SparseArray sparseArray) {
        return new b(str, sparseArray);
    }

    public static f h(String str, long j10) {
        f gVar;
        str.hashCode();
        switch (str) {
            case "rotationX":
                gVar = new g();
                break;
            case "rotationY":
                gVar = new h();
                break;
            case "translationX":
                gVar = new k();
                break;
            case "translationY":
                gVar = new l();
                break;
            case "translationZ":
                gVar = new m();
                break;
            case "progress":
                gVar = new e();
                break;
            case "scaleX":
                gVar = new i();
                break;
            case "scaleY":
                gVar = new j();
                break;
            case "rotation":
                gVar = new C0908f();
                break;
            case "elevation":
                gVar = new c();
                break;
            case "transitionPathRotate":
                gVar = new d();
                break;
            case "alpha":
                gVar = new a();
                break;
            default:
                return null;
        }
        gVar.c(j10);
        return gVar;
    }

    public float f(float f10, long j10, View view, androidx.constraintlayout.core.motion.utils.d dVar) {
        this.f6521a.e(f10, this.f6527g);
        float[] fArr = this.f6527g;
        float f11 = fArr[1];
        if (f11 == 0.0f) {
            this.f6528h = false;
            return fArr[2];
        }
        if (Float.isNaN(this.f6530j)) {
            float fA = dVar.a(view, this.f6526f, 0);
            this.f6530j = fA;
            if (Float.isNaN(fA)) {
                this.f6530j = 0.0f;
            }
        }
        float f12 = (float) ((((double) this.f6530j) + (((j10 - this.f6529i) * 1.0E-9d) * ((double) f11))) % 1.0d);
        this.f6530j = f12;
        dVar.b(view, this.f6526f, 0, f12);
        this.f6529i = j10;
        float f13 = this.f6527g[0];
        float fA2 = (a(this.f6530j) * f13) + this.f6527g[2];
        this.f6528h = (f13 == 0.0f && f11 == 0.0f) ? false : true;
        return fA2;
    }

    public abstract boolean i(View view, float f10, long j10, androidx.constraintlayout.core.motion.utils.d dVar);
}
