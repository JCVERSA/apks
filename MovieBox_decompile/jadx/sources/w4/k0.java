package w4;

import com.airbnb.lottie.parser.moshi.JsonReader;

abstract class k0 {

    static JsonReader.a f74186a = JsonReader.a.a("nm", "ind", "ks", "hd");

    static t4.l a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        String strR = null;
        int iP = 0;
        boolean zN = false;
        s4.h hVarK = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74186a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                iP = jsonReader.p();
            } else if (iV == 2) {
                hVarK = d.k(jsonReader, hVar);
            } else if (iV != 3) {
                jsonReader.x();
            } else {
                zN = jsonReader.n();
            }
        }
        return new t4.l(strR, iP, hVarK, zN);
    }
}
