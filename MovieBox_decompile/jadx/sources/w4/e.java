package w4;

import com.airbnb.lottie.parser.moshi.JsonReader;

abstract class e {

    private static final JsonReader.a f74160a = JsonReader.a.a("ef");

    private static final JsonReader.a f74161b = JsonReader.a.a("ty", "v");

    private static t4.a a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        jsonReader.h();
        t4.a aVar = null;
        while (true) {
            boolean z10 = false;
            while (true) {
                if (!jsonReader.m()) {
                    jsonReader.l();
                    return aVar;
                }
                int iV = jsonReader.v(f74161b);
                if (iV != 0) {
                    if (iV != 1) {
                        jsonReader.w();
                        jsonReader.x();
                    } else if (z10) {
                        aVar = new t4.a(d.e(jsonReader, hVar));
                    } else {
                        jsonReader.x();
                    }
                } else if (jsonReader.p() == 0) {
                    z10 = true;
                }
            }
        }
    }

    static t4.a b(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        t4.a aVar = null;
        while (jsonReader.m()) {
            if (jsonReader.v(f74160a) != 0) {
                jsonReader.w();
                jsonReader.x();
            } else {
                jsonReader.d();
                while (jsonReader.m()) {
                    t4.a aVarA = a(jsonReader, hVar);
                    if (aVarA != null) {
                        aVar = aVarA;
                    }
                }
                jsonReader.k();
            }
        }
        return aVar;
    }
}
