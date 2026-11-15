package w4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;

public abstract class a {

    private static final JsonReader.a f74150a = JsonReader.a.a(CampaignEx.JSON_KEY_AD_K, "x", "y");

    public static s4.e a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.t() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.d();
            while (jsonReader.m()) {
                arrayList.add(z.a(jsonReader, hVar));
            }
            jsonReader.k();
            u.b(arrayList);
        } else {
            arrayList.add(new y4.a(s.e(jsonReader, x4.l.e())));
        }
        return new s4.e(arrayList);
    }

    static s4.o b(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        jsonReader.h();
        s4.e eVarA = null;
        s4.b bVarE = null;
        boolean z10 = false;
        s4.b bVarE2 = null;
        while (jsonReader.t() != JsonReader.Token.END_OBJECT) {
            int iV = jsonReader.v(f74150a);
            if (iV == 0) {
                eVarA = a(jsonReader, hVar);
            } else if (iV != 1) {
                if (iV != 2) {
                    jsonReader.w();
                    jsonReader.x();
                } else if (jsonReader.t() == JsonReader.Token.STRING) {
                    jsonReader.x();
                    z10 = true;
                } else {
                    bVarE = d.e(jsonReader, hVar);
                }
            } else if (jsonReader.t() == JsonReader.Token.STRING) {
                jsonReader.x();
                z10 = true;
            } else {
                bVarE2 = d.e(jsonReader, hVar);
            }
        }
        jsonReader.l();
        if (z10) {
            hVar.a("Lottie doesn't support expressions.");
        }
        return eVarA != null ? eVarA : new s4.i(bVarE2, bVarE);
    }
}
