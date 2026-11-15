package w4;

import android.graphics.Path;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Collections;

abstract class p {

    private static final JsonReader.a f74195a = JsonReader.a.a("nm", "g", "o", "t", "s", "e", CampaignEx.JSON_KEY_AD_R, "hd");

    private static final JsonReader.a f74196b = JsonReader.a.a(TtmlNode.TAG_P, CampaignEx.JSON_KEY_AD_K);

    static t4.e a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        s4.d dVarH = null;
        Path.FillType fillType = Path.FillType.WINDING;
        String strR = null;
        GradientType gradientType = null;
        s4.c cVarG = null;
        s4.f fVarI = null;
        s4.f fVarI2 = null;
        boolean zN = false;
        while (jsonReader.m()) {
            switch (jsonReader.v(f74195a)) {
                case 0:
                    strR = jsonReader.r();
                    break;
                case 1:
                    jsonReader.h();
                    int iP = -1;
                    while (jsonReader.m()) {
                        int iV = jsonReader.v(f74196b);
                        if (iV == 0) {
                            iP = jsonReader.p();
                        } else if (iV != 1) {
                            jsonReader.w();
                            jsonReader.x();
                        } else {
                            cVarG = d.g(jsonReader, hVar, iP);
                        }
                    }
                    jsonReader.l();
                    break;
                case 2:
                    dVarH = d.h(jsonReader, hVar);
                    break;
                case 3:
                    gradientType = jsonReader.p() == 1 ? GradientType.LINEAR : GradientType.RADIAL;
                    break;
                case 4:
                    fVarI = d.i(jsonReader, hVar);
                    break;
                case 5:
                    fVarI2 = d.i(jsonReader, hVar);
                    break;
                case 6:
                    fillType = jsonReader.p() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                    break;
                case 7:
                    zN = jsonReader.n();
                    break;
                default:
                    jsonReader.w();
                    jsonReader.x();
                    break;
            }
        }
        return new t4.e(strR, gradientType, fillType, cVarG, dVarH == null ? new s4.d(Collections.singletonList(new y4.a(100))) : dVarH, fVarI, fVarI2, null, null, zN);
    }
}
