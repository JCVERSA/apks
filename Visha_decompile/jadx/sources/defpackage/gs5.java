package defpackage;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class gs5 {
    public static final JsonReader.a a = JsonReader.a.a("w", CmcdData.STREAMING_FORMAT_HLS, "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");
    public static JsonReader.a b = JsonReader.a.a(TtmlNode.ATTR_ID, "layers", "w", CmcdData.STREAMING_FORMAT_HLS, TtmlNode.TAG_P, "u");
    public static final JsonReader.a c = JsonReader.a.a("list");
    public static final JsonReader.a d = JsonReader.a.a("cm", "tm", "dr");

    public static ur5 a(JsonReader jsonReader) {
        float fE = plb.e();
        LongSparseArray longSparseArray = new LongSparseArray();
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        SparseArrayCompat sparseArrayCompat = new SparseArrayCompat();
        ur5 ur5Var = new ur5();
        jsonReader.d();
        float fN = 0.0f;
        float fN2 = 0.0f;
        float fN3 = 0.0f;
        int iO = 0;
        int iO2 = 0;
        while (jsonReader.h()) {
            switch (jsonReader.I(a)) {
                case 0:
                    iO2 = jsonReader.o();
                    continue;
                case 1:
                    iO = jsonReader.o();
                    continue;
                case 2:
                    fN = (float) jsonReader.n();
                    continue;
                case 3:
                    fN2 = ((float) jsonReader.n()) - 0.01f;
                    break;
                case 4:
                    fN3 = (float) jsonReader.n();
                    break;
                case 5:
                    String[] strArrSplit = jsonReader.E().split("\\.");
                    if (!plb.j(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), 4, 4, 0)) {
                        ur5Var.a("Lottie only supports bodymovin >= 4.4.0");
                        continue;
                    }
                    break;
                case 6:
                    e(jsonReader, ur5Var, arrayList, longSparseArray);
                    continue;
                case 7:
                    b(jsonReader, ur5Var, map, map2);
                    continue;
                case 8:
                    d(jsonReader, map3);
                    continue;
                case 9:
                    c(jsonReader, ur5Var, sparseArrayCompat);
                    continue;
                case 10:
                    f(jsonReader, arrayList2);
                    continue;
                default:
                    jsonReader.J();
                    jsonReader.K();
                    continue;
            }
            map3 = map3;
            arrayList2 = arrayList2;
        }
        ur5Var.s(new Rect(0, 0, (int) (iO2 * fE), (int) (iO * fE)), fN, fN2, fN3, arrayList, longSparseArray, map, map2, plb.e(), sparseArrayCompat, map3, arrayList2, iO2, iO);
        return ur5Var;
    }

    public static void b(JsonReader jsonReader, ur5 ur5Var, Map map, Map map2) {
        jsonReader.b();
        while (jsonReader.h()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            jsonReader.d();
            int iO = 0;
            int iO2 = 0;
            String strE = null;
            String strE2 = null;
            String strE3 = null;
            while (jsonReader.h()) {
                int I = jsonReader.I(b);
                if (I == 0) {
                    strE = jsonReader.E();
                } else if (I == 1) {
                    jsonReader.b();
                    while (jsonReader.h()) {
                        Layer layerB = vi5.b(jsonReader, ur5Var);
                        longSparseArray.put(layerB.e(), layerB);
                        arrayList.add(layerB);
                    }
                    jsonReader.e();
                } else if (I == 2) {
                    iO = jsonReader.o();
                } else if (I == 3) {
                    iO2 = jsonReader.o();
                } else if (I == 4) {
                    strE2 = jsonReader.E();
                } else if (I != 5) {
                    jsonReader.J();
                    jsonReader.K();
                } else {
                    strE3 = jsonReader.E();
                }
            }
            jsonReader.g();
            if (strE2 != null) {
                ct5 ct5Var = new ct5(iO, iO2, strE, strE2, strE3);
                map2.put(ct5Var.e(), ct5Var);
            } else {
                map.put(strE, arrayList);
            }
        }
        jsonReader.e();
    }

    public static void c(JsonReader jsonReader, ur5 ur5Var, SparseArrayCompat sparseArrayCompat) {
        jsonReader.b();
        while (jsonReader.h()) {
            t24 t24VarA = u24.a(jsonReader, ur5Var);
            sparseArrayCompat.put(t24VarA.hashCode(), t24VarA);
        }
        jsonReader.e();
    }

    public static void d(JsonReader jsonReader, Map map) {
        jsonReader.d();
        while (jsonReader.h()) {
            if (jsonReader.I(c) != 0) {
                jsonReader.J();
                jsonReader.K();
            } else {
                jsonReader.b();
                while (jsonReader.h()) {
                    q24 q24VarA = w24.a(jsonReader);
                    map.put(q24VarA.b(), q24VarA);
                }
                jsonReader.e();
            }
        }
        jsonReader.g();
    }

    public static void e(JsonReader jsonReader, ur5 ur5Var, List list, LongSparseArray longSparseArray) {
        jsonReader.b();
        int i = 0;
        while (jsonReader.h()) {
            Layer layerB = vi5.b(jsonReader, ur5Var);
            if (layerB.g() == Layer.LayerType.IMAGE) {
                i++;
            }
            list.add(layerB);
            longSparseArray.put(layerB.e(), layerB);
            if (i > 4) {
                mq5.c("You have " + i + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }
        jsonReader.e();
    }

    public static void f(JsonReader jsonReader, List list) {
        jsonReader.b();
        while (jsonReader.h()) {
            jsonReader.d();
            float fN = 0.0f;
            String strE = null;
            float fN2 = 0.0f;
            while (jsonReader.h()) {
                int I = jsonReader.I(d);
                if (I == 0) {
                    strE = jsonReader.E();
                } else if (I == 1) {
                    fN = (float) jsonReader.n();
                } else if (I != 2) {
                    jsonReader.J();
                    jsonReader.K();
                } else {
                    fN2 = (float) jsonReader.n();
                }
            }
            jsonReader.g();
            list.add(new t16(strE, fN, fN2));
        }
        jsonReader.e();
    }
}
