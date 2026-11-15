package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.model.content.a;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import java.util.ArrayList;
import java.util.Collections;

public abstract class qj4 {
    public static final JsonReader.a a = JsonReader.a.a("nm", GslbInterceptor.HEADER_KEY_GSLB, "o", "t", "s", "e", "w", "lc", "lj", "ml", "hd", "d");
    public static final JsonReader.a b = JsonReader.a.a(TtmlNode.TAG_P, "k");
    public static final JsonReader.a c = JsonReader.a.a("n", "v");

    public static a a(JsonReader jsonReader, ur5 ur5Var) {
        ArrayList arrayList = new ArrayList();
        float fN = 0.0f;
        String strE = null;
        GradientType gradientType = null;
        ec ecVarG = null;
        ic icVarI = null;
        ic icVarI2 = null;
        dc dcVarE = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        dc dcVar = null;
        boolean zK = false;
        fc fcVar = null;
        while (jsonReader.h()) {
            switch (jsonReader.I(a)) {
                case 0:
                    strE = jsonReader.E();
                    continue;
                case 1:
                    jsonReader.d();
                    int iO = -1;
                    while (jsonReader.h()) {
                        int I = jsonReader.I(b);
                        if (I == 0) {
                            iO = jsonReader.o();
                        } else if (I != 1) {
                            jsonReader.J();
                            jsonReader.K();
                        } else {
                            ecVarG = uc.g(jsonReader, ur5Var, iO);
                        }
                        ecVarG = ecVarG;
                    }
                    jsonReader.g();
                    break;
                case 2:
                    fcVar = uc.h(jsonReader, ur5Var);
                    continue;
                case 3:
                    gradientType = jsonReader.o() == 1 ? GradientType.LINEAR : GradientType.RADIAL;
                    break;
                case 4:
                    icVarI = uc.i(jsonReader, ur5Var);
                    continue;
                case 5:
                    icVarI2 = uc.i(jsonReader, ur5Var);
                    continue;
                case 6:
                    dcVarE = uc.e(jsonReader, ur5Var);
                    continue;
                case 7:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.o() - 1];
                    break;
                case 8:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.o() - 1];
                    break;
                case 9:
                    fN = (float) jsonReader.n();
                    break;
                case 10:
                    zK = jsonReader.k();
                    continue;
                case 11:
                    jsonReader.b();
                    while (jsonReader.h()) {
                        jsonReader.d();
                        String strE2 = null;
                        dc dcVarE2 = null;
                        while (jsonReader.h()) {
                            int I2 = jsonReader.I(c);
                            if (I2 != 0) {
                                dc dcVar2 = dcVar;
                                if (I2 != 1) {
                                    jsonReader.J();
                                    jsonReader.K();
                                } else {
                                    dcVarE2 = uc.e(jsonReader, ur5Var);
                                }
                                dcVar = dcVar2;
                            } else {
                                strE2 = jsonReader.E();
                            }
                        }
                        dc dcVar3 = dcVar;
                        jsonReader.g();
                        if (strE2.equals("o")) {
                            dcVar = dcVarE2;
                        } else {
                            if (strE2.equals("d") || strE2.equals(GslbInterceptor.HEADER_KEY_GSLB)) {
                                ur5Var.u(true);
                                arrayList.add(dcVarE2);
                            }
                            dcVar = dcVar3;
                        }
                    }
                    dc dcVar4 = dcVar;
                    jsonReader.e();
                    if (arrayList.size() == 1) {
                        arrayList.add((dc) arrayList.get(0));
                    }
                    dcVar = dcVar4;
                    continue;
                default:
                    jsonReader.J();
                    jsonReader.K();
                    continue;
            }
            strE = strE;
        }
        String str = strE;
        if (fcVar == null) {
            fcVar = new fc(Collections.singletonList(new dg5(100)));
        }
        return new a(str, gradientType, ecVarG, fcVar, icVarI, icVarI2, dcVarE, lineCapType, lineJoinType, fN, arrayList, dcVar, zK);
    }
}
