package w4;

import android.graphics.Path;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Collections;

abstract class i0 {

    private static final JsonReader.a f74172a = JsonReader.a.a("nm", "c", "o", "fillEnabled", CampaignEx.JSON_KEY_AD_R, "hd");

    static t4.j a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        s4.d dVar = null;
        String strR = null;
        s4.a aVarC = null;
        boolean zN = false;
        boolean zN2 = false;
        int iP = 1;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74172a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                aVarC = d.c(jsonReader, hVar);
            } else if (iV == 2) {
                dVar = d.h(jsonReader, hVar);
            } else if (iV == 3) {
                zN = jsonReader.n();
            } else if (iV == 4) {
                iP = jsonReader.p();
            } else if (iV != 5) {
                jsonReader.w();
                jsonReader.x();
            } else {
                zN2 = jsonReader.n();
            }
        }
        if (dVar == null) {
            dVar = new s4.d(Collections.singletonList(new y4.a(100)));
        }
        return new t4.j(strR, zN, iP == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, aVarC, dVar, zN2);
    }
}
