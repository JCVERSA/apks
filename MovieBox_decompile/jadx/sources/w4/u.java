package w4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;

abstract class u {

    static JsonReader.a f74207a = JsonReader.a.a(CampaignEx.JSON_KEY_AD_K);

    static List a(JsonReader jsonReader, com.airbnb.lottie.h hVar, float f10, n0 n0Var, boolean z10) {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.t() == JsonReader.Token.STRING) {
            hVar.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.h();
        while (jsonReader.m()) {
            if (jsonReader.v(f74207a) != 0) {
                jsonReader.x();
            } else if (jsonReader.t() == JsonReader.Token.BEGIN_ARRAY) {
                jsonReader.d();
                if (jsonReader.t() == JsonReader.Token.NUMBER) {
                    arrayList.add(t.c(jsonReader, hVar, f10, n0Var, false, z10));
                } else {
                    while (jsonReader.m()) {
                        arrayList.add(t.c(jsonReader, hVar, f10, n0Var, true, z10));
                    }
                }
                jsonReader.k();
            } else {
                arrayList.add(t.c(jsonReader, hVar, f10, n0Var, false, z10));
            }
        }
        jsonReader.l();
        b(arrayList);
        return arrayList;
    }

    public static void b(List list) {
        int i10;
        Object obj;
        int size = list.size();
        int i11 = 0;
        while (true) {
            i10 = size - 1;
            if (i11 >= i10) {
                break;
            }
            y4.a aVar = (y4.a) list.get(i11);
            i11++;
            y4.a aVar2 = (y4.a) list.get(i11);
            aVar.f76141h = Float.valueOf(aVar2.f76140g);
            if (aVar.f76136c == null && (obj = aVar2.f76135b) != null) {
                aVar.f76136c = obj;
                if (aVar instanceof p4.i) {
                    ((p4.i) aVar).j();
                }
            }
        }
        y4.a aVar3 = (y4.a) list.get(i10);
        if ((aVar3.f76135b == null || aVar3.f76136c == null) && list.size() > 1) {
            list.remove(aVar3);
        }
    }
}
