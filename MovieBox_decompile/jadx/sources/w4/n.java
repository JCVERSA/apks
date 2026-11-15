package w4;

import com.airbnb.lottie.parser.moshi.JsonReader;

abstract class n {

    private static final JsonReader.a f74193a = JsonReader.a.a("fFamily", "fName", "fStyle", "ascent");

    static r4.b a(JsonReader jsonReader) {
        jsonReader.h();
        String strR = null;
        String strR2 = null;
        float fO = 0.0f;
        String strR3 = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74193a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                strR3 = jsonReader.r();
            } else if (iV == 2) {
                strR2 = jsonReader.r();
            } else if (iV != 3) {
                jsonReader.w();
                jsonReader.x();
            } else {
                fO = (float) jsonReader.o();
            }
        }
        jsonReader.l();
        return new r4.b(strR, strR3, strR2, fO);
    }
}
