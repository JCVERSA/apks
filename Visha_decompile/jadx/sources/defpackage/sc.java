package defpackage;

import android.graphics.PointF;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.airbnb.lottie.parser.moshi.JsonReader;

public abstract class sc {
    public static final JsonReader.a a = JsonReader.a.a(CmcdData.OBJECT_TYPE_AUDIO_ONLY, TtmlNode.TAG_P, "s", "rz", "r", "o", "so", "eo", "sk", "sa");
    public static final JsonReader.a b = JsonReader.a.a("k");

    public static boolean a(gc gcVar) {
        return gcVar == null || (gcVar.g() && ((PointF) ((dg5) gcVar.i().get(0)).b).equals(0.0f, 0.0f));
    }

    public static boolean b(tc tcVar) {
        return tcVar == null || (!(tcVar instanceof lc) && tcVar.g() && ((PointF) ((dg5) tcVar.i().get(0)).b).equals(0.0f, 0.0f));
    }

    public static boolean c(dc dcVar) {
        return dcVar == null || (dcVar.g() && ((Float) ((dg5) dcVar.i().get(0)).b).floatValue() == 0.0f);
    }

    public static boolean d(jc jcVar) {
        return jcVar == null || (jcVar.g() && ((t19) ((dg5) jcVar.i().get(0)).b).a(1.0f, 1.0f));
    }

    public static boolean e(dc dcVar) {
        return dcVar == null || (dcVar.g() && ((Float) ((dg5) dcVar.i().get(0)).b).floatValue() == 0.0f);
    }

    public static boolean f(dc dcVar) {
        return dcVar == null || (dcVar.g() && ((Float) ((dg5) dcVar.i().get(0)).b).floatValue() == 0.0f);
    }

    public static rc g(JsonReader jsonReader, ur5 ur5Var) {
        boolean z;
        boolean z2 = false;
        boolean z3 = jsonReader.G() == JsonReader.Token.BEGIN_OBJECT;
        if (z3) {
            jsonReader.d();
        }
        dc dcVar = null;
        gc gcVarA = null;
        tc tcVarB = null;
        jc jcVarJ = null;
        dc dcVarF = null;
        dc dcVarF2 = null;
        fc fcVarH = null;
        dc dcVarF3 = null;
        dc dcVarF4 = null;
        while (jsonReader.h()) {
            switch (jsonReader.I(a)) {
                case 0:
                    boolean z4 = z2;
                    jsonReader.d();
                    while (jsonReader.h()) {
                        if (jsonReader.I(b) != 0) {
                            jsonReader.J();
                            jsonReader.K();
                        } else {
                            gcVarA = hc.a(jsonReader, ur5Var);
                        }
                    }
                    jsonReader.g();
                    z2 = z4;
                    continue;
                case 1:
                    tcVarB = hc.b(jsonReader, ur5Var);
                    continue;
                case 2:
                    jcVarJ = uc.j(jsonReader, ur5Var);
                    continue;
                case 3:
                    ur5Var.a("Lottie doesn't support 3D layers.");
                    break;
                case 4:
                    break;
                case 5:
                    fcVarH = uc.h(jsonReader, ur5Var);
                    continue;
                case 6:
                    dcVarF3 = uc.f(jsonReader, ur5Var, z2);
                    continue;
                case 7:
                    dcVarF4 = uc.f(jsonReader, ur5Var, z2);
                    continue;
                case 8:
                    dcVarF = uc.f(jsonReader, ur5Var, z2);
                    continue;
                case 9:
                    dcVarF2 = uc.f(jsonReader, ur5Var, z2);
                    continue;
                default:
                    jsonReader.J();
                    jsonReader.K();
                    continue;
            }
            dc dcVarF5 = uc.f(jsonReader, ur5Var, z2);
            if (dcVarF5.i().isEmpty()) {
                dcVarF5.i().add(new dg5(ur5Var, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(ur5Var.f())));
            } else {
                if (((dg5) dcVarF5.i().get(0)).b == null) {
                    z = false;
                    dcVarF5.i().set(0, new dg5(ur5Var, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(ur5Var.f())));
                }
                z2 = z;
                dcVar = dcVarF5;
            }
            z = false;
            z2 = z;
            dcVar = dcVarF5;
        }
        if (z3) {
            jsonReader.g();
        }
        gc gcVar = a(gcVarA) ? null : gcVarA;
        tc tcVar = b(tcVarB) ? null : tcVarB;
        dc dcVar2 = c(dcVar) ? null : dcVar;
        if (d(jcVarJ)) {
            jcVarJ = null;
        }
        return new rc(gcVar, tcVar, jcVarJ, dcVar2, fcVarH, dcVarF3, dcVarF4, f(dcVarF) ? null : dcVarF, e(dcVarF2) ? null : dcVarF2);
    }
}
