package w4;

import android.graphics.Color;
import android.graphics.Rect;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collections;

public abstract class v {

    private static final JsonReader.a f74208a = JsonReader.a.a("nm", "ind", "refId", "ty", "parent", "sw", com.mbridge.msdk.foundation.entity.b.JSON_KEY_SH, "sc", "ks", TtmlNode.TAG_TT, "masksProperties", "shapes", "t", "ef", "sr", "st", "w", "h", "ip", "op", "tm", "cl", "hd", "ao", "bm");

    private static final JsonReader.a f74209b = JsonReader.a.a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "a");

    private static final JsonReader.a f74210c = JsonReader.a.a("ty", "nm");

    static class a {

        static final int[] f74211a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f74211a = iArr;
            try {
                iArr[Layer.MatteType.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f74211a[Layer.MatteType.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static Layer a(com.airbnb.lottie.h hVar) {
        Rect rectB = hVar.b();
        return new Layer(Collections.emptyList(), hVar, "__container", -1L, Layer.LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new s4.n(), 0, 0, 0, 0.0f, 0.0f, rectB.width(), rectB.height(), null, null, Collections.emptyList(), Layer.MatteType.NONE, null, false, null, null, LBlendMode.NORMAL);
    }

    public static Layer b(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        float f10;
        Layer.MatteType matteType = Layer.MatteType.NONE;
        LBlendMode lBlendMode = LBlendMode.NORMAL;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        jsonReader.h();
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(1.0f);
        Layer.MatteType matteType2 = matteType;
        LBlendMode lBlendMode2 = lBlendMode;
        Layer.LayerType layerType = null;
        String strR = null;
        s4.j jVarD = null;
        s4.k kVarA = null;
        s4.b bVarF = null;
        t4.a aVarB = null;
        j jVarB = null;
        long jP = 0;
        boolean z10 = false;
        int iP = 0;
        int iP2 = 0;
        int color = 0;
        boolean zN = false;
        float fO = 0.0f;
        float fO2 = 0.0f;
        float fO3 = 0.0f;
        float fO4 = 0.0f;
        float f11 = 0.0f;
        long jP2 = -1;
        float fO5 = 1.0f;
        String strR2 = "UNSET";
        String strR3 = null;
        s4.n nVar = null;
        while (jsonReader.m()) {
            switch (jsonReader.v(f74208a)) {
                case 0:
                    strR2 = jsonReader.r();
                    break;
                case 1:
                    jP = jsonReader.p();
                    break;
                case 2:
                    strR = jsonReader.r();
                    break;
                case 3:
                    int iP3 = jsonReader.p();
                    layerType = Layer.LayerType.UNKNOWN;
                    if (iP3 < layerType.ordinal()) {
                        layerType = Layer.LayerType.values()[iP3];
                    }
                    break;
                case 4:
                    jP2 = jsonReader.p();
                    break;
                case 5:
                    iP = (int) (jsonReader.p() * x4.l.e());
                    break;
                case 6:
                    iP2 = (int) (jsonReader.p() * x4.l.e());
                    break;
                case 7:
                    color = Color.parseColor(jsonReader.r());
                    break;
                case 8:
                    nVar = c.g(jsonReader, hVar);
                    break;
                case 9:
                    int iP4 = jsonReader.p();
                    if (iP4 < Layer.MatteType.values().length) {
                        matteType2 = Layer.MatteType.values()[iP4];
                        int i10 = a.f74211a[matteType2.ordinal()];
                        if (i10 == 1) {
                            hVar.a("Unsupported matte type: Luma");
                        } else if (i10 == 2) {
                            hVar.a("Unsupported matte type: Luma Inverted");
                        }
                        hVar.r(1);
                    } else {
                        hVar.a("Unsupported matte type: " + iP4);
                    }
                    break;
                case 10:
                    jsonReader.d();
                    while (jsonReader.m()) {
                        arrayList.add(x.a(jsonReader, hVar));
                    }
                    hVar.r(arrayList.size());
                    jsonReader.k();
                    break;
                case 11:
                    jsonReader.d();
                    while (jsonReader.m()) {
                        t4.c cVarA = h.a(jsonReader, hVar);
                        if (cVarA != null) {
                            arrayList2.add(cVarA);
                        }
                    }
                    jsonReader.k();
                    break;
                case 12:
                    jsonReader.h();
                    while (jsonReader.m()) {
                        int iV = jsonReader.v(f74209b);
                        if (iV == 0) {
                            jVarD = d.d(jsonReader, hVar);
                        } else if (iV != 1) {
                            jsonReader.w();
                            jsonReader.x();
                        } else {
                            jsonReader.d();
                            if (jsonReader.m()) {
                                kVarA = b.a(jsonReader, hVar);
                            }
                            while (jsonReader.m()) {
                                jsonReader.x();
                            }
                            jsonReader.k();
                        }
                    }
                    jsonReader.l();
                    break;
                case 13:
                    jsonReader.d();
                    ArrayList arrayList3 = new ArrayList();
                    while (jsonReader.m()) {
                        jsonReader.h();
                        while (jsonReader.m()) {
                            int iV2 = jsonReader.v(f74210c);
                            if (iV2 == 0) {
                                int iP5 = jsonReader.p();
                                if (iP5 == 29) {
                                    aVarB = e.b(jsonReader, hVar);
                                } else if (iP5 == 25) {
                                    jVarB = new k().b(jsonReader, hVar);
                                }
                            } else if (iV2 != 1) {
                                jsonReader.w();
                                jsonReader.x();
                            } else {
                                arrayList3.add(jsonReader.r());
                            }
                        }
                        jsonReader.l();
                    }
                    jsonReader.k();
                    hVar.a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList3);
                    break;
                case 14:
                    fO5 = (float) jsonReader.o();
                    break;
                case 15:
                    fO2 = (float) jsonReader.o();
                    break;
                case 16:
                    fO3 = (float) (jsonReader.o() * ((double) x4.l.e()));
                    break;
                case 17:
                    fO4 = (float) (jsonReader.o() * ((double) x4.l.e()));
                    break;
                case 18:
                    fO = (float) jsonReader.o();
                    break;
                case 19:
                    f11 = (float) jsonReader.o();
                    break;
                case 20:
                    bVarF = d.f(jsonReader, hVar, false);
                    break;
                case 21:
                    strR3 = jsonReader.r();
                    break;
                case 22:
                    zN = jsonReader.n();
                    break;
                case 23:
                    z10 = jsonReader.p() == 1;
                    break;
                case 24:
                    int iP6 = jsonReader.p();
                    if (iP6 < LBlendMode.values().length) {
                        lBlendMode2 = LBlendMode.values()[iP6];
                    } else {
                        hVar.a("Unsupported Blend Mode: " + iP6);
                        lBlendMode2 = LBlendMode.NORMAL;
                    }
                    break;
                default:
                    jsonReader.w();
                    jsonReader.x();
                    break;
            }
        }
        jsonReader.l();
        ArrayList arrayList4 = new ArrayList();
        if (fO > 0.0f) {
            arrayList4.add(new y4.a(hVar, fValueOf, fValueOf, null, 0.0f, Float.valueOf(fO)));
            f10 = 0.0f;
        } else {
            f10 = 0.0f;
        }
        if (f11 <= f10) {
            f11 = hVar.f();
        }
        arrayList4.add(new y4.a(hVar, fValueOf2, fValueOf2, null, fO, Float.valueOf(f11)));
        arrayList4.add(new y4.a(hVar, fValueOf, fValueOf, null, f11, Float.valueOf(Float.MAX_VALUE)));
        if (strR2.endsWith(".ai") || "ai".equals(strR3)) {
            hVar.a("Convert your Illustrator layers to shape layers.");
        }
        if (z10 != 0) {
            if (nVar == null) {
                nVar = new s4.n();
            }
            nVar.m(z10);
        }
        return new Layer(arrayList2, hVar, strR2, jP, layerType, jP2, strR, arrayList, nVar, iP, iP2, color, fO5, fO2, fO3, fO4, jVarD, kVarA, arrayList4, matteType2, bVarF, zN, aVarB, jVarB, lBlendMode2);
    }
}
