package defpackage;

import com.airbnb.lottie.parser.moshi.JsonReader;

public abstract class cg9 {
    public static JsonReader.a a = JsonReader.a.a("nm", "ind", "ks", "hd");

    public static bg9 a(JsonReader jsonReader, ur5 ur5Var) {
        String strE = null;
        int iO = 0;
        boolean zK = false;
        kc kcVarK = null;
        while (jsonReader.h()) {
            int I = jsonReader.I(a);
            if (I == 0) {
                strE = jsonReader.E();
            } else if (I == 1) {
                iO = jsonReader.o();
            } else if (I == 2) {
                kcVarK = uc.k(jsonReader, ur5Var);
            } else if (I != 3) {
                jsonReader.K();
            } else {
                zK = jsonReader.k();
            }
        }
        return new bg9(strE, iO, kcVarK, zK);
    }
}
