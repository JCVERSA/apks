package w4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;

abstract class j0 {

    private static final JsonReader.a f74178a = JsonReader.a.a("nm", "hd", "it");

    static t4.k a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        ArrayList arrayList = new ArrayList();
        String strR = null;
        boolean zN = false;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74178a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                zN = jsonReader.n();
            } else if (iV != 2) {
                jsonReader.x();
            } else {
                jsonReader.d();
                while (jsonReader.m()) {
                    t4.c cVarA = h.a(jsonReader, hVar);
                    if (cVarA != null) {
                        arrayList.add(cVarA);
                    }
                }
                jsonReader.k();
            }
        }
        return new t4.k(strR, arrayList, zN);
    }
}
