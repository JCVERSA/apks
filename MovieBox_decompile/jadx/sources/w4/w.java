package w4;

import android.graphics.Rect;
import androidx.collection.y0;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class w {

    private static final JsonReader.a f74212a = JsonReader.a.a("w", "h", "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");

    static JsonReader.a f74213b = JsonReader.a.a("id", "layers", "w", "h", TtmlNode.TAG_P, TmcStartParams.KEY_URL_SHORT);

    private static final JsonReader.a f74214c = JsonReader.a.a("list");

    private static final JsonReader.a f74215d = JsonReader.a.a("cm", "tm", DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_RATE);

    public static com.airbnb.lottie.h a(JsonReader jsonReader) {
        float fE = x4.l.e();
        androidx.collection.x xVar = new androidx.collection.x();
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        y0 y0Var = new y0();
        com.airbnb.lottie.h hVar = new com.airbnb.lottie.h();
        jsonReader.h();
        float fO = 0.0f;
        float fO2 = 0.0f;
        float fO3 = 0.0f;
        int iP = 0;
        int iP2 = 0;
        while (jsonReader.m()) {
            switch (jsonReader.v(f74212a)) {
                case 0:
                    iP2 = jsonReader.p();
                    continue;
                case 1:
                    iP = jsonReader.p();
                    continue;
                case 2:
                    fO = (float) jsonReader.o();
                    continue;
                case 3:
                    fO2 = ((float) jsonReader.o()) - 0.01f;
                    break;
                case 4:
                    fO3 = (float) jsonReader.o();
                    break;
                case 5:
                    String[] strArrSplit = jsonReader.r().split("\\.");
                    if (!x4.l.j(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), 4, 4, 0)) {
                        hVar.a("Lottie only supports bodymovin >= 4.4.0");
                        continue;
                    }
                    break;
                case 6:
                    e(jsonReader, hVar, arrayList, xVar);
                    continue;
                case 7:
                    b(jsonReader, hVar, map, map2);
                    continue;
                case 8:
                    d(jsonReader, map3);
                    continue;
                case 9:
                    c(jsonReader, hVar, y0Var);
                    continue;
                case 10:
                    f(jsonReader, arrayList2);
                    continue;
                default:
                    jsonReader.w();
                    jsonReader.x();
                    continue;
            }
            map3 = map3;
            arrayList2 = arrayList2;
        }
        hVar.s(new Rect(0, 0, (int) (iP2 * fE), (int) (iP * fE)), fO, fO2, fO3, arrayList, xVar, map, map2, x4.l.e(), y0Var, map3, arrayList2, iP2, iP);
        return hVar;
    }

    private static void b(JsonReader jsonReader, com.airbnb.lottie.h hVar, Map map, Map map2) {
        jsonReader.d();
        while (jsonReader.m()) {
            ArrayList arrayList = new ArrayList();
            androidx.collection.x xVar = new androidx.collection.x();
            jsonReader.h();
            int iP = 0;
            int iP2 = 0;
            String strR = null;
            String strR2 = null;
            String strR3 = null;
            while (jsonReader.m()) {
                int iV = jsonReader.v(f74213b);
                if (iV == 0) {
                    strR = jsonReader.r();
                } else if (iV == 1) {
                    jsonReader.d();
                    while (jsonReader.m()) {
                        Layer layerB = v.b(jsonReader, hVar);
                        xVar.k(layerB.e(), layerB);
                        arrayList.add(layerB);
                    }
                    jsonReader.k();
                } else if (iV == 2) {
                    iP = jsonReader.p();
                } else if (iV == 3) {
                    iP2 = jsonReader.p();
                } else if (iV == 4) {
                    strR2 = jsonReader.r();
                } else if (iV != 5) {
                    jsonReader.w();
                    jsonReader.x();
                } else {
                    strR3 = jsonReader.r();
                }
            }
            jsonReader.l();
            if (strR2 != null) {
                com.airbnb.lottie.l0 l0Var = new com.airbnb.lottie.l0(iP, iP2, strR, strR2, strR3);
                map2.put(l0Var.e(), l0Var);
            } else {
                map.put(strR, arrayList);
            }
        }
        jsonReader.k();
    }

    private static void c(JsonReader jsonReader, com.airbnb.lottie.h hVar, y0 y0Var) {
        jsonReader.d();
        while (jsonReader.m()) {
            r4.c cVarA = m.a(jsonReader, hVar);
            y0Var.l(cVarA.hashCode(), cVarA);
        }
        jsonReader.k();
    }

    private static void d(JsonReader jsonReader, Map map) {
        jsonReader.h();
        while (jsonReader.m()) {
            if (jsonReader.v(f74214c) != 0) {
                jsonReader.w();
                jsonReader.x();
            } else {
                jsonReader.d();
                while (jsonReader.m()) {
                    r4.b bVarA = n.a(jsonReader);
                    map.put(bVarA.b(), bVarA);
                }
                jsonReader.k();
            }
        }
        jsonReader.l();
    }

    private static void e(JsonReader jsonReader, com.airbnb.lottie.h hVar, List list, androidx.collection.x xVar) {
        jsonReader.d();
        int i10 = 0;
        while (jsonReader.m()) {
            Layer layerB = v.b(jsonReader, hVar);
            if (layerB.g() == Layer.LayerType.IMAGE) {
                i10++;
            }
            list.add(layerB);
            xVar.k(layerB.e(), layerB);
            if (i10 > 4) {
                x4.f.c("You have " + i10 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }
        jsonReader.k();
    }

    private static void f(JsonReader jsonReader, List list) {
        jsonReader.d();
        while (jsonReader.m()) {
            jsonReader.h();
            float fO = 0.0f;
            String strR = null;
            float fO2 = 0.0f;
            while (jsonReader.m()) {
                int iV = jsonReader.v(f74215d);
                if (iV == 0) {
                    strR = jsonReader.r();
                } else if (iV == 1) {
                    fO = (float) jsonReader.o();
                } else if (iV != 2) {
                    jsonReader.w();
                    jsonReader.x();
                } else {
                    fO2 = (float) jsonReader.o();
                }
            }
            jsonReader.l();
            list.add(new r4.g(strR, fO, fO2));
        }
        jsonReader.k();
    }
}
