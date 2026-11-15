package w4;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.collection.y0;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.lang.ref.WeakReference;

abstract class t {

    private static y0 f74204b;

    private static final Interpolator f74203a = new LinearInterpolator();

    static JsonReader.a f74205c = JsonReader.a.a("t", "s", "e", "o", "i", "h", "to", "ti");

    static JsonReader.a f74206d = JsonReader.a.a("x", "y");

    private static WeakReference a(int i10) {
        WeakReference weakReference;
        synchronized (t.class) {
            weakReference = (WeakReference) g().g(i10);
        }
        return weakReference;
    }

    private static Interpolator b(PointF pointF, PointF pointF2) {
        Interpolator interpolatorCreate;
        pointF.x = x4.k.b(pointF.x, -1.0f, 1.0f);
        pointF.y = x4.k.b(pointF.y, -100.0f, 100.0f);
        pointF2.x = x4.k.b(pointF2.x, -1.0f, 1.0f);
        float fB = x4.k.b(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fB;
        int i10 = x4.l.i(pointF.x, pointF.y, pointF2.x, fB);
        WeakReference weakReferenceA = com.airbnb.lottie.d.e() ? null : a(i10);
        Interpolator interpolator = weakReferenceA != null ? (Interpolator) weakReferenceA.get() : null;
        if (weakReferenceA == null || interpolator == null) {
            try {
                interpolatorCreate = PathInterpolatorCompat.create(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e10) {
                interpolatorCreate = "The Path cannot loop back on itself.".equals(e10.getMessage()) ? PathInterpolatorCompat.create(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
            }
            interpolator = interpolatorCreate;
            if (!com.airbnb.lottie.d.e()) {
                try {
                    h(i10, new WeakReference(interpolator));
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
            }
        }
        return interpolator;
    }

    static y4.a c(JsonReader jsonReader, com.airbnb.lottie.h hVar, float f10, n0 n0Var, boolean z10, boolean z11) {
        if (z10 && z11) {
            return e(hVar, jsonReader, f10, n0Var);
        }
        return z10 ? d(hVar, jsonReader, f10, n0Var) : f(jsonReader, f10, n0Var);
    }

    private static y4.a d(com.airbnb.lottie.h hVar, JsonReader jsonReader, float f10, n0 n0Var) {
        Interpolator interpolatorB;
        Object obj;
        jsonReader.h();
        PointF pointFE = null;
        Object objA = null;
        Object objA2 = null;
        PointF pointFE2 = null;
        PointF pointFE3 = null;
        float fO = 0.0f;
        boolean z10 = false;
        PointF pointFE4 = null;
        while (jsonReader.m()) {
            switch (jsonReader.v(f74205c)) {
                case 0:
                    fO = (float) jsonReader.o();
                    break;
                case 1:
                    objA2 = n0Var.a(jsonReader, f10);
                    break;
                case 2:
                    objA = n0Var.a(jsonReader, f10);
                    break;
                case 3:
                    pointFE = s.e(jsonReader, 1.0f);
                    break;
                case 4:
                    pointFE4 = s.e(jsonReader, 1.0f);
                    break;
                case 5:
                    z10 = jsonReader.p() == 1;
                    break;
                case 6:
                    pointFE2 = s.e(jsonReader, f10);
                    break;
                case 7:
                    pointFE3 = s.e(jsonReader, f10);
                    break;
                default:
                    jsonReader.x();
                    break;
            }
        }
        jsonReader.l();
        if (z10) {
            interpolatorB = f74203a;
            obj = objA2;
        } else {
            interpolatorB = (pointFE == null || pointFE4 == null) ? f74203a : b(pointFE, pointFE4);
            obj = objA;
        }
        y4.a aVar = new y4.a(hVar, objA2, obj, interpolatorB, fO, null);
        aVar.f76148o = pointFE2;
        aVar.f76149p = pointFE3;
        return aVar;
    }

    /* JADX WARN: Code duplicated, block: B:93:0x01ea  */
    private static y4.a e(com.airbnb.lottie.h hVar, JsonReader jsonReader, float f10, n0 n0Var) {
        Interpolator interpolatorB;
        Interpolator interpolatorB2;
        Interpolator interpolatorB3;
        Object obj;
        y4.a aVar;
        PointF pointF;
        float f11;
        PointF pointF2;
        jsonReader.h();
        PointF pointFE = null;
        boolean z10 = false;
        PointF pointFE2 = null;
        PointF pointFE3 = null;
        PointF pointF3 = null;
        Object objA = null;
        PointF pointF4 = null;
        PointF pointF5 = null;
        PointF pointF6 = null;
        float fO = 0.0f;
        PointF pointFE4 = null;
        Object objA2 = null;
        while (jsonReader.m()) {
            switch (jsonReader.v(f74205c)) {
                case 0:
                    pointF = pointFE;
                    fO = (float) jsonReader.o();
                    pointFE = pointF;
                    break;
                case 1:
                    pointF = pointFE;
                    objA = n0Var.a(jsonReader, f10);
                    pointFE = pointF;
                    break;
                case 2:
                    pointF = pointFE;
                    objA2 = n0Var.a(jsonReader, f10);
                    pointFE = pointF;
                    break;
                case 3:
                    pointF = pointFE;
                    f11 = fO;
                    PointF pointF7 = pointFE4;
                    if (jsonReader.t() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.h();
                        float fO2 = 0.0f;
                        float fO3 = 0.0f;
                        float fO4 = 0.0f;
                        float fO5 = 0.0f;
                        while (jsonReader.m()) {
                            int iV = jsonReader.v(f74206d);
                            if (iV == 0) {
                                JsonReader.Token tokenT = jsonReader.t();
                                JsonReader.Token token = JsonReader.Token.NUMBER;
                                if (tokenT == token) {
                                    fO4 = (float) jsonReader.o();
                                    fO2 = fO4;
                                } else {
                                    jsonReader.d();
                                    fO2 = (float) jsonReader.o();
                                    fO4 = jsonReader.t() == token ? (float) jsonReader.o() : fO2;
                                    jsonReader.k();
                                }
                            } else if (iV != 1) {
                                jsonReader.x();
                            } else {
                                JsonReader.Token tokenT2 = jsonReader.t();
                                JsonReader.Token token2 = JsonReader.Token.NUMBER;
                                if (tokenT2 == token2) {
                                    fO5 = (float) jsonReader.o();
                                    fO3 = fO5;
                                } else {
                                    jsonReader.d();
                                    fO3 = (float) jsonReader.o();
                                    fO5 = jsonReader.t() == token2 ? (float) jsonReader.o() : fO3;
                                    jsonReader.k();
                                }
                            }
                        }
                        PointF pointF8 = new PointF(fO2, fO3);
                        PointF pointF9 = new PointF(fO4, fO5);
                        jsonReader.l();
                        pointF4 = pointF9;
                        pointF3 = pointF8;
                        pointFE4 = pointF7;
                        fO = f11;
                    } else {
                        pointFE2 = s.e(jsonReader, f10);
                        fO = f11;
                        pointFE4 = pointF7;
                    }
                    pointFE = pointF;
                    break;
                case 4:
                    if (jsonReader.t() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.h();
                        float fO6 = 0.0f;
                        float f12 = 0.0f;
                        float fO7 = 0.0f;
                        float fO8 = 0.0f;
                        while (jsonReader.m()) {
                            pointFE4 = pointFE4;
                            int iV2 = jsonReader.v(f74206d);
                            if (iV2 != 0) {
                                pointF2 = pointFE;
                                if (iV2 != 1) {
                                    jsonReader.x();
                                } else {
                                    JsonReader.Token tokenT3 = jsonReader.t();
                                    JsonReader.Token token3 = JsonReader.Token.NUMBER;
                                    if (tokenT3 == token3) {
                                        fO8 = (float) jsonReader.o();
                                        fO = fO;
                                        f12 = fO8;
                                    } else {
                                        float f13 = fO;
                                        jsonReader.d();
                                        float fO9 = (float) jsonReader.o();
                                        float fO10 = jsonReader.t() == token3 ? (float) jsonReader.o() : fO9;
                                        jsonReader.k();
                                        fO = f13;
                                        pointFE = pointF2;
                                        fO8 = fO10;
                                        f12 = fO9;
                                    }
                                }
                            } else {
                                pointF2 = pointFE;
                                float f14 = fO;
                                JsonReader.Token tokenT4 = jsonReader.t();
                                JsonReader.Token token4 = JsonReader.Token.NUMBER;
                                if (tokenT4 == token4) {
                                    fO7 = (float) jsonReader.o();
                                    fO = f14;
                                    fO6 = fO7;
                                } else {
                                    jsonReader.d();
                                    fO6 = (float) jsonReader.o();
                                    fO7 = jsonReader.t() == token4 ? (float) jsonReader.o() : fO6;
                                    jsonReader.k();
                                    fO = f14;
                                }
                            }
                            pointFE = pointF2;
                        }
                        pointF = pointFE;
                        f11 = fO;
                        PointF pointF10 = new PointF(fO6, f12);
                        PointF pointF11 = new PointF(fO7, fO8);
                        jsonReader.l();
                        pointF6 = pointF11;
                        pointF5 = pointF10;
                        fO = f11;
                    } else {
                        pointF = pointFE;
                        pointFE3 = s.e(jsonReader, f10);
                    }
                    pointFE = pointF;
                    break;
                case 5:
                    z10 = jsonReader.p() == 1;
                    break;
                case 6:
                    pointFE4 = s.e(jsonReader, f10);
                    break;
                case 7:
                    pointFE = s.e(jsonReader, f10);
                    break;
                default:
                    jsonReader.x();
                    break;
            }
        }
        PointF pointF12 = pointFE;
        float f15 = fO;
        PointF pointF13 = pointFE4;
        jsonReader.l();
        if (z10) {
            interpolatorB = f74203a;
            obj = objA;
        } else {
            if (pointFE2 == null || pointFE3 == null) {
                if (pointF3 == null || pointF4 == null || pointF5 == null || pointF6 == null) {
                    interpolatorB = f74203a;
                } else {
                    interpolatorB2 = b(pointF3, pointF5);
                    interpolatorB3 = b(pointF4, pointF6);
                    obj = objA2;
                    interpolatorB = null;
                }
                if (interpolatorB2 != null || interpolatorB3 == null) {
                    aVar = new y4.a(hVar, objA, obj, interpolatorB, f15, null);
                } else {
                    aVar = new y4.a(hVar, objA, obj, interpolatorB2, interpolatorB3, f15, null);
                }
                aVar.f76148o = pointF13;
                aVar.f76149p = pointF12;
                return aVar;
            }
            interpolatorB = b(pointFE2, pointFE3);
            obj = objA2;
        }
        interpolatorB2 = null;
        interpolatorB3 = null;
        if (interpolatorB2 != null) {
            aVar = new y4.a(hVar, objA, obj, interpolatorB, f15, null);
        } else {
            aVar = new y4.a(hVar, objA, obj, interpolatorB, f15, null);
        }
        aVar.f76148o = pointF13;
        aVar.f76149p = pointF12;
        return aVar;
    }

    private static y4.a f(JsonReader jsonReader, float f10, n0 n0Var) {
        return new y4.a(n0Var.a(jsonReader, f10));
    }

    private static y0 g() {
        if (f74204b == null) {
            f74204b = new y0();
        }
        return f74204b;
    }

    private static void h(int i10, WeakReference weakReference) {
        synchronized (t.class) {
            f74204b.l(i10, weakReference);
        }
    }
}
