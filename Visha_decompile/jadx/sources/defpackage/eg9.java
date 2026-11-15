package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.parser.moshi.JsonReader;

public abstract class eg9 {
    public static final JsonReader.a a = JsonReader.a.a("s", "e", "o", "nm", CmcdData.OBJECT_TYPE_MANIFEST, "hd");

    public static ShapeTrimPath a(JsonReader jsonReader, ur5 ur5Var) {
        String strE = null;
        ShapeTrimPath.Type typeForId = null;
        dc dcVarF = null;
        dc dcVarF2 = null;
        dc dcVarF3 = null;
        boolean zK = false;
        while (jsonReader.h()) {
            int I = jsonReader.I(a);
            if (I == 0) {
                dcVarF = uc.f(jsonReader, ur5Var, false);
            } else if (I == 1) {
                dcVarF2 = uc.f(jsonReader, ur5Var, false);
            } else if (I == 2) {
                dcVarF3 = uc.f(jsonReader, ur5Var, false);
            } else if (I == 3) {
                strE = jsonReader.E();
            } else if (I == 4) {
                typeForId = ShapeTrimPath.Type.forId(jsonReader.o());
            } else if (I != 5) {
                jsonReader.K();
            } else {
                zK = jsonReader.k();
            }
        }
        return new ShapeTrimPath(strE, typeForId, dcVarF, dcVarF2, dcVarF3, zK);
    }
}
