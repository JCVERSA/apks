package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.airbnb.lottie.parser.moshi.JsonReader;

public abstract class dp8 {
    public static final JsonReader.a a = JsonReader.a.a("nm", TtmlNode.TAG_P, "s", "r", "hd");

    public static cp8 a(JsonReader jsonReader, ur5 ur5Var) {
        String strE = null;
        tc tcVarB = null;
        ic icVarI = null;
        dc dcVarE = null;
        boolean zK = false;
        while (jsonReader.h()) {
            int I = jsonReader.I(a);
            if (I == 0) {
                strE = jsonReader.E();
            } else if (I == 1) {
                tcVarB = hc.b(jsonReader, ur5Var);
            } else if (I == 2) {
                icVarI = uc.i(jsonReader, ur5Var);
            } else if (I == 3) {
                dcVarE = uc.e(jsonReader, ur5Var);
            } else if (I != 4) {
                jsonReader.K();
            } else {
                zK = jsonReader.k();
            }
        }
        return new cp8(strE, tcVarB, icVarI, dcVarE, zK);
    }
}
