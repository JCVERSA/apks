package w4;

import com.airbnb.lottie.parser.moshi.JsonReader;

public class k {

    private static final JsonReader.a f74179f = JsonReader.a.a("ef");

    private static final JsonReader.a f74180g = JsonReader.a.a("nm", "v");

    private s4.a f74181a;

    private s4.b f74182b;

    private s4.b f74183c;

    private s4.b f74184d;

    private s4.b f74185e;

    private void a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        jsonReader.h();
        String strR = "";
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74180g);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                strR.hashCode();
                switch (strR) {
                    case "Distance":
                        this.f74184d = d.e(jsonReader, hVar);
                        break;
                    case "Opacity":
                        this.f74182b = d.f(jsonReader, hVar, false);
                        break;
                    case "Direction":
                        this.f74183c = d.f(jsonReader, hVar, false);
                        break;
                    case "Shadow Color":
                        this.f74181a = d.c(jsonReader, hVar);
                        break;
                    case "Softness":
                        this.f74185e = d.e(jsonReader, hVar);
                        break;
                    default:
                        jsonReader.x();
                        break;
                }
            } else {
                jsonReader.w();
                jsonReader.x();
            }
        }
        jsonReader.l();
    }

    j b(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        s4.b bVar;
        s4.b bVar2;
        s4.b bVar3;
        s4.b bVar4;
        while (jsonReader.m()) {
            if (jsonReader.v(f74179f) != 0) {
                jsonReader.w();
                jsonReader.x();
            } else {
                jsonReader.d();
                while (jsonReader.m()) {
                    a(jsonReader, hVar);
                }
                jsonReader.k();
            }
        }
        s4.a aVar = this.f74181a;
        if (aVar == null || (bVar = this.f74182b) == null || (bVar2 = this.f74183c) == null || (bVar3 = this.f74184d) == null || (bVar4 = this.f74185e) == null) {
            return null;
        }
        return new j(aVar, bVar, bVar2, bVar3, bVar4);
    }
}
