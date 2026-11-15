package defpackage;

import com.airbnb.lottie.parser.moshi.JsonReader;

public abstract class w24 {
    public static final JsonReader.a a = JsonReader.a.a("fFamily", "fName", "fStyle", "ascent");

    public static q24 a(JsonReader jsonReader) {
        jsonReader.d();
        String strE = null;
        String strE2 = null;
        float fN = 0.0f;
        String strE3 = null;
        while (jsonReader.h()) {
            int I = jsonReader.I(a);
            if (I == 0) {
                strE = jsonReader.E();
            } else if (I == 1) {
                strE3 = jsonReader.E();
            } else if (I == 2) {
                strE2 = jsonReader.E();
            } else if (I != 3) {
                jsonReader.J();
                jsonReader.K();
            } else {
                fN = (float) jsonReader.n();
            }
        }
        jsonReader.g();
        return new q24(strE, strE3, strE2, fN);
    }
}
