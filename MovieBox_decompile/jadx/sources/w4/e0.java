package w4;

import com.airbnb.lottie.parser.moshi.JsonReader;

abstract class e0 {

    private static final JsonReader.a f74162a = JsonReader.a.a("nm", "c", "o", "tr", "hd");

    static t4.g a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        String strR = null;
        s4.b bVarF = null;
        s4.b bVarF2 = null;
        s4.n nVarG = null;
        boolean zN = false;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74162a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                bVarF = d.f(jsonReader, hVar, false);
            } else if (iV == 2) {
                bVarF2 = d.f(jsonReader, hVar, false);
            } else if (iV == 3) {
                nVarG = c.g(jsonReader, hVar);
            } else if (iV != 4) {
                jsonReader.x();
            } else {
                zN = jsonReader.n();
            }
        }
        return new t4.g(strR, bVarF, bVarF2, nVarG, zN);
    }
}
