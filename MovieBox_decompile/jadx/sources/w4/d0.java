package w4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

abstract class d0 {

    private static final JsonReader.a f74159a = JsonReader.a.a("nm", TtmlNode.TAG_P, "s", CampaignEx.JSON_KEY_AD_R, "hd");

    static t4.f a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        String strR = null;
        s4.o oVarB = null;
        s4.f fVarI = null;
        s4.b bVarE = null;
        boolean zN = false;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74159a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                oVarB = a.b(jsonReader, hVar);
            } else if (iV == 2) {
                fVarI = d.i(jsonReader, hVar);
            } else if (iV == 3) {
                bVarE = d.e(jsonReader, hVar);
            } else if (iV != 4) {
                jsonReader.x();
            } else {
                zN = jsonReader.n();
            }
        }
        return new t4.f(strR, oVarB, fVarI, bVarE, zN);
    }
}
