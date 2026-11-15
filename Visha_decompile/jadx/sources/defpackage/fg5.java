package defpackage;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.collection.SparseArrayCompat;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.animation.PathInterpolatorCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.lang.ref.WeakReference;

public abstract class fg5 {
    public static SparseArrayCompat b;
    public static final Interpolator a = new LinearInterpolator();
    public static JsonReader.a c = JsonReader.a.a("t", "s", "e", "o", CmcdData.OBJECT_TYPE_INIT_SEGMENT, CmcdData.STREAMING_FORMAT_HLS, TypedValues.TransitionType.S_TO, "ti");
    public static JsonReader.a d = JsonReader.a.a("x", "y");

    public static WeakReference a(int i) {
        WeakReference weakReference;
        synchronized (fg5.class) {
            weakReference = (WeakReference) g().get(i);
        }
        return weakReference;
    }

    public static Interpolator b(PointF pointF, PointF pointF2) {
        Interpolator interpolatorCreate;
        pointF.x = xp6.b(pointF.x, -1.0f, 1.0f);
        pointF.y = xp6.b(pointF.y, -100.0f, 100.0f);
        pointF2.x = xp6.b(pointF2.x, -1.0f, 1.0f);
        float fB = xp6.b(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fB;
        int i = plb.i(pointF.x, pointF.y, pointF2.x, fB);
        WeakReference weakReferenceA = yh5.e() ? null : a(i);
        Interpolator interpolator = weakReferenceA != null ? (Interpolator) weakReferenceA.get() : null;
        if (weakReferenceA == null || interpolator == null) {
            try {
                interpolatorCreate = PathInterpolatorCompat.create(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e) {
                interpolatorCreate = "The Path cannot loop back on itself.".equals(e.getMessage()) ? PathInterpolatorCompat.create(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
            }
            interpolator = interpolatorCreate;
            if (!yh5.e()) {
                try {
                    h(i, new WeakReference(interpolator));
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
            }
        }
        return interpolator;
    }

    public static dg5 c(JsonReader jsonReader, ur5 ur5Var, float f, onb onbVar, boolean z, boolean z2) {
        if (z && z2) {
            return e(ur5Var, jsonReader, f, onbVar);
        }
        return z ? d(ur5Var, jsonReader, f, onbVar) : f(jsonReader, f, onbVar);
    }

    public static dg5 d(ur5 ur5Var, JsonReader jsonReader, float f, onb onbVar) {
        Interpolator interpolatorB;
        Object obj;
        jsonReader.d();
        PointF pointFE = null;
        Object objA = null;
        Object objA2 = null;
        PointF pointFE2 = null;
        PointF pointFE3 = null;
        float fN = 0.0f;
        boolean z = false;
        PointF pointFE4 = null;
        while (jsonReader.h()) {
            switch (jsonReader.I(c)) {
                case 0:
                    fN = (float) jsonReader.n();
                    break;
                case 1:
                    objA2 = onbVar.a(jsonReader, f);
                    break;
                case 2:
                    objA = onbVar.a(jsonReader, f);
                    break;
                case 3:
                    pointFE = lc5.e(jsonReader, 1.0f);
                    break;
                case 4:
                    pointFE4 = lc5.e(jsonReader, 1.0f);
                    break;
                case 5:
                    z = jsonReader.o() == 1;
                    break;
                case 6:
                    pointFE2 = lc5.e(jsonReader, f);
                    break;
                case 7:
                    pointFE3 = lc5.e(jsonReader, f);
                    break;
                default:
                    jsonReader.K();
                    break;
            }
        }
        jsonReader.g();
        if (z) {
            interpolatorB = a;
            obj = objA2;
        } else {
            interpolatorB = (pointFE == null || pointFE4 == null) ? a : b(pointFE, pointFE4);
            obj = objA;
        }
        dg5 dg5Var = new dg5(ur5Var, objA2, obj, interpolatorB, fN, null);
        dg5Var.o = pointFE2;
        dg5Var.p = pointFE3;
        return dg5Var;
    }

    /* JADX WARN: Code duplicated, block: B:93:0x01ea  */
    public static dg5 e(ur5 ur5Var, JsonReader jsonReader, float f, onb onbVar) {
        Interpolator interpolatorB;
        Interpolator interpolatorB2;
        Interpolator interpolatorB3;
        Object obj;
        dg5 dg5Var;
        PointF pointF;
        float f2;
        PointF pointF2;
        jsonReader.d();
        PointF pointFE = null;
        boolean z = false;
        PointF pointFE2 = null;
        PointF pointFE3 = null;
        PointF pointF3 = null;
        Object objA = null;
        PointF pointF4 = null;
        PointF pointF5 = null;
        PointF pointF6 = null;
        float fN = 0.0f;
        PointF pointFE4 = null;
        Object objA2 = null;
        while (jsonReader.h()) {
            switch (jsonReader.I(c)) {
                case 0:
                    pointF = pointFE;
                    fN = (float) jsonReader.n();
                    pointFE = pointF;
                    break;
                case 1:
                    pointF = pointFE;
                    objA = onbVar.a(jsonReader, f);
                    pointFE = pointF;
                    break;
                case 2:
                    pointF = pointFE;
                    objA2 = onbVar.a(jsonReader, f);
                    pointFE = pointF;
                    break;
                case 3:
                    pointF = pointFE;
                    f2 = fN;
                    PointF pointF7 = pointFE4;
                    if (jsonReader.G() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.d();
                        float fN2 = 0.0f;
                        float fN3 = 0.0f;
                        float fN4 = 0.0f;
                        float fN5 = 0.0f;
                        while (jsonReader.h()) {
                            int I = jsonReader.I(d);
                            if (I == 0) {
                                JsonReader.Token tokenG = jsonReader.G();
                                JsonReader.Token token = JsonReader.Token.NUMBER;
                                if (tokenG == token) {
                                    fN4 = (float) jsonReader.n();
                                    fN2 = fN4;
                                } else {
                                    jsonReader.b();
                                    fN2 = (float) jsonReader.n();
                                    fN4 = jsonReader.G() == token ? (float) jsonReader.n() : fN2;
                                    jsonReader.e();
                                }
                            } else if (I != 1) {
                                jsonReader.K();
                            } else {
                                JsonReader.Token tokenG2 = jsonReader.G();
                                JsonReader.Token token2 = JsonReader.Token.NUMBER;
                                if (tokenG2 == token2) {
                                    fN5 = (float) jsonReader.n();
                                    fN3 = fN5;
                                } else {
                                    jsonReader.b();
                                    fN3 = (float) jsonReader.n();
                                    fN5 = jsonReader.G() == token2 ? (float) jsonReader.n() : fN3;
                                    jsonReader.e();
                                }
                            }
                        }
                        PointF pointF8 = new PointF(fN2, fN3);
                        PointF pointF9 = new PointF(fN4, fN5);
                        jsonReader.g();
                        pointF4 = pointF9;
                        pointF3 = pointF8;
                        pointFE4 = pointF7;
                        fN = f2;
                    } else {
                        pointFE2 = lc5.e(jsonReader, f);
                        fN = f2;
                        pointFE4 = pointF7;
                    }
                    pointFE = pointF;
                    break;
                case 4:
                    if (jsonReader.G() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.d();
                        float fN6 = 0.0f;
                        float f3 = 0.0f;
                        float fN7 = 0.0f;
                        float fN8 = 0.0f;
                        while (jsonReader.h()) {
                            pointFE4 = pointFE4;
                            int I2 = jsonReader.I(d);
                            if (I2 != 0) {
                                pointF2 = pointFE;
                                if (I2 != 1) {
                                    jsonReader.K();
                                } else {
                                    JsonReader.Token tokenG3 = jsonReader.G();
                                    JsonReader.Token token3 = JsonReader.Token.NUMBER;
                                    if (tokenG3 == token3) {
                                        fN8 = (float) jsonReader.n();
                                        fN = fN;
                                        f3 = fN8;
                                    } else {
                                        float f4 = fN;
                                        jsonReader.b();
                                        float fN9 = (float) jsonReader.n();
                                        float fN10 = jsonReader.G() == token3 ? (float) jsonReader.n() : fN9;
                                        jsonReader.e();
                                        fN = f4;
                                        pointFE = pointF2;
                                        fN8 = fN10;
                                        f3 = fN9;
                                    }
                                }
                            } else {
                                pointF2 = pointFE;
                                float f5 = fN;
                                JsonReader.Token tokenG4 = jsonReader.G();
                                JsonReader.Token token4 = JsonReader.Token.NUMBER;
                                if (tokenG4 == token4) {
                                    fN7 = (float) jsonReader.n();
                                    fN = f5;
                                    fN6 = fN7;
                                } else {
                                    jsonReader.b();
                                    fN6 = (float) jsonReader.n();
                                    fN7 = jsonReader.G() == token4 ? (float) jsonReader.n() : fN6;
                                    jsonReader.e();
                                    fN = f5;
                                }
                            }
                            pointFE = pointF2;
                        }
                        pointF = pointFE;
                        f2 = fN;
                        PointF pointF10 = new PointF(fN6, f3);
                        PointF pointF11 = new PointF(fN7, fN8);
                        jsonReader.g();
                        pointF6 = pointF11;
                        pointF5 = pointF10;
                        fN = f2;
                    } else {
                        pointF = pointFE;
                        pointFE3 = lc5.e(jsonReader, f);
                    }
                    pointFE = pointF;
                    break;
                case 5:
                    z = jsonReader.o() == 1;
                    break;
                case 6:
                    pointFE4 = lc5.e(jsonReader, f);
                    break;
                case 7:
                    pointFE = lc5.e(jsonReader, f);
                    break;
                default:
                    jsonReader.K();
                    break;
            }
        }
        PointF pointF12 = pointFE;
        float f6 = fN;
        PointF pointF13 = pointFE4;
        jsonReader.g();
        if (z) {
            interpolatorB = a;
            obj = objA;
        } else {
            if (pointFE2 == null || pointFE3 == null) {
                if (pointF3 == null || pointF4 == null || pointF5 == null || pointF6 == null) {
                    interpolatorB = a;
                } else {
                    interpolatorB2 = b(pointF3, pointF5);
                    interpolatorB3 = b(pointF4, pointF6);
                    obj = objA2;
                    interpolatorB = null;
                }
                if (interpolatorB2 != null || interpolatorB3 == null) {
                    dg5Var = new dg5(ur5Var, objA, obj, interpolatorB, f6, null);
                } else {
                    dg5Var = new dg5(ur5Var, objA, obj, interpolatorB2, interpolatorB3, f6, null);
                }
                dg5Var.o = pointF13;
                dg5Var.p = pointF12;
                return dg5Var;
            }
            interpolatorB = b(pointFE2, pointFE3);
            obj = objA2;
        }
        interpolatorB2 = null;
        interpolatorB3 = null;
        if (interpolatorB2 != null) {
            dg5Var = new dg5(ur5Var, objA, obj, interpolatorB, f6, null);
        } else {
            dg5Var = new dg5(ur5Var, objA, obj, interpolatorB, f6, null);
        }
        dg5Var.o = pointF13;
        dg5Var.p = pointF12;
        return dg5Var;
    }

    public static dg5 f(JsonReader jsonReader, float f, onb onbVar) {
        return new dg5(onbVar.a(jsonReader, f));
    }

    public static SparseArrayCompat g() {
        if (b == null) {
            b = new SparseArrayCompat();
        }
        return b;
    }

    public static void h(int i, WeakReference weakReference) {
        synchronized (fg5.class) {
            b.put(i, weakReference);
        }
    }
}
