package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.parser.moshi.JsonReader;

public abstract class xc8 {
    public static final JsonReader.a a = JsonReader.a.a("nm", "sy", "pt", TtmlNode.TAG_P, "r", "or", "os", "ir", "is", "hd", "d");

    public static PolystarShape a(JsonReader jsonReader, ur5 ur5Var, int i) {
        boolean zK = false;
        boolean z = i == 3;
        String strE = null;
        PolystarShape.Type typeForValue = null;
        dc dcVarF = null;
        tc tcVarB = null;
        dc dcVarF2 = null;
        dc dcVarE = null;
        dc dcVarE2 = null;
        dc dcVarF3 = null;
        dc dcVarF4 = null;
        while (jsonReader.h()) {
            switch (jsonReader.I(a)) {
                case 0:
                    strE = jsonReader.E();
                    break;
                case 1:
                    typeForValue = PolystarShape.Type.forValue(jsonReader.o());
                    break;
                case 2:
                    dcVarF = uc.f(jsonReader, ur5Var, false);
                    break;
                case 3:
                    tcVarB = hc.b(jsonReader, ur5Var);
                    break;
                case 4:
                    dcVarF2 = uc.f(jsonReader, ur5Var, false);
                    break;
                case 5:
                    dcVarE2 = uc.e(jsonReader, ur5Var);
                    break;
                case 6:
                    dcVarF4 = uc.f(jsonReader, ur5Var, false);
                    break;
                case 7:
                    dcVarE = uc.e(jsonReader, ur5Var);
                    break;
                case 8:
                    dcVarF3 = uc.f(jsonReader, ur5Var, false);
                    break;
                case 9:
                    zK = jsonReader.k();
                    break;
                case 10:
                    z = jsonReader.o() == 3;
                    break;
                default:
                    jsonReader.J();
                    jsonReader.K();
                    break;
            }
        }
        return new PolystarShape(strE, typeForValue, dcVarF, tcVarB, dcVarF2, dcVarE, dcVarE2, dcVarF3, dcVarF4, zK, z);
    }
}
