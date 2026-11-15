package defpackage;

import com.airbnb.lottie.parser.moshi.JsonReader;

public abstract class ss8 {
    public static final JsonReader.a a = JsonReader.a.a("nm", "c", "o", "tr", "hd");

    public static qs8 a(JsonReader jsonReader, ur5 ur5Var) {
        String strE = null;
        dc dcVarF = null;
        dc dcVarF2 = null;
        rc rcVarG = null;
        boolean zK = false;
        while (jsonReader.h()) {
            int I = jsonReader.I(a);
            if (I == 0) {
                strE = jsonReader.E();
            } else if (I == 1) {
                dcVarF = uc.f(jsonReader, ur5Var, false);
            } else if (I == 2) {
                dcVarF2 = uc.f(jsonReader, ur5Var, false);
            } else if (I == 3) {
                rcVarG = sc.g(jsonReader, ur5Var);
            } else if (I != 4) {
                jsonReader.K();
            } else {
                zK = jsonReader.k();
            }
        }
        return new qs8(strE, dcVarF, dcVarF2, rcVarG, zK);
    }
}
