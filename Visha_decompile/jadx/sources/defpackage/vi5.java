package defpackage;

import android.graphics.Color;
import android.graphics.Rect;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;
import java.util.Collections;

public abstract class vi5 {
    public static final JsonReader.a a = JsonReader.a.a("nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", TtmlNode.TAG_TT, "masksProperties", "shapes", "t", "ef", "sr", CmcdConfiguration.KEY_STREAM_TYPE, "w", CmcdData.STREAMING_FORMAT_HLS, "ip", "op", "tm", "cl", "hd", "ao", "bm");
    public static final JsonReader.a b = JsonReader.a.a("d", CmcdData.OBJECT_TYPE_AUDIO_ONLY);
    public static final JsonReader.a c = JsonReader.a.a("ty", "nm");

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            a = iArr;
            try {
                iArr[Layer.MatteType.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Layer.MatteType.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static Layer a(ur5 ur5Var) {
        Rect rectB = ur5Var.b();
        return new Layer(Collections.emptyList(), ur5Var, "__container", -1L, Layer.LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new rc(), 0, 0, 0, 0.0f, 0.0f, rectB.width(), rectB.height(), null, null, Collections.emptyList(), Layer.MatteType.NONE, null, false, null, null, LBlendMode.NORMAL);
    }

    public static Layer b(JsonReader jsonReader, ur5 ur5Var) {
        float f;
        Layer.MatteType matteType = Layer.MatteType.NONE;
        LBlendMode lBlendMode = LBlendMode.NORMAL;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        jsonReader.d();
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(1.0f);
        Layer.MatteType matteType2 = matteType;
        LBlendMode lBlendMode2 = lBlendMode;
        Layer.LayerType layerType = null;
        String strE = null;
        mc mcVarD = null;
        nc ncVarA = null;
        dc dcVarF = null;
        ag0 ag0VarB = null;
        l33 l33VarB = null;
        long jO = 0;
        boolean z = false;
        int iO = 0;
        int iO2 = 0;
        int color = 0;
        boolean zK = false;
        float fN = 0.0f;
        float fN2 = 0.0f;
        float fN3 = 0.0f;
        float fN4 = 0.0f;
        float f2 = 0.0f;
        long jO2 = -1;
        float fN5 = 1.0f;
        String strE2 = "UNSET";
        String strE3 = null;
        rc rcVar = null;
        while (jsonReader.h()) {
            switch (jsonReader.I(a)) {
                case 0:
                    strE2 = jsonReader.E();
                    break;
                case 1:
                    jO = jsonReader.o();
                    break;
                case 2:
                    strE = jsonReader.E();
                    break;
                case 3:
                    int iO3 = jsonReader.o();
                    layerType = Layer.LayerType.UNKNOWN;
                    if (iO3 < layerType.ordinal()) {
                        layerType = Layer.LayerType.values()[iO3];
                    }
                    break;
                case 4:
                    jO2 = jsonReader.o();
                    break;
                case 5:
                    iO = (int) (jsonReader.o() * plb.e());
                    break;
                case 6:
                    iO2 = (int) (jsonReader.o() * plb.e());
                    break;
                case 7:
                    color = Color.parseColor(jsonReader.E());
                    break;
                case 8:
                    rcVar = sc.g(jsonReader, ur5Var);
                    break;
                case 9:
                    int iO4 = jsonReader.o();
                    if (iO4 < Layer.MatteType.values().length) {
                        matteType2 = Layer.MatteType.values()[iO4];
                        int i = a.a[matteType2.ordinal()];
                        if (i == 1) {
                            ur5Var.a("Unsupported matte type: Luma");
                        } else if (i == 2) {
                            ur5Var.a("Unsupported matte type: Luma Inverted");
                        }
                        ur5Var.r(1);
                    } else {
                        ur5Var.a("Unsupported matte type: " + iO4);
                    }
                    break;
                case 10:
                    jsonReader.b();
                    while (jsonReader.h()) {
                        arrayList.add(x16.a(jsonReader, ur5Var));
                    }
                    ur5Var.r(arrayList.size());
                    jsonReader.e();
                    break;
                case 11:
                    jsonReader.b();
                    while (jsonReader.h()) {
                        ah1 ah1VarA = bh1.a(jsonReader, ur5Var);
                        if (ah1VarA != null) {
                            arrayList2.add(ah1VarA);
                        }
                    }
                    jsonReader.e();
                    break;
                case 12:
                    jsonReader.d();
                    while (jsonReader.h()) {
                        int I = jsonReader.I(b);
                        if (I == 0) {
                            mcVarD = uc.d(jsonReader, ur5Var);
                        } else if (I != 1) {
                            jsonReader.J();
                            jsonReader.K();
                        } else {
                            jsonReader.b();
                            if (jsonReader.h()) {
                                ncVarA = oc.a(jsonReader, ur5Var);
                            }
                            while (jsonReader.h()) {
                                jsonReader.K();
                            }
                            jsonReader.e();
                        }
                    }
                    jsonReader.g();
                    break;
                case 13:
                    jsonReader.b();
                    ArrayList arrayList3 = new ArrayList();
                    while (jsonReader.h()) {
                        jsonReader.d();
                        while (jsonReader.h()) {
                            int I2 = jsonReader.I(c);
                            if (I2 == 0) {
                                int iO5 = jsonReader.o();
                                if (iO5 == 29) {
                                    ag0VarB = bg0.b(jsonReader, ur5Var);
                                } else if (iO5 == 25) {
                                    l33VarB = new m33().b(jsonReader, ur5Var);
                                }
                            } else if (I2 != 1) {
                                jsonReader.J();
                                jsonReader.K();
                            } else {
                                arrayList3.add(jsonReader.E());
                            }
                        }
                        jsonReader.g();
                    }
                    jsonReader.e();
                    ur5Var.a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList3);
                    break;
                case 14:
                    fN5 = (float) jsonReader.n();
                    break;
                case 15:
                    fN2 = (float) jsonReader.n();
                    break;
                case 16:
                    fN3 = (float) (jsonReader.n() * ((double) plb.e()));
                    break;
                case 17:
                    fN4 = (float) (jsonReader.n() * ((double) plb.e()));
                    break;
                case 18:
                    fN = (float) jsonReader.n();
                    break;
                case 19:
                    f2 = (float) jsonReader.n();
                    break;
                case 20:
                    dcVarF = uc.f(jsonReader, ur5Var, false);
                    break;
                case 21:
                    strE3 = jsonReader.E();
                    break;
                case 22:
                    zK = jsonReader.k();
                    break;
                case 23:
                    z = jsonReader.o() == 1;
                    break;
                case 24:
                    int iO6 = jsonReader.o();
                    if (iO6 < LBlendMode.values().length) {
                        lBlendMode2 = LBlendMode.values()[iO6];
                    } else {
                        ur5Var.a("Unsupported Blend Mode: " + iO6);
                        lBlendMode2 = LBlendMode.NORMAL;
                    }
                    break;
                default:
                    jsonReader.J();
                    jsonReader.K();
                    break;
            }
        }
        jsonReader.g();
        ArrayList arrayList4 = new ArrayList();
        if (fN > 0.0f) {
            arrayList4.add(new dg5(ur5Var, fValueOf, fValueOf, null, 0.0f, Float.valueOf(fN)));
            f = 0.0f;
        } else {
            f = 0.0f;
        }
        if (f2 <= f) {
            f2 = ur5Var.f();
        }
        arrayList4.add(new dg5(ur5Var, fValueOf2, fValueOf2, null, fN, Float.valueOf(f2)));
        arrayList4.add(new dg5(ur5Var, fValueOf, fValueOf, null, f2, Float.valueOf(Float.MAX_VALUE)));
        if (strE2.endsWith(".ai") || "ai".equals(strE3)) {
            ur5Var.a("Convert your Illustrator layers to shape layers.");
        }
        if (z != 0) {
            if (rcVar == null) {
                rcVar = new rc();
            }
            rcVar.m(z);
        }
        return new Layer(arrayList2, ur5Var, strE2, jO, layerType, jO2, strE, arrayList, rcVar, iO, iO2, color, fN5, fN2, fN3, fN4, mcVarD, ncVarA, arrayList4, matteType2, dcVarF, zK, ag0VarB, l33VarB, lBlendMode2);
    }
}
