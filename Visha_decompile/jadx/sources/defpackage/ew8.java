package defpackage;

import com.airbnb.lottie.parser.moshi.JsonReader;

public abstract class ew8 {
    public static final JsonReader.a a = JsonReader.a.a("nm", "r", "hd");

    public static cw8 a(JsonReader jsonReader, ur5 ur5Var) {
        boolean zK = false;
        String strE = null;
        dc dcVarF = null;
        while (jsonReader.h()) {
            int I = jsonReader.I(a);
            if (I == 0) {
                strE = jsonReader.E();
            } else if (I == 1) {
                dcVarF = uc.f(jsonReader, ur5Var, true);
            } else if (I != 2) {
                jsonReader.K();
            } else {
                zK = jsonReader.k();
            }
        }
        if (zK) {
            return null;
        }
        return new cw8(strE, dcVarF);
    }
}
