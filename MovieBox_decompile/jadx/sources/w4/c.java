package w4;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

public abstract class c {

    private static final JsonReader.a f74156a = JsonReader.a.a("a", TtmlNode.TAG_P, "s", "rz", CampaignEx.JSON_KEY_AD_R, "o", "so", "eo", "sk", "sa");

    private static final JsonReader.a f74157b = JsonReader.a.a(CampaignEx.JSON_KEY_AD_K);

    private static boolean a(s4.e eVar) {
        return eVar == null || (eVar.c() && ((PointF) ((y4.a) eVar.b().get(0)).f76135b).equals(0.0f, 0.0f));
    }

    private static boolean b(s4.o oVar) {
        return oVar == null || (!(oVar instanceof s4.i) && oVar.c() && ((PointF) ((y4.a) oVar.b().get(0)).f76135b).equals(0.0f, 0.0f));
    }

    private static boolean c(s4.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((y4.a) bVar.b().get(0)).f76135b).floatValue() == 0.0f);
    }

    private static boolean d(s4.g gVar) {
        return gVar == null || (gVar.c() && ((y4.d) ((y4.a) gVar.b().get(0)).f76135b).a(1.0f, 1.0f));
    }

    private static boolean e(s4.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((y4.a) bVar.b().get(0)).f76135b).floatValue() == 0.0f);
    }

    private static boolean f(s4.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((y4.a) bVar.b().get(0)).f76135b).floatValue() == 0.0f);
    }

    public static s4.n g(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        boolean z10;
        boolean z11 = false;
        boolean z12 = jsonReader.t() == JsonReader.Token.BEGIN_OBJECT;
        if (z12) {
            jsonReader.h();
        }
        s4.b bVar = null;
        s4.e eVarA = null;
        s4.o oVarB = null;
        s4.g gVarJ = null;
        s4.b bVarF = null;
        s4.b bVarF2 = null;
        s4.d dVarH = null;
        s4.b bVarF3 = null;
        s4.b bVarF4 = null;
        while (jsonReader.m()) {
            switch (jsonReader.v(f74156a)) {
                case 0:
                    boolean z13 = z11;
                    jsonReader.h();
                    while (jsonReader.m()) {
                        if (jsonReader.v(f74157b) != 0) {
                            jsonReader.w();
                            jsonReader.x();
                        } else {
                            eVarA = a.a(jsonReader, hVar);
                        }
                    }
                    jsonReader.l();
                    z11 = z13;
                    continue;
                case 1:
                    oVarB = a.b(jsonReader, hVar);
                    continue;
                case 2:
                    gVarJ = d.j(jsonReader, hVar);
                    continue;
                case 3:
                    hVar.a("Lottie doesn't support 3D layers.");
                    break;
                case 4:
                    break;
                case 5:
                    dVarH = d.h(jsonReader, hVar);
                    continue;
                case 6:
                    bVarF3 = d.f(jsonReader, hVar, z11);
                    continue;
                case 7:
                    bVarF4 = d.f(jsonReader, hVar, z11);
                    continue;
                case 8:
                    bVarF = d.f(jsonReader, hVar, z11);
                    continue;
                case 9:
                    bVarF2 = d.f(jsonReader, hVar, z11);
                    continue;
                default:
                    jsonReader.w();
                    jsonReader.x();
                    continue;
            }
            s4.b bVarF5 = d.f(jsonReader, hVar, z11);
            if (bVarF5.b().isEmpty()) {
                bVarF5.b().add(new y4.a(hVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(hVar.f())));
            } else {
                if (((y4.a) bVarF5.b().get(0)).f76135b == null) {
                    z10 = false;
                    bVarF5.b().set(0, new y4.a(hVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(hVar.f())));
                }
                z11 = z10;
                bVar = bVarF5;
            }
            z10 = false;
            z11 = z10;
            bVar = bVarF5;
        }
        if (z12) {
            jsonReader.l();
        }
        s4.e eVar = a(eVarA) ? null : eVarA;
        s4.o oVar = b(oVarB) ? null : oVarB;
        s4.b bVar2 = c(bVar) ? null : bVar;
        if (d(gVarJ)) {
            gVarJ = null;
        }
        return new s4.n(eVar, oVar, gVarJ, bVar2, dVarH, bVarF3, bVarF4, f(bVarF) ? null : bVarF, e(bVarF2) ? null : bVarF2);
    }
}
