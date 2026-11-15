package w4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;

public abstract class f0 {

    private static final JsonReader.a f74164a = JsonReader.a.a("nm", CampaignEx.JSON_KEY_AD_R, "hd");

    static t4.h a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        boolean zN = false;
        String strR = null;
        s4.b bVarF = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74164a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                bVarF = d.f(jsonReader, hVar, true);
            } else if (iV != 2) {
                jsonReader.x();
            } else {
                zN = jsonReader.n();
            }
        }
        if (zN) {
            return null;
        }
        return new t4.h(strR, bVarF);
    }
}
