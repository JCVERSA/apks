package w4;

import com.airbnb.lottie.model.content.TextRangeUnits;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Collections;

public abstract class b {

    private static final JsonReader.a f74152a = JsonReader.a.a("s", "a");

    private static final JsonReader.a f74153b = JsonReader.a.a("s", "e", "o", CampaignEx.JSON_KEY_AD_R);

    private static final JsonReader.a f74154c = JsonReader.a.a("fc", "sc", "sw", "t", "o");

    public static s4.k a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        jsonReader.h();
        s4.m mVarC = null;
        s4.l lVarB = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74152a);
            if (iV == 0) {
                lVarB = b(jsonReader, hVar);
            } else if (iV != 1) {
                jsonReader.w();
                jsonReader.x();
            } else {
                mVarC = c(jsonReader, hVar);
            }
        }
        jsonReader.l();
        return new s4.k(mVarC, lVarB);
    }

    private static s4.l b(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        jsonReader.h();
        s4.d dVar = null;
        s4.d dVarH = null;
        s4.d dVarH2 = null;
        TextRangeUnits textRangeUnits = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74153b);
            if (iV == 0) {
                dVar = d.h(jsonReader, hVar);
            } else if (iV == 1) {
                dVarH = d.h(jsonReader, hVar);
            } else if (iV == 2) {
                dVarH2 = d.h(jsonReader, hVar);
            } else if (iV != 3) {
                jsonReader.w();
                jsonReader.x();
            } else {
                int iP = jsonReader.p();
                if (iP == 1 || iP == 2) {
                    textRangeUnits = iP == 1 ? TextRangeUnits.PERCENT : TextRangeUnits.INDEX;
                } else {
                    hVar.a("Unsupported text range units: " + iP);
                    textRangeUnits = TextRangeUnits.INDEX;
                }
            }
        }
        jsonReader.l();
        if (dVar == null && dVarH != null) {
            dVar = new s4.d(Collections.singletonList(new y4.a(0)));
        }
        return new s4.l(dVar, dVarH, dVarH2, textRangeUnits);
    }

    private static s4.m c(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        jsonReader.h();
        s4.a aVarC = null;
        s4.a aVarC2 = null;
        s4.b bVarE = null;
        s4.b bVarE2 = null;
        s4.d dVarH = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f74154c);
            if (iV == 0) {
                aVarC = d.c(jsonReader, hVar);
            } else if (iV == 1) {
                aVarC2 = d.c(jsonReader, hVar);
            } else if (iV == 2) {
                bVarE = d.e(jsonReader, hVar);
            } else if (iV == 3) {
                bVarE2 = d.e(jsonReader, hVar);
            } else if (iV != 4) {
                jsonReader.w();
                jsonReader.x();
            } else {
                dVarH = d.h(jsonReader, hVar);
            }
        }
        jsonReader.l();
        return new s4.m(aVarC, aVarC2, bVarE, bVarE2, dVarH);
    }
}
