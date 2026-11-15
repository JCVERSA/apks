package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.airbnb.lottie.parser.moshi.JsonReader;

public abstract class iw0 {
    public static final JsonReader.a a = JsonReader.a.a("nm", TtmlNode.TAG_P, "s", "hd", "d");

    public static hw0 a(JsonReader jsonReader, ur5 ur5Var, int i) {
        boolean z = i == 3;
        boolean zK = false;
        String strE = null;
        tc tcVarB = null;
        ic icVarI = null;
        while (jsonReader.h()) {
            int I = jsonReader.I(a);
            if (I == 0) {
                strE = jsonReader.E();
            } else if (I == 1) {
                tcVarB = hc.b(jsonReader, ur5Var);
            } else if (I == 2) {
                icVarI = uc.i(jsonReader, ur5Var);
            } else if (I == 3) {
                zK = jsonReader.k();
            } else if (I != 4) {
                jsonReader.J();
                jsonReader.K();
            } else {
                z = jsonReader.o() == 3;
            }
        }
        return new hw0(strE, tcVarB, icVarI, z, zK);
    }
}
